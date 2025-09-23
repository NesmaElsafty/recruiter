<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Services\SubscriptionService;
use App\Models\Subscription;
use App\Models\User;
use App\Models\Plan;

class SubscriptionServiceTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    protected $subscriptionService;

    protected function setUp(): void
    {
        parent::setUp();
        $this->subscriptionService = new SubscriptionService();
    }

    /** @test */
    public function it_can_get_all_subscriptions_with_filters()
    {
        // Create test data
        $user = User::factory()->create(['type' => 'candidate']);
        $plan = Plan::factory()->create(['type' => 'candidate']);
        
        Subscription::factory()->create([
            'user_id' => $user->id,
            'plan_id' => $plan->id,
            'subscription_id' => 'TEST123456',
            'paid_amount' => '99.99',
            'is_active' => true,
        ]);

        // Test search filter
        $result = $this->subscriptionService->getAllSubscriptions(['search' => 'TEST123456']);
        $this->assertCount(1, $result->get());

        // Test is_active filter
        $result = $this->subscriptionService->getAllSubscriptions(['is_active' => true]);
        $this->assertCount(1, $result->get());

        // Test payment method filter
        $result = $this->subscriptionService->getAllSubscriptions(['payment_method' => 'credit_card']);
        $this->assertCount(1, $result->get());
    }

    /** @test */
    public function it_can_get_subscription_statistics()
    {
        // Create test subscriptions
        $user = User::factory()->create(['type' => 'candidate']);
        $plan = Plan::factory()->create(['type' => 'candidate', 'price' => 99.99]);
        
        Subscription::factory()->create([
            'user_id' => $user->id,
            'plan_id' => $plan->id,
            'paid_amount' => '99.99',
            'is_active' => true,
        ]);

        Subscription::factory()->create([
            'user_id' => $user->id,
            'plan_id' => $plan->id,
            'paid_amount' => '0',
            'is_active' => false,
        ]);

        $stats = $this->subscriptionService->getSubscriptionStats();

        $this->assertArrayHasKey('total_subscriptions', $stats);
        $this->assertArrayHasKey('total_payments', $stats);
        $this->assertArrayHasKey('incomplete_payments', $stats);
        $this->assertArrayHasKey('chart_data', $stats);
        
        $this->assertEquals(2, $stats['total_subscriptions']['value']);
        $this->assertEquals(1, $stats['incomplete_payments']['value']);
    }

    /** @test */
    public function it_can_apply_sorting_correctly()
    {
        // Create test data with different creation dates
        $user1 = User::factory()->create(['fname' => 'Alice', 'type' => 'candidate']);
        $user2 = User::factory()->create(['fname' => 'Bob', 'type' => 'candidate']);
        $plan = Plan::factory()->create(['type' => 'candidate']);

        Subscription::factory()->create([
            'user_id' => $user1->id,
            'plan_id' => $plan->id,
            'paid_amount' => '50.00',
            'created_at' => now()->subDay(),
        ]);

        Subscription::factory()->create([
            'user_id' => $user2->id,
            'plan_id' => $plan->id,
            'paid_amount' => '100.00',
            'created_at' => now(),
        ]);

        // Test newest sorting (default)
        $result = $this->subscriptionService->getAllSubscriptions(['sorted_by' => 'newest']);
        $subscriptions = $result->get();
        $this->assertEquals($user2->id, $subscriptions->first()->user_id);

        // Test paid_amount sorting
        $result = $this->subscriptionService->getAllSubscriptions(['sorted_by' => 'paid_amount']);
        $subscriptions = $result->get();
        $this->assertEquals('100.00', $subscriptions->first()->paid_amount);
    }

    /** @test */
    public function it_can_export_subscriptions()
    {
        $user = User::factory()->create(['fname' => 'John', 'lname' => 'Doe', 'type' => 'candidate']);
        $plan = Plan::factory()->create(['name_en' => 'Premium Plan', 'type' => 'candidate']);
        
        $subscription = Subscription::factory()->create([
            'user_id' => $user->id,
            'plan_id' => $plan->id,
            'subscription_id' => 'EXP123456',
            'paid_amount' => '199.99',
        ]);

        $filePath = $this->subscriptionService->export([$subscription->id]);
        
        $this->assertFileExists($filePath);
        $this->assertStringContainsString('subscriptions_', basename($filePath));
    }
}