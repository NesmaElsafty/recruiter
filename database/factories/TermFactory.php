<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Term>
 */
class TermFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $termType = fake()->randomElement(['terms', 'privacy_policy', 'faq']);
        $userType = fake()->randomElement(['candidate', 'recruiter']);
        
        return [
            'title_en' => $this->generateTitle($termType, 'en'),
            'title_ar' => $this->generateTitle($termType, 'ar'),
            'description_en' => $this->generateDescription($termType, 'en'),
            'description_ar' => $this->generateDescription($termType, 'ar'),
            'type' => $termType,
            'user_type' => $userType,
            'is_active' => fake()->boolean(85), // 85% chance of being active
        ];
    }

    /**
     * Generate title based on type and language
     */
    private function generateTitle(string $type, string $language): string
    {
        $titles = [
            'terms' => [
                'en' => 'Terms of Service',
                'ar' => 'شروط الخدمة',
            ],
            'privacy_policy' => [
                'en' => 'Privacy Policy',
                'ar' => 'سياسة الخصوصية',
            ],
            'faq' => [
                'en' => 'Frequently Asked Questions',
                'ar' => 'الأسئلة الشائعة',
            ],
        ];

        return $titles[$type][$language] ?? 'Default Title';
    }

    /**
     * Generate description based on type and language
     */
    private function generateDescription(string $type, string $language): string
    {
        $descriptions = [
            'terms' => [
                'en' => 'These Terms of Service govern your use of our recruitment platform. By using our services, you agree to be bound by these terms and conditions. Please read them carefully before using our platform.',
                'ar' => 'تحكم شروط الخدمة هذه استخدامك لمنصة التوظيف الخاصة بنا. باستخدام خدماتنا، فإنك توافق على الالتزام بهذه الشروط والأحكام. يرجى قراءتها بعناية قبل استخدام منصتنا.',
            ],
            'privacy_policy' => [
                'en' => 'This Privacy Policy describes how we collect, use, and protect your personal information when you use our recruitment platform. We are committed to protecting your privacy and ensuring the security of your data.',
                'ar' => 'تصف سياسة الخصوصية هذه كيفية جمعنا واستخدامنا وحماية معلوماتك الشخصية عند استخدام منصة التوظيف الخاصة بنا. نحن ملتزمون بحماية خصوصيتك وضمان أمان بياناتك.',
            ],
            'faq' => [
                'en' => 'Find answers to the most frequently asked questions about our recruitment platform. If you cannot find the answer you are looking for, please contact our support team.',
                'ar' => 'ابحث عن إجابات للأسئلة الأكثر شيوعاً حول منصة التوظيف الخاصة بنا. إذا لم تتمكن من العثور على الإجابة التي تبحث عنها، يرجى الاتصال بفريق الدعم.',
            ],
        ];

        return $descriptions[$type][$language] ?? 'Default description';
    }

    /**
     * Create privacy policy
     */
    public function privacy(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'privacy_policy',
            'title_en' => 'Privacy Policy',
            'title_ar' => 'سياسة الخصوصية',
            'description_en' => 'This Privacy Policy describes how we collect, use, and protect your personal information when you use our recruitment platform. We are committed to protecting your privacy and ensuring the security of your data.',
            'description_ar' => 'تصف سياسة الخصوصية هذه كيفية جمعنا واستخدامنا وحماية معلوماتك الشخصية عند استخدام منصة التوظيف الخاصة بنا. نحن ملتزمون بحماية خصوصيتك وضمان أمان بياناتك.',
        ]);
    }

    /**
     * Create terms of service
     */
    public function terms(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'terms',
            'title_en' => 'Terms of Service',
            'title_ar' => 'شروط الخدمة',
            'description_en' => 'These Terms of Service govern your use of our recruitment platform. By using our services, you agree to be bound by these terms and conditions. Please read them carefully before using our platform.',
            'description_ar' => 'تحكم شروط الخدمة هذه استخدامك لمنصة التوظيف الخاصة بنا. باستخدام خدماتنا، فإنك توافق على الالتزام بهذه الشروط والأحكام. يرجى قراءتها بعناية قبل استخدام منصتنا.',
        ]);
    }

    /**
     * Create FAQ
     */
    public function faq(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'faq',
            'title_en' => 'Frequently Asked Questions',
            'title_ar' => 'الأسئلة الشائعة',
            'description_en' => 'Find answers to the most frequently asked questions about our recruitment platform. If you cannot find the answer you are looking for, please contact our support team.',
            'description_ar' => 'ابحث عن إجابات للأسئلة الأكثر شيوعاً حول منصة التوظيف الخاصة بنا. إذا لم تتمكن من العثور على الإجابة التي تبحث عنها، يرجى الاتصال بفريق الدعم.',
        ]);
    }

    /**
     * Create candidate-specific terms
     */
    public function candidate(): static
    {
        return $this->state(fn (array $attributes) => [
            'user_type' => 'candidate',
        ]);
    }

    /**
     * Create recruiter-specific terms
     */
    public function recruiter(): static
    {
        return $this->state(fn (array $attributes) => [
            'user_type' => 'recruiter',
        ]);
    }

    /**
     * Create admin-specific terms
     */
    public function admin(): static
    {
        return $this->state(fn (array $attributes) => [
            'user_type' => 'admin',
        ]);
    }

    /**
     * Create terms for all user types
     */
    public function allUsers(): static
    {
        return $this->state(fn (array $attributes) => [
            'user_type' => 'all',
        ]);
    }

    /**
     * Create active terms
     */
    public function active(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => true,
        ]);
    }

    /**
     * Create inactive terms
     */
    public function inactive(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => false,
        ]);
    }
}
