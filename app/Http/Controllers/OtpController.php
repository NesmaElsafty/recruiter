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
use Illuminate\Validation\Rule;
use App\Helpers\LocalizationHelper;

class OtpController extends Controller
{
    public function __construct(private OtpService $otpService) {}

    public function send(Request $request)
    {
        $data = $request->validate([
            'email'   => ['required','email'],
            'context' => ['required', Rule::in(['register','forgot_password'])],
        ]);

        if ($data['context'] === 'register') {
        } else { // forgot_password
            if (!User::where('email', $data['email'])->exists()) {
                $message = LocalizationHelper::getMessage('no_account_found');
                return response()->json(['success'=>true, 'message'=>$message], 200);
            }
        }

        $code = $this->otpService->generateAndStore($data['email'], $data['context']);
        Mail::to($data['email'])->send(new OtpMail($code, $data['context']));

        $message = LocalizationHelper::getMessage('otp_sent');
        return response()->json(['success'=>true, 'message'=>$message]);
    }

    public function verify(Request $request)
    {
        $data = $request->validate([
            'email'   => ['required','email'],
            'context' => ['required', Rule::in(['register','forgot_password'])],
            'otp'     => ['required','digits:6'],
        ]);

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
    }

    public function resetPassword(Request $request)
    {
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
    }
}
