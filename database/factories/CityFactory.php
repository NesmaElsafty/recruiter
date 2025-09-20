<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\City>
 */
class CityFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $cityName = fake()->city();
        
        return [
            'name_en' => $cityName,
            'name_ar' => $this->generateArabicCityName($cityName),
        ];
    }

    /**
     * Generate Arabic city name based on English name
     */
    private function generateArabicCityName(string $englishName): string
    {
        $arabicCities = [
            'Cairo' => 'القاهرة',
            'Alexandria' => 'الإسكندرية',
            'Giza' => 'الجيزة',
            'Luxor' => 'الأقصر',
            'Aswan' => 'أسوان',
            'Sharm El Sheikh' => 'شرم الشيخ',
            'Hurghada' => 'الغردقة',
            'Dahab' => 'دهب',
            'Marsa Alam' => 'مرسى علم',
            'Taba' => 'طابا',
            'Siwa' => 'سيوة',
            'Bahariya' => 'البحرية',
            'Dakhla' => 'الداخلة',
            'Kharga' => 'الخارجة',
            'Fayoum' => 'الفيوم',
            'Minya' => 'المنيا',
            'Asyut' => 'أسيوط',
            'Sohag' => 'سوهاج',
            'Qena' => 'قنا',
            'Red Sea' => 'البحر الأحمر',
            'Sinai' => 'سيناء',
            'Port Said' => 'بورسعيد',
            'Suez' => 'السويس',
            'Ismailia' => 'الإسماعيلية',
            'Damietta' => 'دمياط',
            'Kafr El Sheikh' => 'كفر الشيخ',
            'Dakahlia' => 'الدقهلية',
            'Sharqia' => 'الشرقية',
            'Qalyubia' => 'القليوبية',
            'Monufia' => 'المنوفية',
            'Beheira' => 'البحيرة',
            'Gharbia' => 'الغربية',
            'Matrouh' => 'مطروح',
            'New Valley' => 'الوادي الجديد',
            'North Sinai' => 'شمال سيناء',
            'South Sinai' => 'جنوب سيناء',
        ];

        return $arabicCities[$englishName] ?? fake()->randomElement([
            'القاهرة', 'الإسكندرية', 'الجيزة', 'الأقصر', 'أسوان', 
            'شرم الشيخ', 'الغردقة', 'دهب', 'مرسى علم', 'طابا'
        ]);
    }

    /**
     * Create a specific city
     */
    public function cairo(): static
    {
        return $this->state(fn (array $attributes) => [
            'name_en' => 'Cairo',
            'name_ar' => 'القاهرة',
        ]);
    }

    /**
     * Create Alexandria
     */
    public function alexandria(): static
    {
        return $this->state(fn (array $attributes) => [
            'name_en' => 'Alexandria',
            'name_ar' => 'الإسكندرية',
        ]);
    }

    /**
     * Create Giza
     */
    public function giza(): static
    {
        return $this->state(fn (array $attributes) => [
            'name_en' => 'Giza',
            'name_ar' => 'الجيزة',
        ]);
    }
}
