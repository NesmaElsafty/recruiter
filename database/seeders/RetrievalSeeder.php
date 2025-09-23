<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Retrieval;
use App\Models\User;
use App\Models\Subscription;
use Carbon\Carbon;

class RetrievalSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Get all candidate users
        $candidateUsers = User::where('type', 'candidate')->get();
        
        // Get all subscriptions for candidate users
        $candidateSubscriptions = Subscription::whereHas('user', function ($query) {
            $query->where('type', 'candidate');
        })->get();
        
        if ($candidateUsers->isEmpty()) {
            $this->command->warn('No candidate users found. Please seed users first.');
            return;
        }
        
        if ($candidateSubscriptions->isEmpty()) {
            $this->command->warn('No candidate subscriptions found. Please seed subscriptions first.');
            return;
        }
        
        // Create 50+ retrievals
        $retrievalCount = 0;
        $targetCount = 55; // Generate a bit more than 50
        
        while ($retrievalCount < $targetCount) {
            // Get random candidate user and subscription
            $user = $candidateUsers->random();
            $subscription = $candidateSubscriptions->random();
            
            // Generate random date between today and 3 months ago
            $randomDate = fake()->dateTimeBetween('-3 months', 'now');
            
            // Generate random reason
            $reasons = [
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
            ];
            
            // Create retrieval
            Retrieval::create([
                'subscription_id' => $subscription->id,
                'user_id' => $user->id,
                'reason' => fake()->randomElement($reasons),
                'status' => fake()->randomElement(['pending', 'approved', 'rejected']),
                'created_at' => $randomDate,
                'updated_at' => $randomDate,
            ]);
            
            $retrievalCount++;
            
            // Show progress
            if ($retrievalCount % 10 === 0) {
                // $this->command->info("Created {$retrievalCount} retrievals...");
            }
        }
        
        // Show summary
        $pendingCount = Retrieval::where('status', 'pending')->count();
        $approvedCount = Retrieval::where('status', 'approved')->count();
        $rejectedCount = Retrieval::where('status', 'rejected')->count();
        
        // $this->command->info("Summary:");
        // $this->command->info("- Total retrievals: {$retrievalCount}");
        // $this->command->info("- Pending retrievals: {$pendingCount}");
        // $this->command->info("- Approved retrievals: {$approvedCount}");
        // $this->command->info("- Rejected retrievals: {$rejectedCount}");
    }
}
