<?php

namespace App\Console\Commands;

use App\Models\City;
use App\Models\Major;
use App\Models\Plan;
use App\Models\Feature;
use App\Models\Feedback;
use App\Models\ContactUs;
use App\Models\SocialMedia;
use App\Models\Term;
use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class GenerateDummyData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'dummy:generate 
                            {--cities=20 : Number of cities to generate}
                            {--majors=30 : Number of majors to generate}
                            {--plans=15 : Number of plans to generate}
                            {--features=25 : Number of features to generate}
                            {--users=100 : Number of users to generate}
                            {--feedbacks=200 : Number of feedbacks to generate}
                            {--contact-us=5 : Number of contact us records to generate}
                            {--social-media=10 : Number of social media records to generate}
                            {--terms=12 : Number of terms to generate}
                            {--clear : Clear existing data before generating new data}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Generate dummy data for the recruitment platform';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('🚀 Starting dummy data generation...');

        // Clear existing data if requested
        if ($this->option('clear')) {
            $this->clearExistingData();
        }

        // Generate data in order (respecting foreign key constraints)
        $this->generateCities();
        $this->generateMajors();
        $this->generatePlans();
        $this->generateFeatures();
        $this->generateUsers();
        $this->generateFeedbacks();
        $this->generateContactUs();
        $this->generateSocialMedia();
        $this->generateTerms();

        $this->info('✅ Dummy data generation completed successfully!');
    }

    /**
     * Clear existing data
     */
    private function clearExistingData(): void
    {
        $this->info('🗑️  Clearing existing data...');

        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        
        // Clear in reverse order to respect foreign key constraints
        Term::truncate();
        SocialMedia::truncate();
        ContactUs::truncate();
        Feedback::truncate();
        User::truncate();
        Feature::truncate();
        Plan::truncate();
        Major::truncate();
        City::truncate();
        
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        $this->info('✅ Existing data cleared.');
    }

    /**
     * Generate cities
     */
    private function generateCities(): void
    {
        $count = (int) $this->option('cities');
        $this->info("🏙️  Generating {$count} cities...");

        City::factory($count)->create();
        
        $this->info("✅ Generated {$count} cities.");
    }

    /**
     * Generate majors
     */
    private function generateMajors(): void
    {
        $count = (int) $this->option('majors');
        $this->info("🎓 Generating {$count} majors...");

        Major::factory($count)->create();
        
        $this->info("✅ Generated {$count} majors.");
    }

    /**
     * Generate plans
     */
    private function generatePlans(): void
    {
        $count = (int) $this->option('plans');
        $this->info("📋 Generating {$count} plans...");

        // Generate different types of plans
        $candidatePlans = (int) ($count * 0.6); // 60% candidate plans
        $recruiterPlans = (int) ($count * 0.4); // 40% recruiter plans

        Plan::factory($candidatePlans)->candidate()->create();
        Plan::factory($recruiterPlans)->recruiter()->create();
        
        $this->info("✅ Generated {$count} plans ({$candidatePlans} candidate, {$recruiterPlans} recruiter).");
    }

    /**
     * Generate features
     */
    private function generateFeatures(): void
    {
        $count = (int) $this->option('features');
        $this->info("⚡ Generating {$count} features...");

        Feature::factory($count)->create();
        
        $this->info("✅ Generated {$count} features.");
    }

    /**
     * Generate users
     */
    private function generateUsers(): void
    {
        $count = (int) $this->option('users');
        $this->info("👥 Generating {$count} users...");

        // Generate different types of users
        $candidates = (int) ($count * 0.7); // 70% candidates
        $recruiters = (int) ($count * 0.25); // 25% recruiters
        $admins = (int) ($count * 0.05); // 5% admins

        User::factory($candidates)->candidate()->create();
        User::factory($recruiters)->recruiter()->create();
        User::factory($admins)->admin()->create();
        
        $this->info("✅ Generated {$count} users ({$candidates} candidates, {$recruiters} recruiters, {$admins} admins).");
    }

    /**
     * Generate feedbacks
     */
    private function generateFeedbacks(): void
    {
        $count = (int) $this->option('feedbacks');
        $this->info("💬 Generating {$count} feedbacks...");

        // Generate different types of feedback
        $positive = (int) ($count * 0.6); // 60% positive
        $neutral = (int) ($count * 0.25); // 25% neutral
        $negative = (int) ($count * 0.15); // 15% negative

        Feedback::factory($positive)->positive()->create();
        Feedback::factory($neutral)->neutral()->create();
        Feedback::factory($negative)->negative()->create();
        
        $this->info("✅ Generated {$count} feedbacks ({$positive} positive, {$neutral} neutral, {$negative} negative).");
    }

    /**
     * Generate contact us records
     */
    private function generateContactUs(): void
    {
        $count = (int) $this->option('contact-us');
        $this->info("📞 Generating {$count} contact us records...");

        ContactUs::factory($count)->create();
        
        $this->info("✅ Generated {$count} contact us records.");
    }

    /**
     * Generate social media records
     */
    private function generateSocialMedia(): void
    {
        $count = (int) $this->option('social-media');
        $this->info("📱 Generating {$count} social media records...");

        SocialMedia::factory($count)->create();
        
        $this->info("✅ Generated {$count} social media records.");
    }

    /**
     * Generate terms
     */
    private function generateTerms(): void
    {
        $count = (int) $this->option('terms');
        $this->info("📄 Generating {$count} terms...");

        // Generate different types of terms
        $privacy = (int) ($count * 0.4); // 40% privacy
        $terms = (int) ($count * 0.4); // 40% terms
        $faq = (int) ($count * 0.2); // 20% FAQ

        Term::factory($privacy)->privacy()->create();
        Term::factory($terms)->terms()->create();
        Term::factory($faq)->faq()->create();
        
        $this->info("✅ Generated {$count} terms ({$privacy} privacy, {$terms} terms, {$faq} FAQ).");
    }
}