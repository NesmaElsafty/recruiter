<?php

// app/Models/Otp.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Otp extends Model
{
    protected $fillable = ['email','context','otp_hash','expires_at','attempts'];
    protected $casts = ['expires_at' => 'datetime'];
}
