<?php

// app/Mail/OtpMail.php
namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class OtpMail extends Mailable
{
    use Queueable, SerializesModels;

    public function __construct(public string $code, public string $context) {}

    public function build()
    {
        return $this->subject('رمز التحقق (OTP)')
            ->view('emails.otp');
    }
}
