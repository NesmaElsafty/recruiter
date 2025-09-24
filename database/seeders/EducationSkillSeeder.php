<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Education;
use Illuminate\Support\Str;

class EducationSkillSeeder extends Seeder
{
    public function run(): void
    {
        $candidates = User::where('type', 'candidate')->get();

        foreach ($candidates as $candidate) {
            $numEdu = rand(1, 2);

            for ($i = 0; $i < $numEdu; $i++) {
                $start = now()->subYears(rand(3, 10))->startOfYear();
                $end = (clone $start)->addYears(rand(2, 5));

                $education = Education::create([
                    'user_id' => $candidate->id,
                    'university' => Str::title(fake()->company() . ' University'),
                    'degree' => fake()->randomElement(['BSc', 'MSc', 'PhD', 'Diploma']),
                    'major_id' => null,
                    'major_name' => Str::title(fake()->word()),
                    'start_date' => $start->toDateString(),
                    'end_date' => $end->toDateString(),
                    'description' => fake()->sentence(12),
                ]);

                $skills = fake()->randomElements([
                    'Research', 'Presentation', 'Communication', 'Teamwork', 'Data Analysis',
                    'Statistics', 'Problem Solving', 'Project Management', 'Leadership', 'Writing'
                ], rand(2, 5));

                foreach ($skills as $name) {
                    $education->skills()->create([
                        'user_id' => $candidate->id,
                        'name' => $name,
                    ]);
                }
            }
        }
    }
}


