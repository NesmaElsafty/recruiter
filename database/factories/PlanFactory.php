<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Plan>
 */
class PlanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $planType = fake()->randomElement(['candidate', 'recruiter']);
        $durationType = fake()->randomElement(['monthly', 'yearly']);
        $duration = $durationType === 'monthly' ? fake()->numberBetween(1, 12) : fake()->numberBetween(1, 3);
        
        $planData = $this->getPlanData($planType);
        
        return [
            'name_en' => $planData['name_en'],
            'name_ar' => $planData['name_ar'],
            'description_en' => $planData['description_en'],
            'description_ar' => $planData['description_ar'],
            'price' => fake()->randomFloat(2, 10, 500),
            'duration' => $duration,
            'duration_type' => $durationType,
            'type' => $planType,
            'is_active' => fake()->boolean(80), // 80% chance of being active
        ];
    }

    /**
     * Get plan data based on type
     */
    private function getPlanData(string $type): array
    {
        if ($type === 'candidate') {
            return fake()->randomElement([
                [
                    'name_en' => 'Basic Candidate',
                    'name_ar' => 'المرشح الأساسي',
                    'description_en' => 'Perfect for job seekers starting their career journey',
                    'description_ar' => 'مثالي للباحثين عن عمل في بداية رحلتهم المهنية',
                ],
                [
                    'name_en' => 'Professional Candidate',
                    'name_ar' => 'المرشح المحترف',
                    'description_en' => 'Advanced features for experienced professionals',
                    'description_ar' => 'ميزات متقدمة للمحترفين ذوي الخبرة',
                ],
                [
                    'name_en' => 'Premium Candidate',
                    'name_ar' => 'المرشح المميز',
                    'description_en' => 'Complete package with all premium features',
                    'description_ar' => 'حزمة كاملة مع جميع الميزات المميزة',
                ],
                [
                    'name_en' => 'Student Plan',
                    'name_ar' => 'خطة الطلاب',
                    'description_en' => 'Special pricing for students and fresh graduates',
                    'description_ar' => 'أسعار خاصة للطلاب والخريجين الجدد',
                ],
            ]);
        } else {
            return fake()->randomElement([
                [
                    'name_en' => 'Starter Recruiter',
                    'name_ar' => 'المجند المبتدئ',
                    'description_en' => 'Essential tools for small recruitment agencies',
                    'description_ar' => 'أدوات أساسية لوكالات التوظيف الصغيرة',
                ],
                [
                    'name_en' => 'Professional Recruiter',
                    'name_ar' => 'المجند المحترف',
                    'description_en' => 'Advanced recruitment tools for growing companies',
                    'description_ar' => 'أدوات توظيف متقدمة للشركات النامية',
                ],
                [
                    'name_en' => 'Enterprise Recruiter',
                    'name_ar' => 'المجند المؤسسي',
                    'description_en' => 'Complete recruitment solution for large organizations',
                    'description_ar' => 'حل توظيف كامل للمؤسسات الكبيرة',
                ],
                [
                    'name_en' => 'Agency Plan',
                    'name_ar' => 'خطة الوكالة',
                    'description_en' => 'Specialized features for recruitment agencies',
                    'description_ar' => 'ميزات متخصصة لوكالات التوظيف',
                ],
            ]);
        }
    }

    /**
     * Create a candidate plan
     */
    public function candidate(): static
    {
        return $this->state(function (array $attributes) {
            $planData = $this->getPlanData('candidate');
            return array_merge($attributes, [
                'type' => 'candidate',
                'name_en' => $planData['name_en'],
                'name_ar' => $planData['name_ar'],
                'description_en' => $planData['description_en'],
                'description_ar' => $planData['description_ar'],
            ]);
        });
    }

    /**
     * Create a recruiter plan
     */
    public function recruiter(): static
    {
        return $this->state(function (array $attributes) {
            $planData = $this->getPlanData('recruiter');
            return array_merge($attributes, [
                'type' => 'recruiter',
                'name_en' => $planData['name_en'],
                'name_ar' => $planData['name_ar'],
                'description_en' => $planData['description_en'],
                'description_ar' => $planData['description_ar'],
            ]);
        });
    }

    /**
     * Create a monthly plan
     */
    public function monthly(): static
    {
        return $this->state(fn (array $attributes) => [
            'duration_type' => 'monthly',
            'duration' => fake()->numberBetween(1, 12),
        ]);
    }

    /**
     * Create a yearly plan
     */
    public function yearly(): static
    {
        return $this->state(fn (array $attributes) => [
            'duration_type' => 'yearly',
            'duration' => fake()->numberBetween(1, 3),
        ]);
    }

    /**
     * Create an active plan
     */
    public function active(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => true,
        ]);
    }

    /**
     * Create an inactive plan
     */
    public function inactive(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => false,
        ]);
    }

    /**
     * Create a free plan
     */
    public function free(): static
    {
        return $this->state(fn (array $attributes) => [
            'price' => 0.00,
        ]);
    }

    /**
     * Create a premium plan
     */
    public function premium(): static
    {
        return $this->state(fn (array $attributes) => [
            'price' => fake()->randomFloat(2, 100, 500),
        ]);
    }
}
