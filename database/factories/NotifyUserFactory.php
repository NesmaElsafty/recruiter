<?php

namespace Database\Factories;

use App\Models\Notification;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\NotifyUser>
 */
class NotifyUserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => User::factory(),
            'notification_id' => Notification::factory(),
        ];
    }

    /**
     * Create notify user for a specific user
     */
    public function forUser(User $user): static
    {
        return $this->state(fn (array $attributes) => [
            'user_id' => $user->id,
        ]);
    }

    /**
     * Create notify user for a specific notification
     */
    public function forNotification(Notification $notification): static
    {
        return $this->state(fn (array $attributes) => [
            'notification_id' => $notification->id,
        ]);
    }

    /**
     * Create notify user for admin users
     */
    public function forAdmin(): static
    {
        return $this->state(fn (array $attributes) => [
            'user_id' => User::factory()->admin(),
        ]);
    }

    /**
     * Create notify user for candidate users
     */
    public function forCandidate(): static
    {
        return $this->state(fn (array $attributes) => [
            'user_id' => User::factory()->candidate(),
        ]);
    }

    /**
     * Create notify user for recruiter users
     */
    public function forRecruiter(): static
    {
        return $this->state(fn (array $attributes) => [
            'user_id' => User::factory()->recruiter(),
        ]);
    }

    /**
     * Create notify user for notification type
     */
    public function forNotificationType(): static
    {
        return $this->state(fn (array $attributes) => [
            'notification_id' => Notification::factory()->notification(),
        ]);
    }

    /**
     * Create notify user for alert type
     */
    public function forAlertType(): static
    {
        return $this->state(fn (array $attributes) => [
            'notification_id' => Notification::factory()->alert(),
        ]);
    }

    /**
     * Create notify user for reminder type
     */
    public function forReminderType(): static
    {
        return $this->state(fn (array $attributes) => [
            'notification_id' => Notification::factory()->reminder(),
        ]);
    }

    /**
     * Create notify user for sent notification
     */
    public function forSentNotification(): static
    {
        return $this->state(fn (array $attributes) => [
            'notification_id' => Notification::factory()->sent(),
        ]);
    }

    /**
     * Create notify user for planned notification
     */
    public function forPlannedNotification(): static
    {
        return $this->state(fn (array $attributes) => [
            'notification_id' => Notification::factory()->planned(),
        ]);
    }

    /**
     * Create notify user for unsent notification
     */
    public function forUnsentNotification(): static
    {
        return $this->state(fn (array $attributes) => [
            'notification_id' => Notification::factory()->unsent(),
        ]);
    }
}
