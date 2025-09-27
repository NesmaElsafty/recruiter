<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    //
    protected $guarded = [];

    protected $table = 'favorites';

    public function recruiter()
    {
        return $this->belongsTo(User::class, 'recruiter_id');
    }

    public function candidate()
    {
        return $this->belongsTo(User::class, 'candidate_id');
    }
}
