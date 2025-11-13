<?php

// app/Http/Controllers/Auth/OtpController.php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Mail\OtpMail;
use App\Models\User;
use App\Services\OtpService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;
use Illuminate\Validation\Rule;
use Illuminate\Validation\ValidationException;
use App\Helpers\LocalizationHelper;
use Exception;

class OtpController extends Controller
{
    public function __construct(private OtpService $otpService) {}

    public function send(Request $request)
    {
        try {
            $data = $request->validate([
                'email'   => ['required','email'],
                'context' => ['required', Rule::in(['register','forget_password'])],
                'type' => ['required', Rule::in(['admin','recruiter','candidate'])],
            ]);

            // Normalize forget_password to forgot_password for consistency
            if ($data['context'] === 'forget_password') {
                $data['context'] = 'forgot_password';
            }

            if ($data['context'] === 'register') {
                // For registration, we don't need to check if user exists
            } else { // forgot_password
                if (!User::where('email', $data['email'])->exists()) {
                    $message = LocalizationHelper::getMessage('no_account_found');
                    return response()->json(['success'=>true, 'message'=>$message], 200);
                }
            }

            $code = $this->otpService->generateAndStore($data['email'], $data['context'], $data['type']);
            
            // Send email with error handling
            try {
                Mail::to($data['email'])->send(new OtpMail($code, $data['context'], $data['type']));

            } catch (Exception $mailException) {
                return LocalizationHelper::errorResponse(
                    'failed_to_send_otp_email',
                    $mailException->getMessage(),
                    500
                );
            }

            $message = LocalizationHelper::getMessage('otp_sent');
            return LocalizationHelper::successResponse(
                'otp_sent',
                $message,
                200
            );
            
        } catch (ValidationException $e) {
            return LocalizationHelper::errorResponse(
                'validation_failed',
                $e->errors(),
                422
            );
        }
    }

    public function verify(Request $request)
    {
        try {
            $data = $request->validate([
                'email'   => ['required','email'],
                'context' => ['required', Rule::in(['register','forgot_password','forget_password'])],
                'otp'     => ['required','digits:6'],
            ]);

            // Normalize forget_password to forgot_password for consistency
            if ($data['context'] === 'forget_password') {
                $data['context'] = 'forgot_password';
            }

            $ok = $this->otpService->check($data['email'], $data['context'], $data['otp']);
            if (!$ok) {
                $message = LocalizationHelper::getMessage('invalid_otp');
                return response()->json(['success'=>false, 'message'=>$message], 422);
            }

            if ($data['context'] === 'register') {
                User::where('email', $data['email'])->update(['email_verified_at' => now()]);
                $message = LocalizationHelper::getMessage('email_verified');
                return response()->json(['success'=>true, 'message'=>$message]);
            } else {
                $token = $this->otpService->shortResetToken(['email'=>$data['email']]);
                $message = LocalizationHelper::getMessage('reset_token_generated');
                return response()->json(['success'=>true, 'reset_token'=>$token, 'message'=>$message]);
            }
        } catch (ValidationException $e) {
            return LocalizationHelper::errorResponse(
                'validation_failed',
                $e->errors(),
                422
            );
        } 
    }

    public function resetPassword(Request $request)
    {
        try {
            $data = $request->validate([
                'reset_token'  => ['required','string'],
                'new_password' => ['required','string','min:8'],
            ]);

            $claims = $this->otpService->consumeResetToken($data['reset_token']);
            if (!$claims || empty($claims['email'])) {
                $message = LocalizationHelper::getMessage('invalid_reset_token');
                return response()->json(['success'=>false,'message'=>$message], 422);
            }

            $user = User::where('email', $claims['email'])->first();
            if (!$user) {
                $message = LocalizationHelper::getMessage('user_not_found');
                return response()->json(['success'=>false,'message'=>$message], 404);
            }

            $user->password = Hash::make($data['new_password']);
            $user->save();

            $message = LocalizationHelper::getMessage('password_updated');
            return response()->json(['success'=>true,'message'=>$message]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (Exception $e) {
            Log::error('Reset password error', [
                'error' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while resetting password. Please try again later.'
            ], 500);
        }
    }
}
