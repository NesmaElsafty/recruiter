<?php

namespace Database\Factories;

use App\Models\Subscription;
use App\Models\User;
use App\Models\Plan;
use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Subscription>
 */
class SubscriptionFactory extends Factory
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
        $startDate = Carbon::parse($randomDate)->format('Y-m-d');
        
        // Calculate end date based on plan duration (default to 1 month if no plan)
        $endDate = Carbon::parse($startDate)->addMonth()->format('Y-m-d');

        return [
            'user_id' => null, // Will be set in seeder
            'plan_id' => null, // Will be set in seeder
            'subscription_id' => fake()->unique()->regexify('[A-Z0-9]{12}'),
            'paid_amount' => null, // Will be set based on plan price
            'payment_method' => fake()->randomElement(['credit_card', 'paypal', 'bank_transfer', 'stripe']),
            'start_date' => $startDate,
            'end_date' => $endDate,
            'is_active' => fake()->boolean(85), // 85% chance of being active
            'created_at' => $randomDate,
            'updated_at' => $randomDate,
        ];
    }

    /**
     * Create a subscription for candidate users and plans
     */
    public function forCandidate(): static
    {
        return $this->state(function (array $attributes) {
            // Get a random candidate user
            $candidateUser = User::where('type', 'candidate')->inRandomOrder()->first();
            
            // Get a random candidate plan
            $candidatePlan = Plan::where('type', 'candidate')->inRandomOrder()->first();
            
            if ($candidateUser && $candidatePlan) {
                // Calculate end date based on plan duration
                $startDate = Carbon::parse($attributes['start_date']);
                $endDate = $startDate->copy();
                
                if ($candidatePlan->duration_type === 'monthly') {
                    $endDate->addMonths($candidatePlan->duration);
                } else {
                    $endDate->addYears($candidatePlan->duration);
                }
                
                return array_merge($attributes, [
                    'user_id' => $candidateUser->id,
                    'plan_id' => $candidatePlan->id,
                    'paid_amount' => (string) $candidatePlan->price,
                    'end_date' => $endDate->format('Y-m-d'),
                ]);
            }
            
            return $attributes;
        });
    }

    /**
     * Create an active subscription
     */
    public function active(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => true,
        ]);
    }

    /**
     * Create an inactive subscription
     */
    public function inactive(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => false,
        ]);
    }

    /**
     * Create a subscription with specific date range
     */
    public function dateRange(string $startDate, string $endDate): static
    {
        return $this->state(fn (array $attributes) => [
            'start_date' => $startDate,
            'end_date' => $endDate,
        ]);
    }
}
