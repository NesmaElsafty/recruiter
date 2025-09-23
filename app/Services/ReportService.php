<?php

namespace App\Services;

use App\Models\User;
use App\Models\Interview;
use App\Models\Major;
use App\Models\City;
use App\Models\Subscription;
use App\Helpers\LocalizationHelper;
use Carbon\Carbon;

class ReportService
{
    public function getUserActivityByDateRange(string $from, string $to): array
    {
        $startDate = Carbon::parse($from)->startOfDay();
        $endDate = Carbon::parse($to)->endOfDay();

        if ($startDate->gt($endDate)) {
            [$startDate, $endDate] = [$endDate->copy()->startOfDay(), $startDate->copy()->endOfDay()];
        }

        $labels = [];
        $candidatesValues = [];
        $recruitersValues = [];

        $cursor = $startDate->copy();
        while ($cursor->lte($endDate)) {
            $dayStart = $cursor->copy()->startOfDay();
            $dayEnd = $cursor->copy()->endOfDay();

            $labels[] = $cursor->format('Y-m-d');

            $candidatesValues[] = User::where('type', 'candidate')
                ->whereBetween('created_at', [$dayStart, $dayEnd])
                ->count();

            $recruitersValues[] = User::where('type', 'recruiter')
                ->whereBetween('created_at', [$dayStart, $dayEnd])
                ->count();

            $cursor->addDay();
        }

        $totalCandidates = array_sum($candidatesValues);
        $totalRecruiters = array_sum($recruitersValues);

        // Previous period comparison (same number of days immediately before the range)
        $daysInRange = $startDate->diffInDays($endDate) + 1;
        $previousEnd = $startDate->copy()->subDay()->endOfDay();
        $previousStart = $previousEnd->copy()->subDays($daysInRange - 1)->startOfDay();

        $previousCandidates = User::where('type', 'candidate')
            ->whereBetween('created_at', [$previousStart, $previousEnd])
            ->count();
        $previousRecruiters = User::where('type', 'recruiter')
            ->whereBetween('created_at', [$previousStart, $previousEnd])
            ->count();

        $candidatesChange = $this->calculatePercentageChange($previousCandidates, $totalCandidates);
        $recruitersChange = $this->calculatePercentageChange($previousRecruiters, $totalRecruiters);
        $overallChange = $this->calculatePercentageChange(
            $previousCandidates + $previousRecruiters,
            $totalCandidates + $totalRecruiters
        );

        return [
            'period' => 'custom_range',
            'from' => $startDate->format('Y-m-d'),
            'to' => $endDate->format('Y-m-d'),
            'labels' => $labels,
            'data' => [
                'candidates' => [
                    'label_ar' => 'المرشحين',
                    'label_en' => 'Candidates',
                    'values' => $candidatesValues,
                    'color' => '#22c55e'
                ],
                'recruiters' => [
                    'label_ar' => 'مسؤولي التوظيف',
                    'label_en' => 'Recruiters',
                    'values' => $recruitersValues,
                    'color' => '#06b6d4'
                ]
            ],
            'summary' => [
                'overall_change' => $overallChange
            ]
        ];
    }

    /**
     * Calculate percentage change and direction between previous and current values
     */
    private function calculatePercentageChange(int $previous, int $current): array
    {
        if ($previous === 0) {
            return [
                'percentage' => $current > 0 ? 100 : 0,
                'direction' => $current > 0 ? 'up' : 'neutral'
            ];
        }

        $change = (($current - $previous) / $previous) * 100;
        return [
            'percentage' => round(abs($change), 2),
            'direction' => $change > 0 ? 'up' : ($change < 0 ? 'down' : 'neutral')
        ];
    }

    /**
     * Get interview counts by status over a custom date range, per day.
     */
    public function getInterviewStatusByDateRange(string $from, string $to): array
    {
        $startDate = Carbon::parse($from)->startOfDay();
        $endDate = Carbon::parse($to)->endOfDay();

        if ($startDate->gt($endDate)) {
            [$startDate, $endDate] = [$endDate->copy()->startOfDay(), $startDate->copy()->endOfDay()];
        }

        $labels = [];
        $pendingValues = [];
        $acceptedValues = [];
        $rejectedValues = [];

        $cursor = $startDate->copy();
        while ($cursor->lte($endDate)) {
            $dayStart = $cursor->copy()->startOfDay();
            $dayEnd = $cursor->copy()->endOfDay();

            $labels[] = $cursor->format('Y-m-d');
            $pendingValues[] = Interview::where('status', 'pending')->whereBetween('created_at', [$dayStart, $dayEnd])->count();
            $acceptedValues[] = Interview::where('status', 'approved')->whereBetween('created_at', [$dayStart, $dayEnd])->count();
            $rejectedValues[] = Interview::where('status', 'rejected')->whereBetween('created_at', [$dayStart, $dayEnd])->count();
            $cursor->addDay();
        }

        $totalCurrent = array_sum($pendingValues) + array_sum($acceptedValues) + array_sum($rejectedValues);

        $daysInRange = $startDate->diffInDays($endDate) + 1;
        $previousEnd = $startDate->copy()->subDay()->endOfDay();
        $previousStart = $previousEnd->copy()->subDays($daysInRange - 1)->startOfDay();

        $prevPending = Interview::where('status', 'pending')->whereBetween('created_at', [$previousStart, $previousEnd])->count();
        $prevAccepted = Interview::where('status', 'approved')->whereBetween('created_at', [$previousStart, $previousEnd])->count();
        $prevRejected = Interview::where('status', 'rejected')->whereBetween('created_at', [$previousStart, $previousEnd])->count();

        $overallChange = $this->calculatePercentageChange(
            $prevPending + $prevAccepted + $prevRejected,
            $totalCurrent
        );

        return [
            'period' => 'custom_range',
            'from' => $startDate->format('Y-m-d'),
            'to' => $endDate->format('Y-m-d'),
            'labels' => $labels,
            'data' => [
                'accepted' => [
                    'label_ar' => 'مكتملة',
                    'label_en' => 'Accepted',
                    'values' => $acceptedValues,
                    'color' => '#15803d'
                ],
                'pending' => [
                    'label_ar' => 'قيد الانتظار',
                    'label_en' => 'Pending',
                    'values' => $pendingValues,
                    'color' => '#6b7280'
                ],
                'rejected' => [
                    'label_ar' => 'غير مكتملة',
                    'label_en' => 'Rejected',
                    'values' => $rejectedValues,
                    'color' => '#ef4444'
                ]
            ],
            'summary' => [
                'overall_change' => $overallChange
            ]
        ];
    }

    /**
     * Top majors for candidate signups within a date range.
     * Returns totals per major and daily series for the top N majors.
     */
    public function getCandidateMajorsByDateRange(string $from, string $to, int $limit = 5): array
    {
        $startDate = Carbon::parse($from)->startOfDay();
        $endDate = Carbon::parse($to)->endOfDay();

        if ($startDate->gt($endDate)) {
            [$startDate, $endDate] = [$endDate->copy()->startOfDay(), $startDate->copy()->endOfDay()];
        }

        // Find top majors by total candidates in range
        $localizedName = LocalizationHelper::getLocalizedFieldName('name');
        $topMajors = Major::select('majors.id', "majors.$localizedName as name")
            ->join('users', 'users.major_id', '=', 'majors.id')
            ->where('users.type', 'candidate')
            ->whereBetween('users.created_at', [$startDate, $endDate])
            ->groupBy('majors.id', "majors.$localizedName")
            ->orderByRaw('COUNT(users.id) DESC')
            ->limit($limit)
            ->get();

        $labels = [];
        $series = [];

        // Prepare labels (days)
        $cursor = $startDate->copy();
        while ($cursor->lte($endDate)) {
            $labels[] = $cursor->format('Y-m-d');
            $cursor->addDay();
        }

        // Build series per major
        foreach ($topMajors as $major) {
            $values = [];
            $cursor = $startDate->copy();
            while ($cursor->lte($endDate)) {
                $dayStart = $cursor->copy()->startOfDay();
                $dayEnd = $cursor->copy()->endOfDay();
                $values[] = \App\Models\User::where('type', 'candidate')
                    ->where('major_id', $major->id)
                    ->whereBetween('created_at', [$dayStart, $dayEnd])
                    ->count();
                $cursor->addDay();
            }
            $series[] = [
                'major_id' => $major->id,
                'major_name' => $major->name,
                'values' => $values,
            ];
        }

        // Overall change vs previous equal-length period
        $daysInRange = $startDate->diffInDays($endDate) + 1;
        $previousEnd = $startDate->copy()->subDay()->endOfDay();
        $previousStart = $previousEnd->copy()->subDays($daysInRange - 1)->startOfDay();

        $currentTotal = \App\Models\User::where('type', 'candidate')
            ->whereBetween('created_at', [$startDate, $endDate])
            ->count();
        $previousTotal = \App\Models\User::where('type', 'candidate')
            ->whereBetween('created_at', [$previousStart, $previousEnd])
            ->count();

        $overallChange = $this->calculatePercentageChange($previousTotal, $currentTotal);

        return [
            'period' => 'custom_range',
            'from' => $startDate->format('Y-m-d'),
            'to' => $endDate->format('Y-m-d'),
            'labels' => $labels,
            'series' => $series,
            'summary' => [
                'overall_change' => $overallChange
            ]
        ];
    }

    /**
     * Top cities for candidate signups within a date range.
     * Returns totals per city and daily series for the top N cities.
     */
    public function getCandidateCitiesByDateRange(string $from, string $to, int $limit = 5): array
    {
        $startDate = Carbon::parse($from)->startOfDay();
        $endDate = Carbon::parse($to)->endOfDay();

        if ($startDate->gt($endDate)) {
            [$startDate, $endDate] = [$endDate->copy()->startOfDay(), $startDate->copy()->endOfDay()];
        }

        $localizedName = LocalizationHelper::getLocalizedFieldName('name');
        $topCities = City::select('cities.id', "cities.$localizedName as name")
            ->join('users', 'users.city_id', '=', 'cities.id')
            ->where('users.type', 'candidate')
            ->whereBetween('users.created_at', [$startDate, $endDate])
            ->groupBy('cities.id', "cities.$localizedName")
            ->orderByRaw('COUNT(users.id) DESC')
            ->limit($limit)
            ->get();

        $labels = [];
        $series = [];
        $cursor = $startDate->copy();
        while ($cursor->lte($endDate)) {
            $labels[] = $cursor->format('Y-m-d');
            $cursor->addDay();
        }

        foreach ($topCities as $city) {
            $values = [];
            $cursor = $startDate->copy();
            while ($cursor->lte($endDate)) {
                $dayStart = $cursor->copy()->startOfDay();
                $dayEnd = $cursor->copy()->endOfDay();
                $values[] = \App\Models\User::where('type', 'candidate')
                    ->where('city_id', $city->id)
                    ->whereBetween('created_at', [$dayStart, $dayEnd])
                    ->count();
                $cursor->addDay();
            }
            $series[] = [
                'city_id' => $city->id,
                'city_name' => $city->name,
                'values' => $values,
            ];
        }

        $daysInRange = $startDate->diffInDays($endDate) + 1;
        $previousEnd = $startDate->copy()->subDay()->endOfDay();
        $previousStart = $previousEnd->copy()->subDays($daysInRange - 1)->startOfDay();

        $currentTotal = \App\Models\User::where('type', 'candidate')
            ->whereBetween('created_at', [$startDate, $endDate])
            ->count();
        $previousTotal = \App\Models\User::where('type', 'candidate')
            ->whereBetween('created_at', [$previousStart, $previousEnd])
            ->count();

        $overallChange = $this->calculatePercentageChange($previousTotal, $currentTotal);

        return [
            'period' => 'custom_range',
            'from' => $startDate->format('Y-m-d'),
            'to' => $endDate->format('Y-m-d'),
            'labels' => $labels,
            'series' => $series,
            'summary' => [
                'overall_change' => $overallChange
            ]
        ];
    }

    /**
     * Interview performance distribution (good/normal/bad) for a date range.
     * Uses interviews.performance as percentage (0-100). Strings with '%' are handled.
     */
    public function getInterviewPerformanceByDateRange(string $from, string $to): array
    {
        $startDate = Carbon::parse($from)->startOfDay();
        $endDate = Carbon::parse($to)->endOfDay();

        if ($startDate->gt($endDate)) {
            [$startDate, $endDate] = [$endDate->copy()->startOfDay(), $startDate->copy()->endOfDay()];
        }

        $interviews = Interview::whereBetween('created_at', [$startDate, $endDate])->get(['performance']);

        $good = 0; // > 80
        $normal = 0; // > 50 and < 80
        $bad = 0; // <= 50
        $sum = 0;
        $count = $interviews->count();

        foreach ($interviews as $row) {
            $perfRaw = (string)($row->performance ?? '0');
            // extract numeric part
            if (preg_match('/-?\d+(?:\.\d+)?/', $perfRaw, $m)) {
                $perf = (float)$m[0];
            } else {
                $perf = 0.0;
            }
            // Clamp to 0..100
            if ($perf < 0) $perf = 0; if ($perf > 100) $perf = 100;
            $sum += $perf;
            if ($perf <= 50) {
                $bad++;
            } elseif ($perf < 80) {
                $normal++;
            } else {
                $good++;
            }
        }

        $overall = $count > 0 ? round($sum / $count, 2) : 0.0;
        $totalBuckets = max($good + $normal + $bad, 1);
        $goodPct = round(($good / $totalBuckets) * 100, 2);
        $normalPct = round(($normal / $totalBuckets) * 100, 2);
        $badPct = round(($bad / $totalBuckets) * 100, 2);
        $overallLabel = $overall <= 50 ? 'بحاجة تحسين' : ($overall < 80 ? 'أداء متوسط' : 'أداء قوي');

        // Previous range comparison
        $daysInRange = $startDate->diffInDays($endDate) + 1;
        $previousEnd = $startDate->copy()->subDay()->endOfDay();
        $previousStart = $previousEnd->copy()->subDays($daysInRange - 1)->startOfDay();
        $prevInterviews = Interview::whereBetween('created_at', [$previousStart, $previousEnd])->get(['performance']);
        $prevSum = 0; $prevCount = $prevInterviews->count();
        foreach ($prevInterviews as $row) {
            $perfRaw = (string)($row->performance ?? '0');
            if (preg_match('/-?\d+(?:\.\d+)?/', $perfRaw, $m)) {
                $prev = (float)$m[0];
            } else { $prev = 0.0; }
            if ($prev < 0) $prev = 0; if ($prev > 100) $prev = 100;
            $prevSum += $prev;
        }
        $prevOverall = $prevCount > 0 ? round($prevSum / $prevCount, 2) : 0.0;
        $overallChange = $this->calculatePercentageChange((int)round($prevOverall), (int)round($overall));

        return [
            'period' => 'custom_range',
            'from' => $startDate->format('Y-m-d'),
            'to' => $endDate->format('Y-m-d'),
            'data' => [
                'good' => [ 'percentage' => $goodPct, 'color' => '#16a34a' ],
                'normal' => [ 'percentage' => $normalPct, 'color' => '#f59e0b' ],
                'bad' => [ 'percentage' => $badPct, 'color' => '#ef4444' ],
            ],
            'summary' => [
                'overall_average' => $overall, // 0..100
                'overall_label' => $overallLabel,
                'overall_change' => $overallChange,
            ]
        ];
    }

    /**
     * Subscriptions time-series by date range (daily buckets), plus overall change vs prior range
     */
    public function getSubscriptionsByDateRange(string $from, string $to): array
    {
        $startDate = Carbon::parse($from)->startOfDay();
        $endDate = Carbon::parse($to)->endOfDay();

        if ($startDate->gt($endDate)) {
            [$startDate, $endDate] = [$endDate->copy()->startOfDay(), $startDate->copy()->endOfDay()];
        }

        $labels = [];
        $values = [];

        $cursor = $startDate->copy();
        while ($cursor->lte($endDate)) {
            $dayStart = $cursor->copy()->startOfDay();
            $dayEnd = $cursor->copy()->endOfDay();

            $labels[] = $cursor->format('Y-m-d');
            $values[] = Subscription::whereBetween('created_at', [$dayStart, $dayEnd])->count();
            $cursor->addDay();
        }

        $currentTotal = array_sum($values);

        // previous equal-length period
        $daysInRange = $startDate->diffInDays($endDate) + 1;
        $previousEnd = $startDate->copy()->subDay()->endOfDay();
        $previousStart = $previousEnd->copy()->subDays($daysInRange - 1)->startOfDay();
        $previousTotal = Subscription::whereBetween('created_at', [$previousStart, $previousEnd])->count();
        $overallChange = $this->calculatePercentageChange($previousTotal, $currentTotal);

        return [
            'period' => 'custom_range',
            'from' => $startDate->format('Y-m-d'),
            'to' => $endDate->format('Y-m-d'),
            'labels' => $labels,
            'data' => [
                'subscriptions' => [
                    'values' => $values,
                    'color' => '#064e3b'
                ]
            ],
            'summary' => [
                'total' => $currentTotal,
                'overall_change' => $overallChange
            ]
        ];
    }
}


