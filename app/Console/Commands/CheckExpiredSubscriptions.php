<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Subscription;

class CheckExpiredSubscriptions extends Command
{
    protected $signature = 'subscriptions:check-expired';
    protected $description = 'Mark subscriptions as expired if end_date has passed';

    public function handle(): int
    {
        $now = now()->endOfDay();
        $affected = Subscription::whereNotNull('end_date')
            ->whereDate('end_date', '<', $now)
            ->where(function ($q) {
                $q->whereNull('status')->orWhere('status', '!=', 'expired');
            })
            ->update(['status' => 'expired']);

        $this->info("Expired subscriptions updated: {$affected}");
        return self::SUCCESS;
    }
}


