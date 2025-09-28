<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\SubMajor;
use App\Models\Major;

class SubMajorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Get all majors to assign sub majors to them
        $majors = Major::all();
        
        if ($majors->isEmpty()) {
            $this->command->warn('No majors found. Please run MajorSeeder first.');
            return;
        }

        $subMajors = [
            // Computer Science sub majors
            [
                'name_en' => 'Artificial Intelligence',
                'name_ar' => 'الذكاء الاصطناعي',
                'major_name' => 'Computer Science'
            ],
            [
                'name_en' => 'Machine Learning',
                'name_ar' => 'تعلم الآلة',
                'major_name' => 'Computer Science'
            ],
            [
                'name_en' => 'Computer Graphics',
                'name_ar' => 'رسوم الحاسب',
                'major_name' => 'Computer Science'
            ],
            [
                'name_en' => 'Database Systems',
                'name_ar' => 'أنظمة قواعد البيانات',
                'major_name' => 'Computer Science'
            ],
            [
                'name_en' => 'Computer Networks',
                'name_ar' => 'شبكات الحاسب',
                'major_name' => 'Computer Science'
            ],

            // Information Technology sub majors
            [
                'name_en' => 'Web Development',
                'name_ar' => 'تطوير الويب',
                'major_name' => 'Information Technology'
            ],
            [
                'name_en' => 'Mobile App Development',
                'name_ar' => 'تطوير تطبيقات الهاتف',
                'major_name' => 'Information Technology'
            ],
            [
                'name_en' => 'System Administration',
                'name_ar' => 'إدارة الأنظمة',
                'major_name' => 'Information Technology'
            ],
            [
                'name_en' => 'Cloud Computing',
                'name_ar' => 'الحوسبة السحابية',
                'major_name' => 'Information Technology'
            ],

            // Software Engineering sub majors
            [
                'name_en' => 'Frontend Development',
                'name_ar' => 'تطوير الواجهة الأمامية',
                'major_name' => 'Software Engineering'
            ],
            [
                'name_en' => 'Backend Development',
                'name_ar' => 'تطوير الخادم',
                'major_name' => 'Software Engineering'
            ],
            [
                'name_en' => 'DevOps',
                'name_ar' => 'تطوير العمليات',
                'major_name' => 'Software Engineering'
            ],
            [
                'name_en' => 'Quality Assurance',
                'name_ar' => 'ضمان الجودة',
                'major_name' => 'Software Engineering'
            ],

            // Data Science sub majors
            [
                'name_en' => 'Data Analytics',
                'name_ar' => 'تحليل البيانات',
                'major_name' => 'Data Science'
            ],
            [
                'name_en' => 'Big Data',
                'name_ar' => 'البيانات الضخمة',
                'major_name' => 'Data Science'
            ],
            [
                'name_en' => 'Business Intelligence',
                'name_ar' => 'ذكاء الأعمال',
                'major_name' => 'Data Science'
            ],

            // Cybersecurity sub majors
            [
                'name_en' => 'Network Security',
                'name_ar' => 'أمان الشبكات',
                'major_name' => 'Cybersecurity'
            ],
            [
                'name_en' => 'Digital Forensics',
                'name_ar' => 'الطب الشرعي الرقمي',
                'major_name' => 'Cybersecurity'
            ],
            [
                'name_en' => 'Ethical Hacking',
                'name_ar' => 'الاختراق الأخلاقي',
                'major_name' => 'Cybersecurity'
            ],

            // Business Administration sub majors
            [
                'name_en' => 'Strategic Management',
                'name_ar' => 'الإدارة الاستراتيجية',
                'major_name' => 'Business Administration'
            ],
            [
                'name_en' => 'Operations Management',
                'name_ar' => 'إدارة العمليات',
                'major_name' => 'Business Administration'
            ],
            [
                'name_en' => 'Project Management',
                'name_ar' => 'إدارة المشاريع',
                'major_name' => 'Business Administration'
            ],

            // Marketing sub majors
            [
                'name_en' => 'Digital Marketing',
                'name_ar' => 'التسويق الرقمي',
                'major_name' => 'Marketing'
            ],
            [
                'name_en' => 'Brand Management',
                'name_ar' => 'إدارة العلامة التجارية',
                'major_name' => 'Marketing'
            ],
            [
                'name_en' => 'Social Media Marketing',
                'name_ar' => 'التسويق عبر وسائل التواصل',
                'major_name' => 'Marketing'
            ],

            // Finance sub majors
            [
                'name_en' => 'Investment Banking',
                'name_ar' => 'البنوك الاستثمارية',
                'major_name' => 'Finance'
            ],
            [
                'name_en' => 'Corporate Finance',
                'name_ar' => 'المالية المؤسسية',
                'major_name' => 'Finance'
            ],
            [
                'name_en' => 'Risk Management',
                'name_ar' => 'إدارة المخاطر',
                'major_name' => 'Finance'
            ],

            // Accounting sub majors
            [
                'name_en' => 'Financial Accounting',
                'name_ar' => 'المحاسبة المالية',
                'major_name' => 'Accounting'
            ],
            [
                'name_en' => 'Management Accounting',
                'name_ar' => 'المحاسبة الإدارية',
                'major_name' => 'Accounting'
            ],
            [
                'name_en' => 'Auditing',
                'name_ar' => 'التدقيق',
                'major_name' => 'Accounting'
            ],

            // Human Resources sub majors
            [
                'name_en' => 'Recruitment',
                'name_ar' => 'التوظيف',
                'major_name' => 'Human Resources'
            ],
            [
                'name_en' => 'Training & Development',
                'name_ar' => 'التدريب والتطوير',
                'major_name' => 'Human Resources'
            ],
            [
                'name_en' => 'Employee Relations',
                'name_ar' => 'علاقات الموظفين',
                'major_name' => 'Human Resources'
            ],

            // Mechanical Engineering sub majors
            [
                'name_en' => 'Thermodynamics',
                'name_ar' => 'الديناميكا الحرارية',
                'major_name' => 'Mechanical Engineering'
            ],
            [
                'name_en' => 'Robotics',
                'name_ar' => 'الروبوتات',
                'major_name' => 'Mechanical Engineering'
            ],
            [
                'name_en' => 'Automotive Engineering',
                'name_ar' => 'هندسة السيارات',
                'major_name' => 'Mechanical Engineering'
            ],

            // Electrical Engineering sub majors
            [
                'name_en' => 'Power Systems',
                'name_ar' => 'أنظمة الطاقة',
                'major_name' => 'Electrical Engineering'
            ],
            [
                'name_en' => 'Control Systems',
                'name_ar' => 'أنظمة التحكم',
                'major_name' => 'Electrical Engineering'
            ],
            [
                'name_en' => 'Telecommunications',
                'name_ar' => 'الاتصالات',
                'major_name' => 'Electrical Engineering'
            ],

            // Civil Engineering sub majors
            [
                'name_en' => 'Structural Engineering',
                'name_ar' => 'الهندسة الإنشائية',
                'major_name' => 'Civil Engineering'
            ],
            [
                'name_en' => 'Transportation Engineering',
                'name_ar' => 'هندسة النقل',
                'major_name' => 'Civil Engineering'
            ],
            [
                'name_en' => 'Environmental Engineering',
                'name_ar' => 'الهندسة البيئية',
                'major_name' => 'Civil Engineering'
            ],

            // Medicine sub majors
            [
                'name_en' => 'Internal Medicine',
                'name_ar' => 'الطب الباطني',
                'major_name' => 'Medicine'
            ],
            [
                'name_en' => 'Surgery',
                'name_ar' => 'الجراحة',
                'major_name' => 'Medicine'
            ],
            [
                'name_en' => 'Pediatrics',
                'name_ar' => 'طب الأطفال',
                'major_name' => 'Medicine'
            ],

            // Nursing sub majors
            [
                'name_en' => 'Critical Care Nursing',
                'name_ar' => 'تمريض العناية المركزة',
                'major_name' => 'Nursing'
            ],
            [
                'name_en' => 'Pediatric Nursing',
                'name_ar' => 'تمريض الأطفال',
                'major_name' => 'Nursing'
            ],
            [
                'name_en' => 'Mental Health Nursing',
                'name_ar' => 'تمريض الصحة النفسية',
                'major_name' => 'Nursing'
            ],
        ];

        foreach ($subMajors as $subMajorData) {
            $major = $majors->where('name_en', $subMajorData['major_name'])->first();
            
            if ($major) {
                SubMajor::create([
                    'name_en' => $subMajorData['name_en'],
                    'name_ar' => $subMajorData['name_ar'],
                    'major_id' => $major->id,
                ]);
            }
        }

        $this->command->info('Sub majors seeded successfully!');
    }
}
