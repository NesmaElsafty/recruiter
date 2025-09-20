<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Feature;

class FeaturesSeeder extends Seeder
{
    public function run(): void
    {
        // Optionally clear existing
        // Feature::truncate();

        $features = [
            ['name_en' => 'Unlimited Job Posts', 'name_ar' => 'عدد غير محدود من إعلانات الوظائف'],
            ['name_en' => 'Highlighted Listings', 'name_ar' => 'إعلانات مميزة'],
            ['name_en' => 'Candidate Messaging', 'name_ar' => 'مراسلة المتقدمين'],
            ['name_en' => 'Advanced Analytics', 'name_ar' => 'تحليلات متقدمة'],
            ['name_en' => 'Priority Support', 'name_ar' => 'دعم ذو أولوية'],
            ['name_en' => 'Team Members', 'name_ar' => 'أعضاء الفريق'],
            ['name_en' => 'API Access', 'name_ar' => 'وصول عبر واجهة برمجة التطبيقات'],
        ];

        foreach ($features as $data) {
            Feature::create($data);
        }
    }
}


