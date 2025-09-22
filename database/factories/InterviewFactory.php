<?php

namespace Database\Factories;

use App\Models\Interview;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Interview>
 */
class InterviewFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Interview::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // Generate random interview ID in format INT-XXXXXX
        $interviewId = 'INT-' . str_pad($this->faker->unique()->numberBetween(1, 999999), 6, '0', STR_PAD_LEFT);
        
        // Get a random candidate user
        $candidateUser = User::where('type', 'candidate')->inRandomOrder()->first();
        
        // If no candidate users exist, create one
        if (!$candidateUser) {
            $candidateUser = User::factory()->create(['type' => 'candidate']);
        }

        return [
            'interview_id' => $interviewId,
            'user_id' => $candidateUser->id,
            'performance' => $this->faker->numberBetween(0, 100) . '%',
            'status' => $this->faker->randomElement(['pending', 'completed', 'cancelled']),
            'created_at' => $this->faker->dateTimeBetween('-3 months', 'now'),
            'updated_at' => function (array $attributes) {
                return $this->faker->dateTimeBetween($attributes['created_at'], 'now');
            },
        ];
    }

    /**
     * Indicate that the interview is pending.
     */
    public function pending(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'pending',
        ]);
    }

    /**
     * Indicate that the interview is completed.
     */
    public function completed(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'completed',
        ]);
    }

    /**
     * Indicate that the interview is cancelled.
     */
    public function cancelled(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'cancelled',
        ]);
    }

    /**
     * Indicate that the interview has high performance.
     */
    public function highPerformance(): static
    {
        return $this->state(fn (array $attributes) => [
            'performance' => $this->faker->numberBetween(80, 100) . '%',
        ]);
    }

    /**
     * Indicate that the interview has low performance.
     */
    public function lowPerformance(): static
    {
        return $this->state(fn (array $attributes) => [
            'performance' => $this->faker->numberBetween(0, 40) . '%',
        ]);
    }
}
