<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Plan;
use App\Models\Feature;
use Illuminate\Support\Facades\DB;

class FeaturePlanSeeder extends Seeder
{
    public function run(): void
    {
        // Build a deterministic mapping of features to plans
        $plans = Plan::all()->keyBy('name_en');
        $features = Feature::all()->keyBy('name_en');

        if ($plans->isEmpty() || $features->isEmpty()) {
            $this->command?->warn('Plans or Features are empty. Run FeaturesSeeder and PlansSeeder first.');
            return;
        }

        $attach = function(Plan $plan, array $featureNames) use ($features) {
            $featureIds = collect($featureNames)
                ->map(fn($name) => $features[$name]->id ?? null)
                ->filter()
                ->values()
                ->all();
            if (!empty($featureIds)) {
                // Pivot table name is feature_plan per migration
                DB::table('feature_plan')->where('plan_id', $plan->id)->delete();
                $rows = array_map(function ($fid) use ($plan) {
                    return [
                        'feature_id' => $fid,
                        'plan_id' => $plan->id,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ];
                }, $featureIds);
                DB::table('feature_plan')->insert($rows);
            }
        };

        // Assign features
        if ($plans->has('Basic')) {
            $attach($plans['Basic'], [
                'Unlimited Job Posts',
                'Candidate Messaging',
            ]);
        }

        if ($plans->has('Pro')) {
            $attach($plans['Pro'], [
                'Unlimited Job Posts',
                'Highlighted Listings',
                'Candidate Messaging',
                'Team Members',
                'Advanced Analytics',
            ]);
        }

        if ($plans->has('Enterprise')) {
            $attach($plans['Enterprise'], [
                'Unlimited Job Posts',
                'Highlighted Listings',
                'Candidate Messaging',
                'Team Members',
                'Advanced Analytics',
                'Priority Support',
                'API Access',
            ]);
        }
    }
}


