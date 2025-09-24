<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class OtpMail extends Mailable
{
    use Queueable, SerializesModels;

    public string $code;
    public int $ttlMinutes;

    public function __construct(string $code, int $ttlMinutes = 10)
    {
        $this->code = $code;
        $this->ttlMinutes = $ttlMinutes;
    }

    public function build()
    {
        return $this->subject('Your verification code')
            ->view('emails.otp')
            ->with([
                'code' => $this->code,
                'ttl' => $this->ttlMinutes,
            ]);
    }
}


