<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Major>
 */
class MajorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $major = fake()->randomElement($this->getMajors());
        
        return [
            'name_en' => $major['en'],
            'name_ar' => $major['ar'],
        ];
    }

    /**
     * Get list of majors with English and Arabic names
     */
    private function getMajors(): array
    {
        return [
            ['en' => 'Computer Science', 'ar' => 'علوم الحاسوب'],
            ['en' => 'Software Engineering', 'ar' => 'هندسة البرمجيات'],
            ['en' => 'Information Technology', 'ar' => 'تكنولوجيا المعلومات'],
            ['en' => 'Data Science', 'ar' => 'علوم البيانات'],
            ['en' => 'Artificial Intelligence', 'ar' => 'الذكاء الاصطناعي'],
            ['en' => 'Cybersecurity', 'ar' => 'الأمن السيبراني'],
            ['en' => 'Network Engineering', 'ar' => 'هندسة الشبكات'],
            ['en' => 'Web Development', 'ar' => 'تطوير الويب'],
            ['en' => 'Mobile Development', 'ar' => 'تطوير التطبيقات المحمولة'],
            ['en' => 'Game Development', 'ar' => 'تطوير الألعاب'],
            ['en' => 'Business Administration', 'ar' => 'إدارة الأعمال'],
            ['en' => 'Marketing', 'ar' => 'التسويق'],
            ['en' => 'Finance', 'ar' => 'المالية'],
            ['en' => 'Accounting', 'ar' => 'المحاسبة'],
            ['en' => 'Human Resources', 'ar' => 'الموارد البشرية'],
            ['en' => 'Project Management', 'ar' => 'إدارة المشاريع'],
            ['en' => 'Digital Marketing', 'ar' => 'التسويق الرقمي'],
            ['en' => 'Sales', 'ar' => 'المبيعات'],
            ['en' => 'Operations Management', 'ar' => 'إدارة العمليات'],
            ['en' => 'Supply Chain Management', 'ar' => 'إدارة سلسلة التوريد'],
            ['en' => 'Mechanical Engineering', 'ar' => 'الهندسة الميكانيكية'],
            ['en' => 'Electrical Engineering', 'ar' => 'الهندسة الكهربائية'],
            ['en' => 'Civil Engineering', 'ar' => 'الهندسة المدنية'],
            ['en' => 'Chemical Engineering', 'ar' => 'الهندسة الكيميائية'],
            ['en' => 'Industrial Engineering', 'ar' => 'الهندسة الصناعية'],
            ['en' => 'Biomedical Engineering', 'ar' => 'الهندسة الطبية الحيوية'],
            ['en' => 'Environmental Engineering', 'ar' => 'الهندسة البيئية'],
            ['en' => 'Aerospace Engineering', 'ar' => 'الهندسة الجوية'],
            ['en' => 'Medicine', 'ar' => 'الطب'],
            ['en' => 'Dentistry', 'ar' => 'طب الأسنان'],
            ['en' => 'Pharmacy', 'ar' => 'الصيدلة'],
            ['en' => 'Nursing', 'ar' => 'التمريض'],
            ['en' => 'Veterinary Medicine', 'ar' => 'الطب البيطري'],
            ['en' => 'Physical Therapy', 'ar' => 'العلاج الطبيعي'],
            ['en' => 'Psychology', 'ar' => 'علم النفس'],
            ['en' => 'Law', 'ar' => 'القانون'],
            ['en' => 'Political Science', 'ar' => 'العلوم السياسية'],
            ['en' => 'International Relations', 'ar' => 'العلاقات الدولية'],
            ['en' => 'Journalism', 'ar' => 'الصحافة'],
            ['en' => 'Mass Communication', 'ar' => 'الإعلام'],
            ['en' => 'Public Relations', 'ar' => 'العلاقات العامة'],
            ['en' => 'Graphic Design', 'ar' => 'التصميم الجرافيكي'],
            ['en' => 'Interior Design', 'ar' => 'التصميم الداخلي'],
            ['en' => 'Architecture', 'ar' => 'الهندسة المعمارية'],
            ['en' => 'Fine Arts', 'ar' => 'الفنون الجميلة'],
            ['en' => 'Music', 'ar' => 'الموسيقى'],
            ['en' => 'Theater', 'ar' => 'المسرح'],
            ['en' => 'Film Production', 'ar' => 'إنتاج الأفلام'],
            ['en' => 'Photography', 'ar' => 'التصوير الفوتوغرافي'],
            ['en' => 'Fashion Design', 'ar' => 'تصميم الأزياء'],
            ['en' => 'Education', 'ar' => 'التربية والتعليم'],
            ['en' => 'Early Childhood Education', 'ar' => 'تربية الطفولة المبكرة'],
            ['en' => 'Special Education', 'ar' => 'التربية الخاصة'],
            ['en' => 'English Literature', 'ar' => 'الأدب الإنجليزي'],
            ['en' => 'Arabic Literature', 'ar' => 'الأدب العربي'],
            ['en' => 'History', 'ar' => 'التاريخ'],
            ['en' => 'Geography', 'ar' => 'الجغرافيا'],
            ['en' => 'Sociology', 'ar' => 'علم الاجتماع'],
            ['en' => 'Anthropology', 'ar' => 'علم الأنثروبولوجيا'],
            ['en' => 'Economics', 'ar' => 'الاقتصاد'],
            ['en' => 'Statistics', 'ar' => 'الإحصاء'],
            ['en' => 'Mathematics', 'ar' => 'الرياضيات'],
            ['en' => 'Physics', 'ar' => 'الفيزياء'],
            ['en' => 'Chemistry', 'ar' => 'الكيمياء'],
            ['en' => 'Biology', 'ar' => 'الأحياء'],
            ['en' => 'Environmental Science', 'ar' => 'العلوم البيئية'],
            ['en' => 'Agriculture', 'ar' => 'الزراعة'],
            ['en' => 'Food Science', 'ar' => 'علوم الغذاء'],
            ['en' => 'Nutrition', 'ar' => 'التغذية'],
            ['en' => 'Tourism and Hospitality', 'ar' => 'السياحة والضيافة'],
            ['en' => 'Hotel Management', 'ar' => 'إدارة الفنادق'],
            ['en' => 'Event Management', 'ar' => 'إدارة الفعاليات'],
            ['en' => 'Sports Science', 'ar' => 'علوم الرياضة'],
            ['en' => 'Physical Education', 'ar' => 'التربية الرياضية'],
            ['en' => 'Social Work', 'ar' => 'العمل الاجتماعي'],
            ['en' => 'Criminology', 'ar' => 'علم الجريمة'],
            ['en' => 'Linguistics', 'ar' => 'اللغويات'],
            ['en' => 'Translation', 'ar' => 'الترجمة'],
            ['en' => 'Library Science', 'ar' => 'علم المكتبات'],
            ['en' => 'Information Science', 'ar' => 'علم المعلومات'],
        ];
    }

    /**
     * Create a computer science major
     */
    public function computerScience(): static
    {
        return $this->state(fn (array $attributes) => [
            'name_en' => 'Computer Science',
            'name_ar' => 'علوم الحاسوب',
        ]);
    }

    /**
     * Create a business administration major
     */
    public function businessAdministration(): static
    {
        return $this->state(fn (array $attributes) => [
            'name_en' => 'Business Administration',
            'name_ar' => 'إدارة الأعمال',
        ]);
    }

    /**
     * Create an engineering major
     */
    public function engineering(): static
    {
        $engineeringMajors = [
            ['en' => 'Mechanical Engineering', 'ar' => 'الهندسة الميكانيكية'],
            ['en' => 'Electrical Engineering', 'ar' => 'الهندسة الكهربائية'],
            ['en' => 'Civil Engineering', 'ar' => 'الهندسة المدنية'],
            ['en' => 'Software Engineering', 'ar' => 'هندسة البرمجيات'],
        ];

        $major = fake()->randomElement($engineeringMajors);
        
        return $this->state(fn (array $attributes) => [
            'name_en' => $major['en'],
            'name_ar' => $major['ar'],
        ]);
    }
}
