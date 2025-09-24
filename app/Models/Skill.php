<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    //
    protected $guarded = [];
    protected $table = 'skills';
    
    public function skillable()
    {
        return $this->morphTo();
    }
}
