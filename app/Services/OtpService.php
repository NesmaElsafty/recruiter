<?php 

// app/Services/OtpService.php
namespace App\Services;

use App\Models\Otp;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class OtpService
{
    public int $ttlMinutes = 5;
    public int $maxAttempts = 5;

    public function generateAndStore(string $email, string $context): string
    {
        // كود 6 أرقام
        $otp = str_pad(strval(random_int(0, 999999)), 6, '0', STR_PAD_LEFT);

        // احذف الأكواد القديمة لنفس السياق
        Otp::where('email', $email)->where('context', $context)->delete();

        Otp::create([
            'email'      => $email,
            'context'    => $context,
            'otp_hash'   => Hash::make($otp),
            'expires_at' => Carbon::now()->addMinutes($this->ttlMinutes),
        ]);

        return $otp;
    }

    public function check(string $email, string $context, string $otp): bool
    {
        $row = Otp::where('email', $email)->where('context', $context)->latest()->first();
        if (!$row) return false;

        if (now()->greaterThan($row->expires_at)) {
            $row->delete();
            return false;
        }

        if ($row->attempts >= $this->maxAttempts) {
            $row->delete();
            return false;
        }

        $ok = Hash::check($otp, $row->otp_hash);
        $row->increment('attempts');

        if ($ok) {
            $row->delete(); // لمرة واحدة
            return true;
        }
        return false;
    }

    public function shortResetToken(array $claims = []): string
    {
        // يمكنك استبدالها بـ JWT لو تحب. هنا رمز عشوائي قصير العمر (15 دقيقة) نخزنه بالـcache.
        $token = Str::random(64);
        cache()->put("reset:$token", $claims, now()->addMinutes(15));
        return $token;
    }

    public function consumeResetToken(string $token): ?array
    {
        $claims = cache()->pull("reset:$token");
        return $claims ?: null;
    }
}
