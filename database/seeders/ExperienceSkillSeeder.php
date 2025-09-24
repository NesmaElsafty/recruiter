<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Experience;
use App\Models\Skill;
use Illuminate\Support\Str;

class ExperienceSkillSeeder extends Seeder
{
    public function run(): void
    {
        $candidates = User::where('type', 'candidate')->get();

        foreach ($candidates as $candidate) {
            $numExperiences = rand(1, 3);

            for ($i = 0; $i < $numExperiences; $i++) {
                $start = now()->subYears(rand(1, 8))->startOfMonth();
                $end = (clone $start)->addMonths(rand(6, 36));
                $isCurrent = rand(0, 1) === 1;
                if ($isCurrent) {
                    $end = null;
                }

                $experience = Experience::create([
                    'user_id' => $candidate->id,
                    'company_name' => Str::title(fake()->company()),
                    'position' => Str::title(fake()->jobTitle()),
                    'location' => fake()->city(),
                    'start_date' => $start->toDateString(),
                    'end_date' => $end ? $end->toDateString() : null,
                    'description' => fake()->paragraph(),
                    'is_current' => $isCurrent,
                ]);

                $numSkills = rand(3, 7);
                for ($s = 0; $s < $numSkills; $s++) {
                    $experience->skills()->create([
                        'user_id' => $candidate->id,
                        'name' => Str::title(fake()->unique()->word())
                    ]);
                }
            }
        }
    }
}


