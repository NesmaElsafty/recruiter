<?php

namespace App\Services;

use App\Models\User;
use App\Models\Interview;
use App\Models\Subscription;
use Illuminate\Support\Facades\DB;

class DashboardService
{
    /**
     * Get dashboard statistics for the main dashboard cards
     * Returns data for: Total Candidates, Total Recruiters, Total Subscriptions, Total Interviews
     */
    public function getDashboardStats(): array
    {
        // Get current counts
        $totalCandidates = User::where('type', 'candidate')->count();
        $totalRecruiters = User::where('type', 'recruiter')->count();
        $totalSubscriptions = Subscription::count();
        $totalInterviews = Interview::count();

        // Calculate percentage changes (comparing with previous month)
        $currentMonth = now()->startOfMonth();
        $previousMonth = now()->subMonth()->startOfMonth();
        
        // Previous month counts
        $previousCandidates = User::where('type', 'candidate')
            ->where('created_at', '<', $currentMonth)
            ->count();
        $previousRecruiters = User::where('type', 'recruiter')
            ->where('created_at', '<', $currentMonth)
            ->count();
        $previousSubscriptions = Subscription::where('created_at', '<', $currentMonth)
            ->count();
        $previousInterviews = Interview::where('created_at', '<', $currentMonth)
            ->count();

        // Calculate percentage changes
        $candidatesChange = $this->calculatePercentageChange($previousCandidates, $totalCandidates);
        $recruitersChange = $this->calculatePercentageChange($previousRecruiters, $totalRecruiters);
        $subscriptionsChange = $this->calculatePercentageChange($previousSubscriptions, $totalSubscriptions);
        $interviewsChange = $this->calculatePercentageChange($previousInterviews, $totalInterviews);

        return [
            'total_candidates' => [
                'count' => $totalCandidates,
                'change_percentage' => $candidatesChange['percentage'],
                'change_direction' => $candidatesChange['direction'],
                'label_ar' => 'إجمالي المرشحين',
                'label_en' => 'Total Candidates'
            ],
            'total_recruiters' => [
                'count' => $totalRecruiters,
                'change_percentage' => $recruitersChange['percentage'],
                'change_direction' => $recruitersChange['direction'],
                'label_ar' => 'إجمالي مسؤولي التوظيف',
                'label_en' => 'Total Recruitment Officers'
            ],
            'total_subscriptions' => [
                'count' => $totalSubscriptions,
                'change_percentage' => $subscriptionsChange['percentage'],
                'change_direction' => $subscriptionsChange['direction'],
                'label_ar' => 'إجمالي الاشتراكات',
                'label_en' => 'Total Subscriptions'
            ],
            'total_interviews' => [
                'count' => $totalInterviews,
                'change_percentage' => $interviewsChange['percentage'],
                'change_direction' => $interviewsChange['direction'],
                'label_ar' => 'إجمالي المقابلات',
                'label_en' => 'Total Interviews'
            ]
        ];
    }

    /**
     * Get monthly trends for the last 12 months
     */
    private function getMonthlyTrends(): array
    {
        $months = [];
        $trends = [
            'candidates' => [],
            'recruiters' => [],
            'subscriptions' => [],
            'interviews' => []
        ];

        for ($i = 11; $i >= 0; $i--) {
            $month = now()->subMonths($i);
            $monthStart = $month->copy()->startOfMonth();
            $monthEnd = $month->copy()->endOfMonth();
            
            $months[] = $month->format('M Y');
            
            $trends['candidates'][] = User::where('type', 'candidate')
                ->whereBetween('created_at', [$monthStart, $monthEnd])
                ->count();
                
            $trends['recruiters'][] = User::where('type', 'recruiter')
                ->whereBetween('created_at', [$monthStart, $monthEnd])
                ->count();
                
            $trends['subscriptions'][] = Subscription::whereBetween('created_at', [$monthStart, $monthEnd])
                ->count();
                
            $trends['interviews'][] = Interview::whereBetween('created_at', [$monthStart, $monthEnd])
                ->count();
        }

        return [
            'months' => $months,
            'trends' => $trends
        ];
    }

    /**
     * Get user type distribution
     */
    private function getUserTypeDistribution(): array
    {
        return User::select('type', DB::raw('count(*) as count'))
            ->groupBy('type')
            ->get()
            ->pluck('count', 'type')
            ->toArray();
    }

    /**
     * Get subscription status distribution
     */
    private function getSubscriptionStatusDistribution(): array
    {
        // Assuming subscription has a status field, adjust if different
        return Subscription::select('status', DB::raw('count(*) as count'))
            ->groupBy('status')
            ->get()
            ->pluck('count', 'status')
            ->toArray();
    }

    /**
     * Get interview status distribution
     */
    private function getInterviewStatusDistribution(): array
    {
        // Check if Interview model has a status field
        $interviewColumns = DB::getSchemaBuilder()->getColumnListing('interviews');
        
        if (in_array('status', $interviewColumns)) {
            return Interview::select('status', DB::raw('count(*) as count'))
                ->groupBy('status')
                ->get()
                ->pluck('count', 'status')
                ->toArray();
        }
        
        return [];
    }

    /**
     * Get user activity data for charts with different time filters
     * 
     * @param string $period - daily, weekly, monthly, yearly
     * @return array
     */
    public function getUserActivity(string $period = 'monthly'): array
    {
        switch ($period) {
            case 'daily':
                return $this->getDailyActivity();
            case 'weekly':
                return $this->getWeeklyActivity();
            case 'monthly':
                return $this->getMonthlyActivity();
            case 'yearly':
                return $this->getYearlyActivity();
            default:
                return $this->getWeeklyActivity();
        }
    }

    /**
     * Get interview activity data for charts with different time filters
     * 
     * @param string $period - daily, weekly, monthly, yearly
     * @return array
     */
    public function getInterviewActivity(string $period = 'monthly'): array
    {
        switch ($period) {
            case 'daily':
                return $this->getDailyInterviewActivity();
            case 'weekly':
                return $this->getWeeklyInterviewActivity();
            case 'monthly':
                return $this->getMonthlyInterviewActivity();
            case 'yearly':
                return $this->getYearlyInterviewActivity();
            default:
                return $this->getMonthlyInterviewActivity();
        }
    }

    /**
     * Get daily activity data (last 7 days with hours)
     */
    private function getDailyActivity(): array
    {
        $days = [];
        $candidatesData = [];
        $recruitersData = [];
        
        // Get last 7 days
        for ($i = 6; $i >= 0; $i--) {
            $day = now()->subDays($i);
            $dayStart = $day->copy()->startOfDay();
            $dayEnd = $day->copy()->endOfDay();
            
            $days[] = $day->format('D'); // Day name (Mon, Tue, etc.)
            
            // Get hourly data for candidates
            $candidatesHourly = [];
            $recruitersHourly = [];
            
            for ($hour = 0; $hour < 24; $hour++) {
                $hourStart = $dayStart->copy()->addHours($hour);
                $hourEnd = $hourStart->copy()->addHour();
                
                $candidatesHourly[] = User::where('type', 'candidate')
                    ->whereBetween('created_at', [$hourStart, $hourEnd])
                    ->count();
                    
                $recruitersHourly[] = User::where('type', 'recruiter')
                    ->whereBetween('created_at', [$hourStart, $hourEnd])
                    ->count();
            }
            
            $candidatesData[] = array_sum($candidatesHourly);
            $recruitersData[] = array_sum($recruitersHourly);
        }
        
        // Calculate percentage change
        $totalCandidates = array_sum($candidatesData);
        $totalRecruiters = array_sum($recruitersData);
        $previousWeekCandidates = User::where('type', 'candidate')
            ->whereBetween('created_at', [now()->subDays(14), now()->subDays(7)])
            ->count();
        $previousWeekRecruiters = User::where('type', 'recruiter')
            ->whereBetween('created_at', [now()->subDays(14), now()->subDays(7)])
            ->count();
            
        $candidatesChange = $this->calculatePercentageChange($previousWeekCandidates, $totalCandidates);
        $recruitersChange = $this->calculatePercentageChange($previousWeekRecruiters, $totalRecruiters);
        
        return [
            'period' => 'daily',
            'title_ar' => 'نشاط المستخدمين اليومي',
            'title_en' => 'Daily User Activity',
            'labels' => $days,
            'data' => [
                'candidates' => [
                    'label_ar' => 'المرشحين',
                    'label_en' => 'Candidates',
                    'values' => $candidatesData,
                    'color' => '#22c55e' // Dark green
                ],
                'recruiters' => [
                    'label_ar' => 'مسؤولي التوظيف',
                    'label_en' => 'Recruiters',
                    'values' => $recruitersData,
                    'color' => '#06b6d4' // Light blue/teal
                ]
            ],
            
        ];
    }

    /**
     * Get weekly activity data (last 7 weeks with week days)
     */
    private function getWeeklyActivity(): array
    {
        $weeks = [];
        $candidatesData = [];
        $recruitersData = [];
        
        // Get last 7 weeks
        for ($i = 6; $i >= 0; $i--) {
            $week = now()->subWeeks($i);
            $weekStart = $week->copy()->startOfWeek();
            $weekEnd = $week->copy()->endOfWeek();
            
            $weeks[] = $week->format('M d'); // Month and day
            
            $candidatesData[] = User::where('type', 'candidate')
                ->whereBetween('created_at', [$weekStart, $weekEnd])
                ->count();
                
            $recruitersData[] = User::where('type', 'recruiter')
                ->whereBetween('created_at', [$weekStart, $weekEnd])
                ->count();
        }
        
        // Calculate percentage change
        $totalCandidates = array_sum($candidatesData);
        $totalRecruiters = array_sum($recruitersData);
        $previousPeriodCandidates = User::where('type', 'candidate')
            ->whereBetween('created_at', [now()->subWeeks(14), now()->subWeeks(7)])
            ->count();
        $previousPeriodRecruiters = User::where('type', 'recruiter')
            ->whereBetween('created_at', [now()->subWeeks(14), now()->subWeeks(7)])
            ->count();
            
        $candidatesChange = $this->calculatePercentageChange($previousPeriodCandidates, $totalCandidates);
        $recruitersChange = $this->calculatePercentageChange($previousPeriodRecruiters, $totalRecruiters);
        
        return [
            'period' => 'weekly',
            'title_ar' => 'نشاط المستخدمين الأسبوعي',
            'title_en' => 'Weekly User Activity',
            'labels' => $weeks,
            'data' => [
                'candidates' => [
                    'label_ar' => 'المرشحين',
                    'label_en' => 'Candidates',
                    'values' => $candidatesData,
                    'color' => '#22c55e'
                ],
                'recruiters' => [
                    'label_ar' => 'مسؤولي التوظيف',
                    'label_en' => 'Recruiters',
                    'values' => $recruitersData,
                    'color' => '#06b6d4'
                ]
            ],
           
        ];
    }

    /**
     * Get monthly activity data (last 12 months with weeks)
     */
    private function getMonthlyActivity(): array
    {
        $months = [];
        $candidatesData = [];
        $recruitersData = [];
        
        // Get last 12 months
        for ($i = 11; $i >= 0; $i--) {
            $month = now()->subMonths($i);
            $monthStart = $month->copy()->startOfMonth();
            $monthEnd = $month->copy()->endOfMonth();
            
            $months[] = $month->format('M Y'); // Month and year
            
            $candidatesData[] = User::where('type', 'candidate')
                ->whereBetween('created_at', [$monthStart, $monthEnd])
                ->count();
                
            $recruitersData[] = User::where('type', 'recruiter')
                ->whereBetween('created_at', [$monthStart, $monthEnd])
                ->count();
        }
        
        // Calculate percentage change
        $totalCandidates = array_sum($candidatesData);
        $totalRecruiters = array_sum($recruitersData);
        $previousYearCandidates = User::where('type', 'candidate')
            ->whereBetween('created_at', [now()->subYear()->subYear(), now()->subYear()])
            ->count();
        $previousYearRecruiters = User::where('type', 'recruiter')
            ->whereBetween('created_at', [now()->subYear()->subYear(), now()->subYear()])
            ->count();
            
        $candidatesChange = $this->calculatePercentageChange($previousYearCandidates, $totalCandidates);
        $recruitersChange = $this->calculatePercentageChange($previousYearRecruiters, $totalRecruiters);
        
        return [
            'period' => 'monthly',
            'title_ar' => 'نشاط المستخدمين الشهري',
            'title_en' => 'Monthly User Activity',
            'labels' => $months,
            'data' => [
                'candidates' => [
                    'label_ar' => 'المرشحين',
                    'label_en' => 'Candidates',
                    'values' => $candidatesData,
                    'color' => '#22c55e'
                ],
                'recruiters' => [
                    'label_ar' => 'مسؤولي التوظيف',
                    'label_en' => 'Recruiters',
                    'values' => $recruitersData,
                    'color' => '#06b6d4'
                ]
            ],
           
            
        ];
    }

    /**
     * Get yearly activity data (last 5 years with months)
     */
    private function getYearlyActivity(): array
    {
        $years = [];
        $candidatesData = [];
        $recruitersData = [];
        
        // Get last 5 years
        for ($i = 4; $i >= 0; $i--) {
            $year = now()->subYears($i);
            $yearStart = $year->copy()->startOfYear();
            $yearEnd = $year->copy()->endOfYear();
            
            $years[] = $year->format('Y'); // Year
            
            $candidatesData[] = User::where('type', 'candidate')
                ->whereBetween('created_at', [$yearStart, $yearEnd])
                ->count();
                
            $recruitersData[] = User::where('type', 'recruiter')
                ->whereBetween('created_at', [$yearStart, $yearEnd])
                ->count();
        }
        
        // Calculate percentage change
        $totalCandidates = array_sum($candidatesData);
        $totalRecruiters = array_sum($recruitersData);
        $previousPeriodCandidates = User::where('type', 'candidate')
            ->whereBetween('created_at', [now()->subYears(10), now()->subYears(5)])
            ->count();
        $previousPeriodRecruiters = User::where('type', 'recruiter')
            ->whereBetween('created_at', [now()->subYears(10), now()->subYears(5)])
            ->count();
            
        $candidatesChange = $this->calculatePercentageChange($previousPeriodCandidates, $totalCandidates);
        $recruitersChange = $this->calculatePercentageChange($previousPeriodRecruiters, $totalRecruiters);
        
        return [
            'period' => 'yearly',
            'title_ar' => 'نشاط المستخدمين السنوي',
            'title_en' => 'Yearly User Activity',
            'labels' => $years,
            'data' => [
                'candidates' => [
                    'label_ar' => 'المرشحين',
                    'label_en' => 'Candidates',
                    'values' => $candidatesData,
                    'color' => '#22c55e'
                ],
                'recruiters' => [
                    'label_ar' => 'مسؤولي التوظيف',
                    'label_en' => 'Recruiters',
                    'values' => $recruitersData,
                    'color' => '#06b6d4'
                ]
            ],
            
        ];
    }

    /**
     * Daily interview activity (last 7 days aggregated by day)
     */
    private function getDailyInterviewActivity(): array
    {
        $days = [];
        $values = [];

        for ($i = 6; $i >= 0; $i--) {
            $day = now()->subDays($i);
            $dayStart = $day->copy()->startOfDay();
            $dayEnd = $day->copy()->endOfDay();

            $days[] = $day->format('D');
            $values[] = Interview::whereBetween('created_at', [$dayStart, $dayEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Interview::whereBetween('created_at', [now()->subDays(14), now()->subDays(7)])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'daily',
            'title_ar' => 'المقابلات (يومي)',
            'title_en' => 'Interviews (Daily)',
            'labels' => $days,
            'data' => [
                'interviews' => [
                    'label_ar' => 'المقابلات',
                    'label_en' => 'Interviews',
                    'values' => $values,
                    'color' => '#14532d'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    /**
     * Weekly interview activity (last 7 weeks)
     */
    private function getWeeklyInterviewActivity(): array
    {
        $weeks = [];
        $values = [];

        for ($i = 6; $i >= 0; $i--) {
            $week = now()->subWeeks($i);
            $weekStart = $week->copy()->startOfWeek();
            $weekEnd = $week->copy()->endOfWeek();

            $weeks[] = $week->format('M d');
            $values[] = Interview::whereBetween('created_at', [$weekStart, $weekEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Interview::whereBetween('created_at', [now()->subWeeks(14), now()->subWeeks(7)])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'weekly',
            'title_ar' => 'المقابلات (أسبوعي)',
            'title_en' => 'Interviews (Weekly)',
            'labels' => $weeks,
            'data' => [
                'interviews' => [
                    'label_ar' => 'المقابلات',
                    'label_en' => 'Interviews',
                    'values' => $values,
                    'color' => '#14532d'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    /**
     * Monthly interview activity (last 12 months)
     */
    private function getMonthlyInterviewActivity(): array
    {
        $months = [];
        $values = [];

        for ($i = 11; $i >= 0; $i--) {
            $month = now()->subMonths($i);
            $monthStart = $month->copy()->startOfMonth();
            $monthEnd = $month->copy()->endOfMonth();

            $months[] = $month->format('M Y');
            $values[] = Interview::whereBetween('created_at', [$monthStart, $monthEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Interview::whereBetween('created_at', [now()->subYear()->subYear(), now()->subYear()])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'monthly',
            'title_ar' => 'المقابلات (شهري)',
            'title_en' => 'Interviews (Monthly)',
            'labels' => $months,
            'data' => [
                'interviews' => [
                    'label_ar' => 'المقابلات',
                    'label_en' => 'Interviews',
                    'values' => $values,
                    'color' => '#14532d'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    /**
     * Yearly interview activity (last 5 years)
     */
    private function getYearlyInterviewActivity(): array
    {
        $years = [];
        $values = [];

        for ($i = 4; $i >= 0; $i--) {
            $year = now()->subYears($i);
            $yearStart = $year->copy()->startOfYear();
            $yearEnd = $year->copy()->endOfYear();

            $years[] = $year->format('Y');
            $values[] = Interview::whereBetween('created_at', [$yearStart, $yearEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Interview::whereBetween('created_at', [now()->subYears(10), now()->subYears(5)])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'yearly',
            'title_ar' => 'المقابلات (سنوي)',
            'title_en' => 'Interviews (Yearly)',
            'labels' => $years,
            'data' => [
                'interviews' => [
                    'label_ar' => 'المقابلات',
                    'label_en' => 'Interviews',
                    'values' => $values,
                    'color' => '#14532d'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    /**
     * Get subscription activity data for charts with different time filters
     */
    public function getSubscriptionActivity(string $period = 'monthly'): array
    {
        switch ($period) {
            case 'daily':
                return $this->getDailySubscriptionActivity();
            case 'weekly':
                return $this->getWeeklySubscriptionActivity();
            case 'monthly':
                return $this->getMonthlySubscriptionActivity();
            case 'yearly':
                return $this->getYearlySubscriptionActivity();
            default:
                return $this->getMonthlySubscriptionActivity();
        }
    }

    private function getDailySubscriptionActivity(): array
    {
        $days = [];
        $values = [];

        for ($i = 6; $i >= 0; $i--) {
            $day = now()->subDays($i);
            $dayStart = $day->copy()->startOfDay();
            $dayEnd = $day->copy()->endOfDay();

            $days[] = $day->format('D');
            $values[] = Subscription::whereBetween('created_at', [$dayStart, $dayEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Subscription::whereBetween('created_at', [now()->subDays(14), now()->subDays(7)])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'daily',
            'title_ar' => 'الاشتراكات (يومي)',
            'title_en' => 'Subscriptions (Daily)',
            'labels' => $days,
            'data' => [
                'subscriptions' => [
                    'label_ar' => 'الاشتراكات',
                    'label_en' => 'Subscriptions',
                    'values' => $values,
                    'color' => '#065f46'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    private function getWeeklySubscriptionActivity(): array
    {
        $weeks = [];
        $values = [];

        for ($i = 6; $i >= 0; $i--) {
            $week = now()->subWeeks($i);
            $weekStart = $week->copy()->startOfWeek();
            $weekEnd = $week->copy()->endOfWeek();

            $weeks[] = $week->format('M d');
            $values[] = Subscription::whereBetween('created_at', [$weekStart, $weekEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Subscription::whereBetween('created_at', [now()->subWeeks(14), now()->subWeeks(7)])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'weekly',
            'title_ar' => 'الاشتراكات (أسبوعي)',
            'title_en' => 'Subscriptions (Weekly)',
            'labels' => $weeks,
            'data' => [
                'subscriptions' => [
                    'label_ar' => 'الاشتراكات',
                    'label_en' => 'Subscriptions',
                    'values' => $values,
                    'color' => '#065f46'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    private function getMonthlySubscriptionActivity(): array
    {
        $months = [];
        $values = [];

        for ($i = 11; $i >= 0; $i--) {
            $month = now()->subMonths($i);
            $monthStart = $month->copy()->startOfMonth();
            $monthEnd = $month->copy()->endOfMonth();

            $months[] = $month->format('M Y');
            $values[] = Subscription::whereBetween('created_at', [$monthStart, $monthEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Subscription::whereBetween('created_at', [now()->subYear()->subYear(), now()->subYear()])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'monthly',
            'title_ar' => 'الاشتراكات (شهري)',
            'title_en' => 'Subscriptions (Monthly)',
            'labels' => $months,
            'data' => [
                'subscriptions' => [
                    'label_ar' => 'الاشتراكات',
                    'label_en' => 'Subscriptions',
                    'values' => $values,
                    'color' => '#065f46'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    private function getYearlySubscriptionActivity(): array
    {
        $years = [];
        $values = [];

        for ($i = 4; $i >= 0; $i--) {
            $year = now()->subYears($i);
            $yearStart = $year->copy()->startOfYear();
            $yearEnd = $year->copy()->endOfYear();

            $years[] = $year->format('Y');
            $values[] = Subscription::whereBetween('created_at', [$yearStart, $yearEnd])->count();
        }

        $total = array_sum($values);
        $previousTotal = Subscription::whereBetween('created_at', [now()->subYears(10), now()->subYears(5)])->count();
        $change = $this->calculatePercentageChange($previousTotal, $total);

        return [
            'period' => 'yearly',
            'title_ar' => 'الاشتراكات (سنوي)',
            'title_en' => 'Subscriptions (Yearly)',
            'labels' => $years,
            'data' => [
                'subscriptions' => [
                    'label_ar' => 'الاشتراكات',
                    'label_en' => 'Subscriptions',
                    'values' => $values,
                    'color' => '#065f46'
                ]
            ],
            'summary' => [
                'total' => $total,
                'change' => $change
            ]
        ];
    }

    /**
     * Calculate overall change percentage
     */
    private function calculateOverallChange(array $candidatesChange, array $recruitersChange): array
    {
        $totalChange = ($candidatesChange['percentage'] + $recruitersChange['percentage']) / 2;
        $positiveChanges = 0;
        
        if ($candidatesChange['direction'] === 'up') $positiveChanges++;
        if ($recruitersChange['direction'] === 'up') $positiveChanges++;
        
        return [
            'percentage' => round($totalChange, 2),
            'direction' => $positiveChanges >= 1 ? 'up' : 'down'
        ];
    }

    /**
     * Calculate percentage change between two values
     */
    private function calculatePercentageChange(int $previous, int $current): array
    {
        if ($previous == 0) {
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

}
