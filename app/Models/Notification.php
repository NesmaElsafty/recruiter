<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\Alert;
class Notification extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $casts = [
        'sent_at' => 'datetime',
    ];

    // users
    public function users()
    {
        return $this->belongsToMany(User::class, 'notify_users', 'notification_id', 'user_id');
    }

    // public function sendToUsers($segments)
    // {
    //     $users = User::whereIn('type', $segments)->get();
    //     $this->users()->sync($users);

    //      foreach ($users as $user) {
    //             if($this->status == 'sent'){
    //                 Alert::create([
    //                     'user_id' => $user->id,
    //                     'title' => $this->title,
    //                     'description' => $this->description,
    //                     'is_read' => false,
    //                 ]);
    //             }
    //         }

    // }
}
