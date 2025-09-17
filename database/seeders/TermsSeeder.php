<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Term;

class TermsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Clear existing terms records
        // Term::truncate();

        $termsData = [
            // Terms and Conditions for Candidates
            [
                'title_en' => 'Terms and Conditions for Candidates',
                'title_ar' => 'الشروط والأحكام للمتقدمين',
                'description_en' => 'By using our platform, candidates agree to provide accurate information, maintain professional conduct, and respect the privacy of recruiters. Candidates must not share false information or engage in fraudulent activities.',
                'description_ar' => 'باستخدام منصتنا، يوافق المتقدمون على تقديم معلومات دقيقة والحفاظ على السلوك المهني واحترام خصوصية أصحاب العمل. يجب على المتقدمين عدم مشاركة معلومات خاطئة أو الانخراط في أنشطة احتيالية.',
                'type' => 'terms',
                'user_type' => 'candidate',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // Terms and Conditions for Recruiters
            [
                'title_en' => 'Terms and Conditions for Recruiters',
                'title_ar' => 'الشروط والأحكام لأصحاب العمل',
                'description_en' => 'Recruiters must provide accurate job postings, treat candidates with respect, and comply with employment laws. Any discriminatory practices or false job advertisements are strictly prohibited.',
                'description_ar' => 'يجب على أصحاب العمل تقديم إعلانات وظائف دقيقة ومعاملة المتقدمين باحترام والامتثال لقوانين العمل. أي ممارسات تمييزية أو إعلانات وظائف خاطئة محظورة تماماً.',
                'type' => 'terms',
                'user_type' => 'recruiter',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // Privacy Policy for Candidates
            [
                'title_en' => 'Privacy Policy for Candidates',
                'title_ar' => 'سياسة الخصوصية للمتقدمين',
                'description_en' => 'We collect and process your personal data to provide job matching services. Your information is protected and will not be shared with third parties without your consent. You have the right to access, modify, or delete your data.',
                'description_ar' => 'نقوم بجمع ومعالجة بياناتك الشخصية لتقديم خدمات مطابقة الوظائف. معلوماتك محمية ولن يتم مشاركتها مع أطراف ثالثة دون موافقتك. لديك الحق في الوصول إلى بياناتك أو تعديلها أو حذفها.',
                'type' => 'privacy_policy',
                'user_type' => 'candidate',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // Privacy Policy for Recruiters
            [
                'title_en' => 'Privacy Policy for Recruiters',
                'title_ar' => 'سياسة الخصوصية لأصحاب العمل',
                'description_en' => 'We collect company information and job posting data to facilitate recruitment. Your business data is secure and used only for platform services. We implement strict security measures to protect your information.',
                'description_ar' => 'نقوم بجمع معلومات الشركة وبيانات إعلانات الوظائف لتسهيل التوظيف. بيانات عملك آمنة وتستخدم فقط لخدمات المنصة. نطبق إجراءات أمنية صارمة لحماية معلوماتك.',
                'type' => 'privacy_policy',
                'user_type' => 'recruiter',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // General Terms and Conditions
            [
                'title_en' => 'General Terms and Conditions',
                'title_ar' => 'الشروط والأحكام العامة',
                'description_en' => 'These terms govern the use of our recruitment platform. Users must comply with all applicable laws and regulations. We reserve the right to modify these terms and will notify users of any changes.',
                'description_ar' => 'تحكم هذه الشروط استخدام منصة التوظيف الخاصة بنا. يجب على المستخدمين الامتثال لجميع القوانين واللوائح المعمول بها. نحتفظ بالحق في تعديل هذه الشروط وسنخطر المستخدمين بأي تغييرات.',
                'type' => 'terms',
                'user_type' => null,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // General Privacy Policy
            [
                'title_en' => 'General Privacy Policy',
                'title_ar' => 'سياسة الخصوصية العامة',
                'description_en' => 'This privacy policy explains how we collect, use, and protect your personal information. We are committed to maintaining the privacy and security of all user data in accordance with applicable privacy laws.',
                'description_ar' => 'توضح سياسة الخصوصية هذه كيفية جمع واستخدام وحماية معلوماتك الشخصية. نحن ملتزمون بالحفاظ على خصوصية وأمان جميع بيانات المستخدمين وفقاً لقوانين الخصوصية المعمول بها.',
                'type' => 'privacy_policy',
                'user_type' => null,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // FAQ for Candidates
            [
                'title_en' => 'Frequently Asked Questions - Candidates',
                'title_ar' => 'الأسئلة الشائعة - المتقدمين',
                'description_en' => 'Q: How do I create a profile? A: Click on "Sign Up" and fill in your personal and professional information. Q: How do I apply for jobs? A: Browse available positions and click "Apply" on jobs that match your skills. Q: Can I edit my profile? A: Yes, you can update your profile anytime from your dashboard.',
                'description_ar' => 'س: كيف يمكنني إنشاء ملف شخصي؟ ج: انقر على "التسجيل" واملأ معلوماتك الشخصية والمهنية. س: كيف يمكنني التقديم للوظائف؟ ج: تصفح الوظائف المتاحة وانقر على "تقدم" للوظائف التي تناسب مهاراتك. س: هل يمكنني تعديل ملفي الشخصي؟ ج: نعم، يمكنك تحديث ملفك الشخصي في أي وقت من لوحة التحكم.',
                'type' => 'faq',
                'user_type' => 'candidate',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // FAQ for Recruiters
            [
                'title_en' => 'Frequently Asked Questions - Recruiters',
                'title_ar' => 'الأسئلة الشائعة - أصحاب العمل',
                'description_en' => 'Q: How do I post a job? A: Go to your dashboard and click "Post New Job" to create a job listing. Q: How do I review applications? A: Check your dashboard for new applications and review candidate profiles. Q: Can I contact candidates directly? A: Yes, you can message candidates through our platform messaging system.',
                'description_ar' => 'س: كيف يمكنني نشر وظيفة؟ ج: اذهب إلى لوحة التحكم وانقر على "نشر وظيفة جديدة" لإنشاء إعلان وظيفة. س: كيف يمكنني مراجعة الطلبات؟ ج: تحقق من لوحة التحكم للطلبات الجديدة وراجع ملفات المتقدمين. س: هل يمكنني التواصل مع المتقدمين مباشرة؟ ج: نعم، يمكنك مراسلة المتقدمين من خلال نظام المراسلة في منصتنا.',
                'type' => 'faq',
                'user_type' => 'recruiter',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // General FAQ
            [
                'title_en' => 'General Frequently Asked Questions',
                'title_ar' => 'الأسئلة الشائعة العامة',
                'description_en' => 'Q: Is the platform free to use? A: Basic features are free for both candidates and recruiters. Premium features are available with subscription plans. Q: How do I contact support? A: You can reach our support team through the contact form or email us directly. Q: Is my data secure? A: Yes, we use industry-standard encryption and security measures to protect your information.',
                'description_ar' => 'س: هل المنصة مجانية للاستخدام؟ ج: الميزات الأساسية مجانية لكل من المتقدمين وأصحاب العمل. الميزات المميزة متاحة مع خطط الاشتراك. س: كيف يمكنني التواصل مع الدعم؟ ج: يمكنك الوصول إلى فريق الدعم من خلال نموذج الاتصال أو مراسلتنا مباشرة. س: هل بياناتي آمنة؟ ج: نعم، نستخدم التشفير وإجراءات الأمان المعيارية في الصناعة لحماية معلوماتك.',
                'type' => 'faq',
                'user_type' => null,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            // Terms for Recruiters (Inactive example)
            [
                'title_en' => 'Additional Terms for Recruiters',
                'title_ar' => 'شروط إضافية لأصحاب العمل',
                'description_en' => 'Additional terms and conditions for recruiters regarding premium features and advanced platform usage. These terms outline extended responsibilities for recruiters using advanced features.',
                'description_ar' => 'شروط وأحكام إضافية لأصحاب العمل فيما يتعلق بالميزات المميزة والاستخدام المتقدم للمنصة. تحدد هذه الشروط المسؤوليات الموسعة لأصحاب العمل الذين يستخدمون الميزات المتقدمة.',
                'type' => 'terms',
                'user_type' => 'recruiter',
                'is_active' => false,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];

        foreach ($termsData as $term) {
            Term::create($term);
        }

        // $this->command->info('Terms seeder completed successfully!');
    }
}
