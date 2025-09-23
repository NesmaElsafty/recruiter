<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Subscription;
use App\Models\User;
use App\Models\Plan;
use Carbon\Carbon;

class SubscriptionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Get all candidate users
        $candidateUsers = User::where('type', 'candidate')->get();
        
        // Get all candidate plans
        $candidatePlans = Plan::where('type', 'candidate')->get();
        
        // $this->command->info('Creating subscriptions for candidate users...');
        
        // Create 50+ subscriptions
        $subscriptionCount = 0;
        $targetCount = 55; // Generate a bit more than 50
        
        while ($subscriptionCount < $targetCount) {
            // Get random candidate user and plan
            $user = $candidateUsers->random();
            $plan = $candidatePlans->random();
            
            // Generate random date between today and 3 months ago
            $randomDate = fake()->dateTimeBetween('-3 months', 'now');
            $startDate = Carbon::parse($randomDate);
            
            // Calculate end date based on plan duration
            $endDate = $startDate->copy();
            if ($plan->duration_type === 'monthly') {
                $endDate->addMonths($plan->duration);
            } else {
                $endDate->addYears($plan->duration);
            }
            
            // Generate unique subscription ID
            $subscriptionId = fake()->unique()->regexify('[A-Z0-9]{12}');
            
            // Create subscription
            Subscription::create([
                'user_id' => $user->id,
                'plan_id' => $plan->id,
                'subscription_id' => $subscriptionId,
                'paid_amount' => (string) $plan->price,
                'payment_method' => fake()->randomElement(['credit_card', 'paypal', 'bank_transfer', 'stripe']),
                'start_date' => $startDate->format('Y-m-d'),
                'end_date' => $endDate->format('Y-m-d'),
                'is_active' => fake()->boolean(85), // 85% chance of being active
                'created_at' => $randomDate,
                'updated_at' => $randomDate,
            ]);
            
            $subscriptionCount++;
            
            // Show progress
            if ($subscriptionCount % 10 === 0) {
                // $this->command->info("Created {$subscriptionCount} subscriptions...");
            }
        }
        
        // $this->command->info("Successfully created {$subscriptionCount} subscriptions for candidate users!");
        
        // Show summary
        $activeCount = Subscription::where('is_active', true)->count();
        $inactiveCount = Subscription::where('is_active', false)->count();
        
        // $this->command->info("Summary:");
        // $this->command->info("- Total subscriptions: {$subscriptionCount}");
        // $this->command->info("- Active subscriptions: {$activeCount}");
        // $this->command->info("- Inactive subscriptions: {$inactiveCount}");
    }
}
