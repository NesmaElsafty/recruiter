<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NotifyUser extends Model
{
    use HasFactory;

    protected $table = 'notify_users';

    protected $fillable = [
        'user_id',
        'notification_id',
    ];

    /**
     * Get the notification that owns the notify user.
     */
    public function notification()
    {
        return $this->belongsTo(Notification::class, 'notification_id');
    }

    /**
     * Get the user that owns the notify user.
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
