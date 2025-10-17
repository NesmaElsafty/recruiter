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
            // convert start_date and end_date to date
            $experience->start_date = Carbon::parse($experience->start_date);
            $experience->end_date = Carbon::parse($experience->end_date);
            $experience->total_period = $experience->start_date->diffInMonths($experience->end_date);
            $experience->total_period = $experience->total_period / 12;
            $experience->save();

            $user = User::find($experience->user_id);
            $user->total_period = $user->totalPeriod();
            $user->save();
        }
    }
}
