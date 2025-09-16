<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\City;
use App\Models\Major;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Get some cities and majors for relationships
        $cities = City::pluck('id')->toArray();
        $majors = Major::pluck('id')->toArray();
        
        $users = [
            [
                'name' => 'Ahmed Al-Rashid',
                'email' => 'Admin@example.com',
                'password' => Hash::make('123456'),
                'type' => 'admin',
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Sarah Johnson',
                'email' => 'candidate@example.com',
                'password' => Hash::make('123456'),
                'type' => 'candidate',
                
                'city_id' => $cities[array_rand($cities)] ?? null,
                'major_id' => $majors[array_rand($majors)] ?? null,
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Mohammed Al-Sheikh',
                'email' => 'recruiter@example.com',
                'password' => Hash::make('123456'),
                'type' => 'recruiter',
                'company_name' => 'Tech University',
                'job_title' => 'Computer Science Professor',
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Fatima Al-Zahra',
                'email' => 'fatima@example.com',
                'password' => Hash::make('123456'),
                'type' => 'candidate',
                'city_id' => $cities[array_rand($cities)] ?? null,
                'major_id' => $majors[array_rand($majors)] ?? null,
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'name' => 'David Wilson',
                'email' => 'david@example.com',
                'password' => Hash::make('123456'),
                'type' => 'recruiter',
                'company_name' => 'Business School',
                'job_title' => 'Marketing Lecturer',
                'city_id' => $cities[array_rand($cities)] ?? null,
                'major_id' => $majors[array_rand($majors)] ?? null,
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'name' => 'John Doe',
                'email' => 'john@example.com',
                'password' => Hash::make('123456'),
                'type' => 'admin',
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],      
            [
                'name' => 'Jane Doe',
                'email' => 'jane@example.com',
                'password' => Hash::make('123456'),
                'type' => 'recruiter',
                'company_name' => 'Tech University',
                'job_title' => 'Computer Science Professor',
                'city_id' => $cities[array_rand($cities)] ?? null,
                'major_id' => $majors[array_rand($majors)] ?? null,
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Jane Doe',
                'email' => 'janee@example.com',
                'password' => Hash::make('123456'),
                'type' => 'candidate',
                'city_id' => $cities[array_rand($cities)] ?? null,
                'major_id' => $majors[array_rand($majors)] ?? null,
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
        ];

        foreach ($users as $user) {
            User::create($user);
        }
    }

    /**
     * Generate a random date between today and 3 months ago
     */
    private function getRandomDate(): Carbon
    {
        $startDate = Carbon::now()->subMonths(3);
        $endDate = Carbon::now();
        
        $randomTimestamp = mt_rand($startDate->timestamp, $endDate->timestamp);
        
        return Carbon::createFromTimestamp($randomTimestamp);
    }
}
