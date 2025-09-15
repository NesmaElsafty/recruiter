<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Major;

class MajorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $majors = [
            ['name_en' => 'Computer Science', 'name_ar' => 'علوم الحاسب'],
            ['name_en' => 'Information Technology', 'name_ar' => 'تقنية المعلومات'],
            ['name_en' => 'Software Engineering', 'name_ar' => 'هندسة البرمجيات'],
            ['name_en' => 'Data Science', 'name_ar' => 'علوم البيانات'],
            ['name_en' => 'Cybersecurity', 'name_ar' => 'الأمن السيبراني'],
            ['name_en' => 'Business Administration', 'name_ar' => 'إدارة الأعمال'],
            ['name_en' => 'Marketing', 'name_ar' => 'التسويق'],
            ['name_en' => 'Finance', 'name_ar' => 'المالية'],
            ['name_en' => 'Accounting', 'name_ar' => 'المحاسبة'],
            ['name_en' => 'Human Resources', 'name_ar' => 'الموارد البشرية'],
            ['name_en' => 'Mechanical Engineering', 'name_ar' => 'الهندسة الميكانيكية'],
            ['name_en' => 'Electrical Engineering', 'name_ar' => 'الهندسة الكهربائية'],
            ['name_en' => 'Civil Engineering', 'name_ar' => 'الهندسة المدنية'],
            ['name_en' => 'Medicine', 'name_ar' => 'الطب'],
            ['name_en' => 'Nursing', 'name_ar' => 'التمريض'],
        ];

        foreach ($majors as $major) {
            Major::create($major);
        }
    }
}
