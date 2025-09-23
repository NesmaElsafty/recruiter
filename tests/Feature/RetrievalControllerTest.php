<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Retrieval;
use App\Models\User;
use App\Models\Subscription;
use App\Models\Plan;

class RetrievalControllerTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    protected $user;
    protected $subscription;

    protected function setUp(): void
    {
        parent::setUp();
        
        // Create test user and subscription
        $this->user = User::factory()->create(['type' => 'candidate']);
        $plan = Plan::factory()->create(['type' => 'candidate']);
        
        $this->subscription = Subscription::factory()->create([
            'user_id' => $this->user->id,
            'plan_id' => $plan->id,
        ]);
    }

    /** @test */
    public function it_can_create_a_retrieval()
    {
        $response = $this->actingAs($this->user, 'api')
            ->postJson('/api/retrievals', [
                'subscription_id' => $this->subscription->id,
                'reason' => 'Test retrieval reason',
            ]);

        $response->assertStatus(201)
            ->assertJsonStructure([
                'success',
                'message',
                'data' => [
                    'id',
                    'subscription_id',
                    'user_id',
                    'reason',
                    'status',
                    'created_at',
                    'updated_at',
                ]
            ]);

        $this->assertDatabaseHas('retrievals', [
            'subscription_id' => $this->subscription->id,
            'user_id' => $this->user->id,
            'reason' => 'Test retrieval reason',
            'status' => 'pending',
        ]);
    }

    /** @test */
    public function it_can_get_user_retrievals()
    {
        // Create some retrievals
        Retrieval::factory()->count(3)->create([
            'user_id' => $this->user->id,
            'subscription_id' => $this->subscription->id,
        ]);

        $response = $this->actingAs($this->user, 'api')
            ->getJson('/api/retrievals');

        $response->assertStatus(200)
            ->assertJsonStructure([
                'success',
                'message',
                'data' => [
                    '*' => [
                        'id',
                        'subscription_id',
                        'user_id',
                        'reason',
                        'status',
                        'created_at',
                        'updated_at',
                    ]
                ],
                'pagination'
            ]);

        $this->assertCount(3, $response->json('data'));
    }

    /** @test */
    public function it_can_get_specific_retrieval()
    {
        $retrieval = Retrieval::factory()->create([
            'user_id' => $this->user->id,
            'subscription_id' => $this->subscription->id,
        ]);

        $response = $this->actingAs($this->user, 'api')
            ->getJson("/api/retrievals/{$retrieval->id}");

        $response->assertStatus(200)
            ->assertJsonStructure([
                'success',
                'message',
                'data' => [
                    'id',
                    'subscription_id',
                    'user_id',
                    'reason',
                    'status',
                    'created_at',
                    'updated_at',
                ]
            ]);
    }

    /** @test */
    public function it_can_update_retrieval()
    {
        $retrieval = Retrieval::factory()->create([
            'user_id' => $this->user->id,
            'subscription_id' => $this->subscription->id,
            'status' => 'pending',
        ]);

        $response = $this->actingAs($this->user, 'api')
            ->putJson("/api/retrievals/{$retrieval->id}", [
                'reason' => 'Updated retrieval reason',
            ]);

        $response->assertStatus(200);

        $this->assertDatabaseHas('retrievals', [
            'id' => $retrieval->id,
            'reason' => 'Updated retrieval reason',
        ]);
    }

    /** @test */
    public function it_can_delete_retrieval()
    {
        $retrieval = Retrieval::factory()->create([
            'user_id' => $this->user->id,
            'subscription_id' => $this->subscription->id,
        ]);

        $response = $this->actingAs($this->user, 'api')
            ->deleteJson("/api/retrievals/{$retrieval->id}");

        $response->assertStatus(200);

        $this->assertDatabaseMissing('retrievals', [
            'id' => $retrieval->id,
        ]);
    }

    /** @test */
    public function admin_can_update_retrieval_status()
    {
        $admin = User::factory()->create(['type' => 'admin']);
        $retrieval = Retrieval::factory()->create([
            'user_id' => $this->user->id,
            'subscription_id' => $this->subscription->id,
            'status' => 'pending',
        ]);

        $response = $this->actingAs($admin, 'api')
            ->putJson("/api/retrievals/{$retrieval->id}", [
                'status' => 'approved',
            ]);

        $response->assertStatus(200);

        $this->assertDatabaseHas('retrievals', [
            'id' => $retrieval->id,
            'status' => 'approved',
        ]);
    }

    /** @test */
    public function user_cannot_update_retrieval_status()
    {
        $retrieval = Retrieval::factory()->create([
            'user_id' => $this->user->id,
            'subscription_id' => $this->subscription->id,
            'status' => 'pending',
        ]);

        $response = $this->actingAs($this->user, 'api')
            ->putJson("/api/retrievals/{$retrieval->id}", [
                'status' => 'approved',
            ]);

        $response->assertStatus(403);
    }
}
