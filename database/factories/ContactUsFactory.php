<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ContactUs>
 */
class ContactUsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'address' => $this->generateAddress(),
            'phone' => $this->generatePhoneNumber(),
            'email' => fake()->companyEmail(),
            'copyright' => $this->generateCopyright(),
        ];
    }

    /**
     * Generate realistic address
     */
    private function generateAddress(): string
    {
        $addresses = [
            '123 Tahrir Square, Downtown Cairo, Egypt',
            '456 Corniche El Nile, Maadi, Cairo, Egypt',
            '789 New Administrative Capital, Egypt',
            '321 Sheikh Zayed City, Giza, Egypt',
            '654 New Cairo, Cairo, Egypt',
            '987 Heliopolis, Cairo, Egypt',
            '147 Nasr City, Cairo, Egypt',
            '258 Zamalek, Cairo, Egypt',
            '369 Garden City, Cairo, Egypt',
            '741 Dokki, Giza, Egypt',
            '852 Mohandessin, Giza, Egypt',
            '963 Agouza, Giza, Egypt',
            '159 6th October City, Giza, Egypt',
            '357 Sheikh Zayed, 6th October City, Egypt',
            '468 Smart Village, Giza, Egypt',
        ];

        return fake()->randomElement($addresses);
    }

    /**
     * Generate Egyptian phone number
     */
    private function generatePhoneNumber(): string
    {
        $phoneFormats = [
            '+20 2 ' . fake()->numerify('#### ####'),
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
     * Generate copyright text
     */
    private function generateCopyright(): string
    {
        $currentYear = date('Y');
        $companyNames = [
            'RecruiterHub',
            'JobConnect',
            'CareerLink',
            'TalentFinder',
            'JobSeeker Pro',
            'RecruitMax',
            'CareerBoost',
            'JobMatch',
            'TalentConnect',
            'CareerPro',
        ];

        $companyName = fake()->randomElement($companyNames);
        
        return "© {$currentYear} {$companyName}. All rights reserved.";
    }

    /**
     * Create Cairo office contact
     */
    public function cairo(): static
    {
        return $this->state(fn (array $attributes) => [
            'address' => '123 Tahrir Square, Downtown Cairo, Egypt',
            'phone' => '+20 2 ' . fake()->numerify('#### ####'),
        ]);
    }

    /**
     * Create Alexandria office contact
     */
    public function alexandria(): static
    {
        return $this->state(fn (array $attributes) => [
            'address' => '456 Corniche El Nile, Alexandria, Egypt',
            'phone' => '+20 3 ' . fake()->numerify('#### ####'),
        ]);
    }

    /**
     * Create Giza office contact
     */
    public function giza(): static
    {
        return $this->state(fn (array $attributes) => [
            'address' => '789 Sheikh Zayed City, Giza, Egypt',
            'phone' => '+20 2 ' . fake()->numerify('#### ####'),
        ]);
    }

    /**
     * Create New Administrative Capital office contact
     */
    public function newCapital(): static
    {
        return $this->state(fn (array $attributes) => [
            'address' => '321 New Administrative Capital, Egypt',
            'phone' => '+20 2 ' . fake()->numerify('#### ####'),
        ]);
    }

    /**
     * Create main headquarters contact
     */
    public function headquarters(): static
    {
        return $this->state(fn (array $attributes) => [
            'address' => '123 Tahrir Square, Downtown Cairo, Egypt',
            'phone' => '+20 2 1234 5678',
            'email' => 'info@recruiterhub.com',
            'copyright' => '© ' . date('Y') . ' RecruiterHub. All rights reserved.',
        ]);
    }

    /**
     * Create branch office contact
     */
    public function branch(): static
    {
        $branches = [
            'Alexandria Branch',
            'Giza Branch',
            'New Cairo Branch',
            '6th October Branch',
            'Heliopolis Branch',
        ];

        $branch = fake()->randomElement($branches);
        
        return $this->state(fn (array $attributes) => [
            'email' => strtolower(str_replace(' ', '', $branch)) . '@recruiterhub.com',
        ]);
    }
}
