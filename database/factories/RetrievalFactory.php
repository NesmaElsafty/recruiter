<?php

namespace Database\Factories;

use App\Models\Retrieval;
use App\Models\User;
use App\Models\Subscription;
use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Retrieval>
 */
class RetrievalFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // Generate random date between today and 3 months ago
        $randomDate = fake()->dateTimeBetween('-3 months', 'now');

        return [
            'subscription_id' => null, // Will be set in seeder
            'user_id' => null, // Will be set in seeder
            'reason' => fake()->randomElement([
                'Requesting refund due to service issues',
                'Change of mind - no longer need the service',
                'Financial difficulties - need to cancel',
                'Found a better alternative service',
                'Moving to a different location',
                'Service not meeting expectations',
                'Technical problems with the platform',
                'Billing issues and payment disputes',
                'Personal circumstances changed',
                'Dissatisfied with customer support',
                'Service features not as advertised',
                'Need to downgrade to a cheaper plan',
                'Company policy changes',
                'Temporary suspension needed',
                'Account security concerns'
            ]),
            'status' => fake()->randomElement(['pending', 'approved', 'rejected']),
            'created_at' => $randomDate,
            'updated_at' => $randomDate,
        ];
    }

    /**
     * Create a retrieval for candidate users and subscriptions
     */
    public function forCandidate(): static
    {
        return $this->state(function (array $attributes) {
            // Get a random candidate user
            $candidateUser = User::where('type', 'candidate')->inRandomOrder()->first();
            
            // Get a random subscription for candidate users
            $candidateSubscription = Subscription::whereHas('user', function ($query) {
                $query->where('type', 'candidate');
            })->inRandomOrder()->first();
            
            if ($candidateUser && $candidateSubscription) {
                return array_merge($attributes, [
                    'user_id' => $candidateUser->id,
                    'subscription_id' => $candidateSubscription->id,
                ]);
            }
            
            return $attributes;
        });
    }

    /**
     * Create a pending retrieval
     */
    public function pending(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'pending',
        ]);
    }

    /**
     * Create an approved retrieval
     */
    public function approved(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'approved',
        ]);
    }

    /**
     * Create a rejected retrieval
     */
    public function rejected(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'rejected',
        ]);
    }

    /**
     * Create a retrieval with specific date range
     */
    public function dateRange(string $startDate, string $endDate): static
    {
        return $this->state(function (array $attributes) use ($startDate, $endDate) {
            $randomDate = fake()->dateTimeBetween($startDate, $endDate);
            return [
                'created_at' => $randomDate,
                'updated_at' => $randomDate,
            ];
        });
    }
}
