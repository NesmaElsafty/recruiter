<?php

namespace Database\Seeders;

use App\Models\City;
use App\Models\Major;
use App\Models\Plan;
use App\Models\Feature;
use App\Models\Feedback;
use App\Models\ContactUs;
use App\Models\SocialMedia;
use App\Models\Term;
use App\Models\User;
use Illuminate\Database\Seeder;

class DummyDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $this->command->info('🚀 Starting dummy data seeding...');

        // Generate cities first (required for users)
        // $this->command->info('🏙️  Creating cities...');
        City::factory(10)->create();

        // Generate majors (required for candidates)
        // $this->command->info('🎓 Creating majors...');
        Major::factory(15)->create();

        // Generate plans
        // $this->command->info('📋 Creating plans...');
        Plan::factory(5)->candidate()->create();
        Plan::factory(3)->recruiter()->create();

        // Generate features
        // $this->command->info('⚡ Creating features...');
        Feature::factory(20)->create();

        // Generate users
        // $this->command->info('👥 Creating users...');
        User::factory(20)->candidate()->create();
        User::factory(10)->recruiter()->create();
        User::factory(2)->admin()->create();

        // Generate feedbacks
        // $this->command->info('💬 Creating feedbacks...');
        Feedback::factory(50)->positive()->create();
        Feedback::factory(20)->neutral()->create();
        Feedback::factory(10)->negative()->create();

        // Generate contact us
        // $this->command->info('📞 Creating contact us records...');
        ContactUs::factory(3)->create();

        // Generate social media
        // $this->command->info('📱 Creating social media records...');
        SocialMedia::factory(8)->create();

        // Generate terms
        // $this->command->info('📄 Creating terms...');
        Term::factory(2)->privacy()->create();
        Term::factory(2)->terms()->create();
        Term::factory(1)->faq()->create();

        // $this->command->info('✅ Dummy data seeding completed!');
    }
}
