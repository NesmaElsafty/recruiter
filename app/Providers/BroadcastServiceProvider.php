<?php

namespace App\Providers;

use Illuminate\Support\Facades\Broadcast;
use Illuminate\Support\ServiceProvider;

class BroadcastServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        // لو هتوثّق عبر توكن/Sanctum للـ API:
        Broadcast::routes(['middleware' => ['auth:sanctum']]);
        // لو سيشن/كوكيز على نفس الدومين استخدم:
        // Broadcast::routes();

        if (file_exists(base_path('routes/channels.php'))) {
            require base_path('routes/channels.php');
        }
    }
}
