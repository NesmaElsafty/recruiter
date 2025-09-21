<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;              // 👈 Public channel
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class AlertCreated implements ShouldBroadcast
{
    use Dispatchable, SerializesModels;

    public function __construct(
        public array $payload,
        public int $userId
    ) {}

    public function broadcastOn(): Channel
    {
        // قناة عامة باسم user.{id} بدون Private/Presence
        return new Channel('user.' . $this->userId);
    }

    public function broadcastAs(): string
    {
        return 'alert.created'; // اسم الحدث اللي الـ Frontend هيسمعه
    }

    public function broadcastWith(): array
    {
        return $this->payload;  // الداتا اللي هتوصل للفرونت
    }
}
