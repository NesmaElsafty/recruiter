<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Plan;

class PlansSeeder extends Seeder
{
    public function run(): void
    {
        // Optionally clear existing
        // Plan::truncate();

        $plans = [
            [
                'name_en' => 'Basic',
                'name_ar' => 'الأساسي',
                'description_en' => 'Essential tools for small teams getting started.',
                'description_ar' => 'أدوات أساسية للفرق الصغيرة التي تبدأ.',
                'price' => 0.00,
                'duration' => 1,
                'duration_type' => 'monthly',
                'type' => 'candidate',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name_en' => 'Pro',
                'name_ar' => 'المحترف',
                'description_en' => 'Advanced features for growing companies.',
                'description_ar' => 'ميزات متقدمة للشركات النامية.',
                'price' => 99.00,
                'duration' => 1,
                'duration_type' => 'monthly',
                'type' => 'recruiter',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name_en' => 'Enterprise',
                'name_ar' => 'المؤسسات',
                'description_en' => 'Full power for large organizations with custom needs.',
                'description_ar' => 'قوة كاملة للمؤسسات الكبيرة ذات الاحتياجات الخاصة.',
                'price' => 999.00,
                'duration' => 12,
                'duration_type' => 'yearly',
                'type' => 'recruiter',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];

        foreach ($plans as $data) {
            Plan::create($data);
        }
    }
}


