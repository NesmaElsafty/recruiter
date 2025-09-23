<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        $this->call([
            CitySeeder::class,
            MajorSeeder::class,
            UserSeeder::class,
            FeedbackSeeder::class,
            ContactUsSeeder::class,
            SocialMediaSeeder::class,
            TermsSeeder::class,
            FeaturesSeeder::class,
            PlansSeeder::class,
            FeaturePlanSeeder::class,
            DummyDataSeeder::class,
            NotificationSeeder::class,
            MessageSeeder::class,
            InterviewSeeder::class,
            SubscriptionSeeder::class,
            RetrievalSeeder::class,
        ]);
    }
}
