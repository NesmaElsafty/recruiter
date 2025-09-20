<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Feature>
 */
class FeatureFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $feature = fake()->randomElement($this->getFeatures());
        
        return [
            'name_en' => $feature['en'],
            'name_ar' => $feature['ar'],
        ];
    }

    /**
     * Get list of features with English and Arabic names
     */
    private function getFeatures(): array
    {
        return [
            // Job Search Features
            ['en' => 'Advanced Job Search', 'ar' => 'البحث المتقدم عن الوظائف'],
            ['en' => 'Job Alerts', 'ar' => 'تنبيهات الوظائف'],
            ['en' => 'Saved Jobs', 'ar' => 'الوظائف المحفوظة'],
            ['en' => 'Job Recommendations', 'ar' => 'توصيات الوظائف'],
            ['en' => 'Company Reviews', 'ar' => 'مراجعات الشركات'],
            ['en' => 'Salary Insights', 'ar' => 'رؤى الرواتب'],
            
            // Profile Features
            ['en' => 'Professional Profile', 'ar' => 'الملف المهني'],
            ['en' => 'Skills Assessment', 'ar' => 'تقييم المهارات'],
            ['en' => 'Portfolio Showcase', 'ar' => 'عرض المحفظة'],
            ['en' => 'Video Introduction', 'ar' => 'مقدمة فيديو'],
            ['en' => 'Resume Builder', 'ar' => 'منشئ السيرة الذاتية'],
            ['en' => 'Cover Letter Templates', 'ar' => 'قوالب خطابات التغطية'],
            
            // Application Features
            ['en' => 'One-Click Apply', 'ar' => 'التقديم بنقرة واحدة'],
            ['en' => 'Application Tracking', 'ar' => 'تتبع الطلبات'],
            ['en' => 'Interview Scheduling', 'ar' => 'جدولة المقابلات'],
            ['en' => 'Application History', 'ar' => 'تاريخ الطلبات'],
            ['en' => 'Bulk Applications', 'ar' => 'التقديمات المجمعة'],
            
            // Networking Features
            ['en' => 'Professional Networking', 'ar' => 'الشبكات المهنية'],
            ['en' => 'Industry Groups', 'ar' => 'مجموعات الصناعة'],
            ['en' => 'Mentorship Program', 'ar' => 'برنامج الإرشاد'],
            ['en' => 'Career Events', 'ar' => 'فعاليات مهنية'],
            ['en' => 'Webinars', 'ar' => 'الندوات عبر الإنترنت'],
            
            // Learning Features
            ['en' => 'Online Courses', 'ar' => 'الدورات التدريبية عبر الإنترنت'],
            ['en' => 'Skill Development', 'ar' => 'تطوير المهارات'],
            ['en' => 'Certification Programs', 'ar' => 'برامج الشهادات'],
            ['en' => 'Career Guidance', 'ar' => 'الإرشاد المهني'],
            ['en' => 'Industry Reports', 'ar' => 'تقارير الصناعة'],
            
            // Communication Features
            ['en' => 'Direct Messaging', 'ar' => 'الرسائل المباشرة'],
            ['en' => 'Video Calls', 'ar' => 'المكالمات المرئية'],
            ['en' => 'Chat Support', 'ar' => 'دعم الدردشة'],
            ['en' => 'Email Notifications', 'ar' => 'إشعارات البريد الإلكتروني'],
            ['en' => 'SMS Alerts', 'ar' => 'تنبيهات الرسائل النصية'],
            
            // Analytics Features
            ['en' => 'Profile Views', 'ar' => 'مشاهدات الملف الشخصي'],
            ['en' => 'Application Analytics', 'ar' => 'تحليلات الطلبات'],
            ['en' => 'Performance Metrics', 'ar' => 'مقاييس الأداء'],
            ['en' => 'Market Insights', 'ar' => 'رؤى السوق'],
            ['en' => 'Trend Analysis', 'ar' => 'تحليل الاتجاهات'],
            
            // Premium Features
            ['en' => 'Priority Support', 'ar' => 'الدعم المميز'],
            ['en' => 'Advanced Filters', 'ar' => 'المرشحات المتقدمة'],
            ['en' => 'Unlimited Applications', 'ar' => 'طلبات غير محدودة'],
            ['en' => 'Featured Profile', 'ar' => 'ملف مميز'],
            ['en' => 'Premium Badge', 'ar' => 'شارة مميزة'],
            
            // Recruiter Features
            ['en' => 'Candidate Database', 'ar' => 'قاعدة بيانات المرشحين'],
            ['en' => 'Advanced Search', 'ar' => 'البحث المتقدم'],
            ['en' => 'Talent Pools', 'ar' => 'مجموعات المواهب'],
            ['en' => 'Job Posting', 'ar' => 'نشر الوظائف'],
            ['en' => 'Company Branding', 'ar' => 'العلامة التجارية للشركة'],
            ['en' => 'Recruitment Analytics', 'ar' => 'تحليلات التوظيف'],
            ['en' => 'Team Collaboration', 'ar' => 'التعاون الجماعي'],
            ['en' => 'Interview Management', 'ar' => 'إدارة المقابلات'],
            ['en' => 'Offer Management', 'ar' => 'إدارة العروض'],
            ['en' => 'Onboarding Tools', 'ar' => 'أدوات الإدماج'],
            
            // Security Features
            ['en' => 'Data Encryption', 'ar' => 'تشفير البيانات'],
            ['en' => 'Privacy Controls', 'ar' => 'ضوابط الخصوصية'],
            ['en' => 'Secure Messaging', 'ar' => 'الرسائل الآمنة'],
            ['en' => 'Two-Factor Authentication', 'ar' => 'المصادقة الثنائية'],
            ['en' => 'Audit Logs', 'ar' => 'سجلات التدقيق'],
            
            // Integration Features
            ['en' => 'API Access', 'ar' => 'الوصول إلى واجهة برمجة التطبيقات'],
            ['en' => 'Third-Party Integrations', 'ar' => 'التكامل مع الأطراف الثالثة'],
            ['en' => 'Calendar Integration', 'ar' => 'تكامل التقويم'],
            ['en' => 'Email Integration', 'ar' => 'تكامل البريد الإلكتروني'],
            ['en' => 'Social Media Integration', 'ar' => 'تكامل وسائل التواصل الاجتماعي'],
        ];
    }

    /**
     * Create a job search feature
     */
    public function jobSearch(): static
    {
        $jobSearchFeatures = [
            ['en' => 'Advanced Job Search', 'ar' => 'البحث المتقدم عن الوظائف'],
            ['en' => 'Job Alerts', 'ar' => 'تنبيهات الوظائف'],
            ['en' => 'Saved Jobs', 'ar' => 'الوظائف المحفوظة'],
            ['en' => 'Job Recommendations', 'ar' => 'توصيات الوظائف'],
        ];

        $feature = fake()->randomElement($jobSearchFeatures);
        
        return $this->state(fn (array $attributes) => [
            'name_en' => $feature['en'],
            'name_ar' => $feature['ar'],
        ]);
    }

    /**
     * Create a profile feature
     */
    public function profile(): static
    {
        $profileFeatures = [
            ['en' => 'Professional Profile', 'ar' => 'الملف المهني'],
            ['en' => 'Skills Assessment', 'ar' => 'تقييم المهارات'],
            ['en' => 'Portfolio Showcase', 'ar' => 'عرض المحفظة'],
            ['en' => 'Resume Builder', 'ar' => 'منشئ السيرة الذاتية'],
        ];

        $feature = fake()->randomElement($profileFeatures);
        
        return $this->state(fn (array $attributes) => [
            'name_en' => $feature['en'],
            'name_ar' => $feature['ar'],
        ]);
    }

    /**
     * Create a recruiter feature
     */
    public function recruiter(): static
    {
        $recruiterFeatures = [
            ['en' => 'Candidate Database', 'ar' => 'قاعدة بيانات المرشحين'],
            ['en' => 'Advanced Search', 'ar' => 'البحث المتقدم'],
            ['en' => 'Job Posting', 'ar' => 'نشر الوظائف'],
            ['en' => 'Recruitment Analytics', 'ar' => 'تحليلات التوظيف'],
        ];

        $feature = fake()->randomElement($recruiterFeatures);
        
        return $this->state(fn (array $attributes) => [
            'name_en' => $feature['en'],
            'name_ar' => $feature['ar'],
        ]);
    }

    /**
     * Create a premium feature
     */
    public function premium(): static
    {
        $premiumFeatures = [
            ['en' => 'Priority Support', 'ar' => 'الدعم المميز'],
            ['en' => 'Advanced Filters', 'ar' => 'المرشحات المتقدمة'],
            ['en' => 'Unlimited Applications', 'ar' => 'طلبات غير محدودة'],
            ['en' => 'Featured Profile', 'ar' => 'ملف مميز'],
        ];

        $feature = fake()->randomElement($premiumFeatures);
        
        return $this->state(fn (array $attributes) => [
            'name_en' => $feature['en'],
            'name_ar' => $feature['ar'],
        ]);
    }
}
