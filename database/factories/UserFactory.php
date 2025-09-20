<?php

namespace Database\Factories;

use App\Models\City;
use App\Models\Major;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * The current password being used by the factory.
     */
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $userType = fake()->randomElement(['candidate', 'recruiter', 'admin']);
        
        return [
            'fname' => fake()->firstName(),
            'lname' => fake()->lastName(),
            'email' => fake()->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => static::$password ??= Hash::make('password'),
            'remember_token' => Str::random(10),
            'type' => $userType,
            'phone' => $this->generatePhoneNumber(),
            'city_id' => City::factory(),
            'major_id' => $userType === 'candidate' ? Major::factory() : null,
            'company_name' => $userType === 'recruiter' ? fake()->company() : null,
            'job_title' => $userType === 'recruiter' ? fake()->jobTitle() : null,
        ];
    }

    /**
     * Generate Egyptian phone number
     */
    private function generatePhoneNumber(): string
    {
        $phoneFormats = [
            '+20 10 ' . fake()->numerify('#### ####'),
            '+20 11 ' . fake()->numerify('#### ####'),
            '+20 12 ' . fake()->numerify('#### ####'),
            '+20 15 ' . fake()->numerify('#### ####'),
            '+20 16 ' . fake()->numerify('#### ####'),
            '+20 17 ' . fake()->numerify('#### ####'),
            '+20 18 ' . fake()->numerify('#### ####'),
            '+20 19 ' . fake()->numerify('#### ####'),
        ];

        return fake()->randomElement($phoneFormats);
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }

    /**
     * Create a candidate user
     */
    public function candidate(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'candidate',
            'major_id' => Major::factory(),
            'company_name' => null,
            'job_title' => null,
        ]);
    }

    /**
     * Create a recruiter user
     */
    public function recruiter(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'recruiter',
            'major_id' => null,
            'company_name' => fake()->company(),
            'job_title' => fake()->jobTitle(),
        ]);
    }

    /**
     * Create an admin user
     */
    public function admin(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'admin',
            'major_id' => null,
            'company_name' => null,
            'job_title' => null,
        ]);
    }

    /**
     * Create a user with specific city
     */
    public function inCity(City $city): static
    {
        return $this->state(fn (array $attributes) => [
            'city_id' => $city->id,
        ]);
    }

    /**
     * Create a user with specific major
     */
    public function withMajor(Major $major): static
    {
        return $this->state(fn (array $attributes) => [
            'major_id' => $major->id,
        ]);
    }

    /**
     * Create a user with specific company
     */
    public function withCompany(string $companyName): static
    {
        return $this->state(fn (array $attributes) => [
            'company_name' => $companyName,
        ]);
    }

    /**
     * Create a user with specific job title
     */
    public function withJobTitle(string $jobTitle): static
    {
        return $this->state(fn (array $attributes) => [
            'job_title' => $jobTitle,
        ]);
    }

    /**
     * Create a user with verified email
     */
    public function verified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => now(),
        ]);
    }

    /**
     * Create a user with unverified email
     */
    public function unverifiedEmail(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
