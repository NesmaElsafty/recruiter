<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Database\Seeders\RetrievalSeeder;

class SeedRetrievals extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'seed:retrievals';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Seed retrieval data for candidate users and subscriptions';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('Starting retrieval seeding...');
        
        $seeder = new RetrievalSeeder();
        $seeder->setCommand($this);
        $seeder->run();
        
        $this->info('Retrieval seeding completed!');
    }
}
