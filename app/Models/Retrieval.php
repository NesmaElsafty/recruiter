<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Retrieval extends Model
{
    use HasFactory;
    
    protected $guarded = [];

    public function subscription()
    {
        return $this->belongsTo(Subscription::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
