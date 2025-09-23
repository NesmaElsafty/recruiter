<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Retrieval;
use App\Models\User;
use App\Models\Subscription;
use Database\Seeders\RetrievalSeeder;

class RetrievalSeederTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @test */
    public function it_can_seed_retrievals_successfully()
    {
        // Create test data first
        $user = User::factory()->create(['type' => 'candidate']);
        $plan = \App\Models\Plan::factory()->create(['type' => 'candidate']);
        
        $subscription = Subscription::factory()->create([
            'user_id' => $user->id,
            'plan_id' => $plan->id,
        ]);

        // Run the seeder
        $seeder = new RetrievalSeeder();
        $seeder->run();

        // Assert that retrievals were created
        $this->assertGreaterThan(0, Retrieval::count());
        
        // Assert that retrievals have proper relationships
        $retrieval = Retrieval::first();
        $this->assertNotNull($retrieval->user);
        $this->assertNotNull($retrieval->subscription);
        $this->assertEquals('candidate', $retrieval->user->type);
        
        // Assert that status is one of the valid values
        $this->assertContains($retrieval->status, ['pending', 'approved', 'rejected']);
        
        // Assert that reason is not empty
        $this->assertNotEmpty($retrieval->reason);
    }

    /** @test */
    public function it_creates_retrievals_with_different_statuses()
    {
        // Create test data
        $user = User::factory()->create(['type' => 'candidate']);
        $plan = \App\Models\Plan::factory()->create(['type' => 'candidate']);
        
        $subscription = Subscription::factory()->create([
            'user_id' => $user->id,
            'plan_id' => $plan->id,
        ]);

        // Run the seeder
        $seeder = new RetrievalSeeder();
        $seeder->run();

        // Check that we have retrievals with different statuses
        $statuses = Retrieval::pluck('status')->unique()->toArray();
        $this->assertGreaterThan(1, count($statuses));
        
        // Verify all statuses are valid
        foreach ($statuses as $status) {
            $this->assertContains($status, ['pending', 'approved', 'rejected']);
        }
    }

    /** @test */
    public function it_creates_retrievals_with_realistic_reasons()
    {
        // Create test data
        $user = User::factory()->create(['type' => 'candidate']);
        $plan = \App\Models\Plan::factory()->create(['type' => 'candidate']);
        
        $subscription = Subscription::factory()->create([
            'user_id' => $user->id,
            'plan_id' => $plan->id,
        ]);

        // Run the seeder
        $seeder = new RetrievalSeeder();
        $seeder->run();

        // Check that reasons are realistic
        $retrieval = Retrieval::first();
        $this->assertIsString($retrieval->reason);
        $this->assertGreaterThan(10, strlen($retrieval->reason));
        
        // Check that reason contains meaningful content
        $this->assertStringContainsString(' ', $retrieval->reason);
    }
}
