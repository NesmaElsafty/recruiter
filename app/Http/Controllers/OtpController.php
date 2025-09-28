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

class OtpController extends Controller
{
    public function __construct(private OtpService $otpService) {}

    public function send(Request $request)
    {
        $data = $request->validate([
            'email'   => ['required','email'],
            'context' => ['required', Rule::in(['register','forgot_password'])],
        ]);

        // تحقق منطقي حسب السياق:
        if ($data['context'] === 'register') {
            // ممكن تتأكد أن الإيميل غير مُسجل مسبقاً لو تحب
        } else { // forgot_password
            if (!User::where('email', $data['email'])->exists()) {
                return response()->json(['success'=>true, 'message'=>'تم الإرسال إن وُجد حساب.'], 200);
                // لا نُفصِح إن كان الإيميل موجود لحماية الخصوصية
            }
        }

        $code = $this->otpService->generateAndStore($data['email'], $data['context']);
        Mail::to($data['email'])->send(new OtpMail($code, $data['context']));

        return response()->json(['success'=>true, 'message'=>'تم إرسال رمز التحقق للبريد.']);
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
            return response()->json(['success'=>false, 'message'=>'رمز غير صحيح أو منتهي.'], 422);
        }

        if ($data['context'] === 'register') {
            // علّم حساب المستخدم أنه Verified (حسب بنية مشروعك)
            User::where('email', $data['email'])->update(['email_verified_at' => now()]);
            return response()->json(['success'=>true, 'message'=>'تم تفعيل البريد بنجاح.']);
        } else {
            // أعطِ reset_token قصير العمر
            $token = $this->otpService->shortResetToken(['email'=>$data['email']]);
            return response()->json(['success'=>true, 'reset_token'=>$token]);
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
            return response()->json(['success'=>false,'message'=>'الرابط/الرمز منتهي أو غير صالح.'], 422);
        }

        $user = User::where('email', $claims['email'])->first();
        if (!$user) {
            return response()->json(['success'=>false,'message'=>'المستخدم غير موجود.'], 404);
        }

        $user->password = Hash::make($data['new_password']);
        $user->save();

        return response()->json(['success'=>true,'message'=>'تم تحديث كلمة المرور بنجاح.']);
    }
}
