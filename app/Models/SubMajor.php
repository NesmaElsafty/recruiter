<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SubMajor extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function major()
    {
        return $this->belongsTo(Major::class);
    }

    public function users()
    {
        return $this->hasMany(User::class);
    }
}
