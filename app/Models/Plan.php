<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
    use HasFactory;

    protected $guarded = [];
    protected $table = 'plans';

    public function features()
    {
        return $this->belongsToMany(Feature::class);
    }
}
