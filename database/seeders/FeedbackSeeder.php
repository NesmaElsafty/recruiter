<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Feedback;
use App\Models\User;
use Carbon\Carbon;

class FeedbackSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Get all users for feedback relationships
        $users = User::pluck('id')->toArray();
        
        if (empty($users)) {
            $this->command->warn('No users found. Please run UserSeeder first.');
            return;
        }

        $feedbackData = [
            // Positive feedback examples (rating >= 3 = good)
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'منصة ممتازة! وجدت وظيفة أحلامي خلال أسبوع واحد.',
                'rating' => '5',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'واجهة مستخدم رائعة وسهلة التنقل. أنصح بها بشدة!',
                'rating' => '5',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'خوارزمية المطابقة دقيقة جداً. وجدت فرصاً مناسبة بسرعة.',
                'rating' => '4',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'خدمة العملاء سريعة الاستجابة ومفيدة. تجربة رائعة بشكل عام.',
                'rating' => '5',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'أحب التطبيق المحمول! مريح جداً للبحث عن الوظائف أثناء التنقل.',
                'rating' => '4',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'توصيات الوظائف دقيقة تماماً. وفرت علي الكثير من الوقت.',
                'rating' => '5',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'منصة مهنية مع إعلانات وظائف عالية الجودة. راضٍ جداً.',
                'rating' => '4',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'عملية التقديم سهلة والردود من أصحاب العمل سريعة.',
                'rating' => '5',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'تنوع رائع في فرص العمل في مجال تخصصي.',
                'rating' => '4',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'إعداد الملف الشخصي كان مباشراً وشاملاً.',
                'rating' => '4',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            // Mixed feedback examples (rating >= 3 = good)
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'منصة جيدة لكن يمكن تحسين فلاتر الوظائف.',
                'rating' => '3',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'تجربة مقبولة، لكن البحث يمكن أن يكون أكثر دقة.',
                'rating' => '3',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'المنصة مقبولة، لكن تحتاج نظام إشعارات أفضل.',
                'rating' => '3',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            // Bad feedback examples (rating < 3 = bad)
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'تجربة مستخدم سيئة. الواجهة مربكة جداً.',
                'rating' => '2',
                'rating_type' => 'bad',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'خيارات وظائف محدودة في منطقتي، الواجهة تحتاج تحسين.',
                'rating' => '2',
                'rating_type' => 'bad',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => 'أوقات تحميل بطيئة جداً وأخطاء متكررة.',
                'rating' => '1',
                'rating_type' => 'bad',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            // Some feedback without comments (rating only)
            [
                'user_id' => $users[array_rand($users)],
                'comment' => null,
                'rating' => '5',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => null,
                'rating' => '4',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => $users[array_rand($users)],
                'comment' => null,
                'rating' => '2',
                'rating_type' => 'bad',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            // Some feedback without user_id (anonymous feedback)
            [
                'user_id' => null,
                'comment' => 'منصة رائعة للباحثين عن العمل!',
                'rating' => '5',
                'rating_type' => 'good',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
            [
                'user_id' => null,
                'comment' => 'يمكن تحسين تجربة التطبيق المحمول.',
                'rating' => '1',
                'rating_type' => 'bad',
                'is_active' => $this->getRandomBoolean(),
                'created_at' => $this->getRandomDate(),
                'updated_at' => now(),
            ],
        ];

        foreach ($feedbackData as $feedback) {
            Feedback::create($feedback);
        }

        $this->command->info('Feedback seeder completed successfully!');
    }

    /**
     * Generate a random date between today and 3 months ago
     */
    private function getRandomDate(): Carbon
    {
        $startDate = Carbon::now()->subMonths(3);
        $endDate = Carbon::now();
        
        $randomTimestamp = mt_rand($startDate->timestamp, $endDate->timestamp);
        
        return Carbon::createFromTimestamp($randomTimestamp);
    }

    /**
     * Generate a random boolean value
     */
    private function getRandomBoolean(): bool
    {
        return (bool) mt_rand(0, 1);
    }
}
