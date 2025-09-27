<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Experience;
use Carbon\Carbon;
use App\Models\User;

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        //
    }

    public function boot(): void
    {
        //
        $experiences = Experience::all();
        // $experiences = Experience::whereNull('end_date')->where('is_current', true)->get();
        foreach ($experiences as $experience) {
            $experience->total_period = Carbon::parse($experience->start_date)->diffInMonths(Carbon::now());
            $experience->total_period = $experience->total_period / 12;
            $experience->is_current = true;
            $experience->save();

            $user = User::find($experience->user_id);
            $user->total_period = $user->totalPeriod();
            $user->save();
        }
    }
}
