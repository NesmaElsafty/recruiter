<?php

namespace Database\Seeders;

use App\Models\Message;
use App\Models\User;
use Illuminate\Database\Seeder;

class MessageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Get existing users to ensure we have valid sender_ids
        $users = User::all();
        
        // Create 50 random messages
        Message::factory()
            ->count(50)
            ->create();

    }
}
