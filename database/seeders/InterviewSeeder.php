<?php

namespace Database\Seeders;

use App\Models\Interview;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class InterviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create 50 random interviews
        Interview::factory(50)->create();

        // Create some specific interview scenarios for better testing
        Interview::factory(10)->pending()->create();
        Interview::factory(15)->completed()->highPerformance()->create();
        Interview::factory(5)->completed()->lowPerformance()->create();
        Interview::factory(8)->cancelled()->create();

        $this->command->info('Created 88 interview records with dummy data.');
    }
}
