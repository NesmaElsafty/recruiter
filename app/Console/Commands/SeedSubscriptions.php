<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Database\Seeders\SubscriptionSeeder;

class SeedSubscriptions extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'seed:subscriptions';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Seed subscription data for candidate users and plans';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('Starting subscription seeding...');
        
        $seeder = new SubscriptionSeeder();
        $seeder->setCommand($this);
        $seeder->run();
        
        $this->info('Subscription seeding completed!');
    }
}
