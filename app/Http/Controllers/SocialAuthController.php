<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\SocialAccount;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use Laravel\Socialite\Facades\Socialite;
use Carbon\Carbon;

class SocialAuthController extends Controller
{
    protected array $allowed = ['google', 'linkedin'];

    public function redirect(string $provider)
    {
        abort_unless(in_array($provider, $this->allowed), 404);

        // SPA؟ يفضل استخدام stateless() في callback
        $scopes = $provider === 'google'
            ? ['openid', 'profile', 'email']
            : ['r_liteprofile', 'r_emailaddress'];

        return Socialite::driver($provider)
            ->scopes($scopes)
            ->redirect(); // بيرد 302 لمزوّد الهوية
    }

    public function callback(Request $request, string $provider)
    {
        abort_unless(in_array($provider, $this->allowed), 404);

        try {
            // في SPA/API عادة من غير session:
            $socialUser = Socialite::driver($provider)->stateless()->user();
        } catch (\Throwable $e) {
            Log::error("{$provider} oauth error", ['e' => $e->getMessage()]);
            return response()->json(['message' => 'OAuth failed'], 400);
        }

        $providerId = $socialUser->getId();
        $email      = $socialUser->getEmail();     // LinkedIn محتاج r_emailaddress
        $name       = $socialUser->getName() ?: ($socialUser->getNickname() ?: 'User');
        $avatar     = $socialUser->getAvatar();
        $token      = $socialUser->token ?? null;
        $refresh    = $socialUser->refreshToken ?? null;
        $expiresIn  = property_exists($socialUser, 'expiresIn') ? $socialUser->expiresIn : null;

        if (!$providerId) {
            return response()->json(['message' => 'Missing provider id'], 422);
        }
        if (!$email) {
            return response()->json(['message' => 'Email permission is required'], 422);
        }

        return DB::transaction(function () use ($provider, $providerId, $email, $name, $avatar, $token, $refresh, $expiresIn) {

            // 1) هل مرتبط قبل كده؟
            $linked = SocialAccount::where('provider_name', $provider)
                ->where('provider_id', $providerId)
                ->first();

            if ($linked) {
                $user = $linked->user;
            } else {
                // 2) حساب موجود بنفس الإيميل؟
                $user = User::where('email', $email)->first();

                if (!$user) {
                    // 3) أنشئ مستخدم جديد
                    $user = User::create([
                        'name'  => $name,
                        'email' => $email,
                        // لو عايز باسورد placeholder عشوائي
                        'password' => bcrypt(Str::random(16)),
                        'avatar' => $avatar,
                        // ممكن تعتبر الإيميل موثّق لو جاي من Google
                        'email_verified_at' => $provider === 'google' ? now() : null,
                    ]);
                }

                // اربط السوشيال بالمستخدم
                SocialAccount::updateOrCreate(
                    ['provider_name' => $provider, 'provider_id' => $providerId, 'user_id' => $user->id],
                    [
                        'access_token' => $token,
                        'refresh_token' => $refresh,
                        'token_expires_at' => $expiresIn ? now()->addSeconds($expiresIn) : null,
                    ]
                );

                // حدّث الصورة لو ناقصة
                if (!$user->avatar && $avatar) {
                    $user->update(['avatar' => $avatar]);
                }
            }

            // اصنع توكين (Sanctum)
            $apiToken = $user->createToken('web')->plainTextToken;

            return response()->json([
                'access_token' => $apiToken,
                'token_type'   => 'Bearer',
                'user' => [
                    'id'    => $user->id,
                    'name'  => $user->name,
                    'email' => $user->email,
                    'avatar'=> $user->avatar,
                ],
            ]);
        });
    }
}
