<?php

namespace App\Services;

use App\Models\Subscription;
use App\Models\User;
use App\Models\Plan;
use App\Helpers\ExportHelper;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\SubscriptionResource;
use Carbon\Carbon;

class SubscriptionService
{

    public $locale;

    public function __construct()
    {
        $this->locale = app()->getLocale();
    }

    public function getAllSubscriptions(array $data = [])
    {
        $query = Subscription::with(['user', 'plan']);

        // Search filter
        if (isset($data['search']) && !empty($data['search'])) {
            $searchTerm = $data['search'];
            $query->where(function ($q) use ($searchTerm) {
                $q->where('subscription_id', 'like', "%{$searchTerm}%")
                  ->orWhere('paid_amount', 'like', "%{$searchTerm}%")
                  ->orWhere('start_date', 'like', "%{$searchTerm}%")
                  ->orWhere('end_date', 'like', "%{$searchTerm}%")
                  ->orWhereHas('user', function ($userQuery) use ($searchTerm) {
                      $userQuery->where('fname', 'like', "%{$searchTerm}%")
                               ->orWhere('lname', 'like', "%{$searchTerm}%");
                  })
                  ->orWhereHas('plan', function ($planQuery) use ($searchTerm) {
                      $planQuery->where('name_en', 'like', "%{$searchTerm}%")
                               ->orWhere('name_ar', 'like', "%{$searchTerm}%");
                  });
            });
        }

        // Active status filter
        if (isset($data['is_active']) && $data['is_active'] !== 'all') {
            $query->where('is_active', (bool) $data['is_active']);
        }

        // Plan duration filter
        if (isset($data['plan_duration']) && $data['plan_duration'] !== 'all') {
            $query->whereHas('plan', function ($planQuery) use ($data) {
                $planQuery->where('duration_type', $data['plan_duration']);
            });
        }

        // Payment method filter
        if (isset($data['payment_method']) && $data['payment_method'] !== 'all') {
            $query->where('payment_method', $data['payment_method']);
        }

        // Sorting
        $this->applySorting($query, $data);

        return $query;
    }

    // get user subscriptions history
    public function getUserSubscriptionsHistory($data)
    {
        $user = auth('api')->user();
        $query = Subscription::query();
        $query->where('user_id', $user->id)->where('status', '!=', 'active');

        if(isset($data['search']) && !empty($data['search'])) {
            $query->where(function($q) use ($data, $user) {
                $q->where('subscription_id', 'like', "%{$data['search']}%")
                  ->orWhere('paid_amount', 'like', "%{$data['search']}%")
                  ->orWhere('start_date', 'like', "%{$data['search']}%")
                  ->orWhere('end_date', 'like', "%{$data['search']}%")
                  ->orWhereHas('plan', function ($planQuery) use ($data) {
                      $planQuery->where('name_en', 'like', "%{$data['search']}%")
                               ->orWhere('name_ar', 'like', "%{$data['search']}%");
                  });
            });
        }
        
        if(isset($data['plan_duration']) && !empty($data['plan_duration'])) {
            $query->whereHas('plan', function ($planQuery) use ($data) {
                $planQuery->where('duration_type', $data['plan_duration']);
            });
        }
        
        if(isset($data['payment_method']) && !empty($data['payment_method'])) {
            $query->where('payment_method', $data['payment_method']);
        }
        
        if(isset($data['sorted_by']) && !empty($data['sorted_by'])) {
            switch ($data['sorted_by']) {
            case 'plan_name':
                $query->join('plans', 'subscriptions.plan_id', '=', 'plans.id')
                // use localization helper
                      ->orderBy('plans.{"name_{$this->locale}"}', 'asc')
                      ->orderBy('plans.name_ar', 'asc')
                      ->select('subscriptions.*');
                break;
            case 'paid_amount':
                $query->orderByRaw('CAST(paid_amount AS DECIMAL(10,2)) DESC');
                break;
            case 'oldest':
                $query->orderBy('created_at', 'asc');
                break;
            case 'newest':
            default:
                $query->orderBy('created_at', 'desc');
                break;
        }
        }
        return $query;
    }

    // get user active subscription
    public function getUserActiveSubscription()
    {
        $user = auth('api')->user();
        $subscription = Subscription::with(['user', 'plan'])
            ->where('user_id', $user->id)
            ->where('status', 'active')
            ->first();
        return $subscription->load('plan.features');
    }

    /**
     * Get subscriptions by user ID
     */
    public function getAllSubscriptionsByUserId(int $userId)
    {
        return Subscription::with(['user', 'plan'])
            ->where('user_id', $userId)
            ->orderBy('created_at', 'desc');
    }

    /**
     * Apply sorting to the query
     */
    private function applySorting(Builder $query, array $data): void
    {
        $sortBy = $data['sorted_by'] ?? 'newest';

        switch ($sortBy) {
            case 'user_fname':
                $query->join('users', 'subscriptions.user_id', '=', 'users.id')
                      ->orderBy('users.fname', 'asc')
                      ->select('subscriptions.*');
                break;
            case 'paid_amount':
                $query->orderByRaw('CAST(paid_amount AS DECIMAL(10,2)) DESC');
                break;
            case 'oldest':
                $query->orderBy('created_at', 'asc');
                break;
            case 'newest':
            default:
                $query->orderBy('created_at', 'desc');
                break;
        }
    }

    /**
     * Get subscription statistics for dashboard
     */
    public function getSubscriptionStats(): array
    {
        $totalSubscriptions = Subscription::count();
        $totalPayments = Subscription::whereNotNull('paid_amount')
            ->where('paid_amount', '>', 0)
            ->sum(DB::raw('CAST(paid_amount AS DECIMAL(10,2))'));
        
        $incompletePayments = Subscription::where(function ($query) {
            $query->whereNull('paid_amount')
                  ->orWhere('paid_amount', '0')
                  ->orWhere('paid_amount', '');
        })->count();

        // Calculate percentage changes (comparing with previous month)
        $currentMonth = now()->startOfMonth();
        $previousMonth = now()->subMonth()->startOfMonth();
        
        $currentMonthSubscriptions = Subscription::where('created_at', '>=', $currentMonth)->count();
        $previousMonthSubscriptions = Subscription::whereBetween('created_at', [
            $previousMonth, 
            $currentMonth->copy()->subSecond()
        ])->count();
        
        $subscriptionChange = $this->calculatePercentageChange($currentMonthSubscriptions, $previousMonthSubscriptions);
        
        $currentMonthPayments = Subscription::where('created_at', '>=', $currentMonth)
            ->whereNotNull('paid_amount')
            ->where('paid_amount', '>', 0)
            ->sum(DB::raw('CAST(paid_amount AS DECIMAL(10,2))'));
            
        $previousMonthPayments = Subscription::whereBetween('created_at', [
            $previousMonth, 
            $currentMonth->copy()->subSecond()
        ])
        ->whereNotNull('paid_amount')
        ->where('paid_amount', '>', 0)
        ->sum(DB::raw('CAST(paid_amount AS DECIMAL(10,2))'));
        
        $paymentChange = $this->calculatePercentageChange($currentMonthPayments, $previousMonthPayments);
        
        $currentMonthIncomplete = Subscription::where('created_at', '>=', $currentMonth)
            ->where(function ($query) {
                $query->whereNull('paid_amount')
                      ->orWhere('paid_amount', '0')
                      ->orWhere('paid_amount', '');
            })->count();
            
        $previousMonthIncomplete = Subscription::whereBetween('created_at', [
            $previousMonth, 
            $currentMonth->copy()->subSecond()
        ])
        ->where(function ($query) {
            $query->whereNull('paid_amount')
                  ->orWhere('paid_amount', '0')
                  ->orWhere('paid_amount', '');
        })->count();
        
        $incompleteChange = $this->calculatePercentageChange($currentMonthIncomplete, $previousMonthIncomplete);

        return [
            'total_subscriptions' => [
                'value' => $totalSubscriptions,
                'change' => $subscriptionChange,
                'trend' => $subscriptionChange >= 0 ? 'up' : 'down'
            ],
            'total_payments' => [
                'value' => number_format($totalPayments, 2),
                'change' => $paymentChange,
                'trend' => $paymentChange >= 0 ? 'up' : 'down'
            ],
            'incomplete_payments' => [
                'value' => $incompletePayments,
                'change' => $incompleteChange,
                'trend' => $incompleteChange >= 0 ? 'up' : 'down'
            ],
            'chart_data' => $this->getChartData()
        ];
    }

    /**
     * Calculate percentage change between two values
     */
    private function calculatePercentageChange(float $current, float $previous): float
    {
        if ($previous == 0) {
            return $current > 0 ? 100 : 0;
        }
        
        return round((($current - $previous) / $previous) * 100, 2);
    }

    /**
     * Get chart data for the last 7 days
     */
    private function getChartData(): array
    {
        $data = [];
        for ($i = 6; $i >= 0; $i--) {
            $date = now()->subDays($i)->format('Y-m-d');
            $count = Subscription::whereDate('created_at', $date)->count();
            $data[] = $count;
        }
        return $data;
    }

    /**
     * Get subscription by ID
     */
    public function getSubscriptionById(int $id)
    {
        return Subscription::with(['user', 'plan'])->find($id);
    }

    /**
     * Create a new subscription
     */
    public function createSubscription($data)
    {
        $plan = Plan::find($data['plan_id']);
        $user = auth('api')->user();

        // calculate end date
        $endDate = now();
        if ($plan->duration_type === 'monthly') {
            $endDate->addMonths($plan->duration);
        } else {
            $endDate->addYears($plan->duration);
        }

        $subscription = new Subscription();
        $subscription->plan_id = $data['plan_id'];
        $subscription->payment_method = $data['payment_method'];
        $subscription->user_id = $user->id;
        $subscription->subscription_id = $plan->id . '-' . $user->id . '-' . now()->format('YmdHis');
        $subscription->paid_amount = $plan->price;
        $subscription->is_active = false;
        $subscription->save();

        return $subscription;
    }

    // cancel subscription
    public function cancelSubscription($id)
    {
        $subscription = Subscription::find($id);
        $subscription->status = 'cancelled';
        $subscription->is_active = false;
        $subscription->end_date = now();
        $subscription->save();
        
        return $subscription;
    }

    // payment confirmation
    public function paymentConfirmation($id)
    {
        $subscription = Subscription::find($id);
        $plan = Plan::find($subscription->plan_id);

        $subscriptions = Subscription::where('user_id', $subscription->user_id)->where('status', 'active')->where('id', '!=', $id)->get();
        foreach($subscriptions as $subscription) {
        $subscription->status = 'expired';
        $subscription->save();
        }

        // calculate end date
        $endDate = now();
        if ($plan->duration_type === 'monthly') {
            $endDate->addMonths($plan->duration);
        } else {
            $endDate->addYears($plan->duration);
        }

        $subscription->status = 'active';
        $subscription->is_active = true;
        $subscription->start_date = now();
        $subscription->end_date = $endDate;
        $subscription->save();

        return $subscription;
    }

    public function updateSubscription(int $id, array $data): bool
    {
        $subscription = Subscription::find($id);
        if (!$subscription) {
            return false;
        }
        
        return $subscription->update($data);
    }

    /**
     * Delete subscription
     */
    public function deleteSubscription(int $id): bool
    {
        $subscription = Subscription::find($id);
        if (!$subscription) {
            return false;
        }
        
        return $subscription->delete();
    }

    /**
     * Bulk activation toggle
     */
    public function bulkActivationToggle(array $ids): int
    {
        $subscriptions = Subscription::whereIn('id', $ids)->get();
        
        foreach ($subscriptions as $subscription) {
            $subscription->update(['is_active' => !$subscription->is_active]);
        }
        
        return $subscriptions->count();
    }

    /**
     * Export subscriptions
     */
    public function export(array $ids): string
    {
        $subscriptions = Subscription::with(['user', 'plan'])
            ->whereIn('id', $ids)
            ->get();

            // use localization helper
        $data = $subscriptions->map(function ($subscription) {
            return [
                'ID' => $subscription->id,
                'Subscription ID' => $subscription->subscription_id,
                'User Name' => $subscription->user ? $subscription->user->fname . ' ' . $subscription->user->lname : 'N/A',
                'Plan Name' => $subscription->plan ? $subscription->plan->{"name_{$this->locale}"} ?? $subscription->plan->name_ar : 'N/A',
                'Plan Duration Type' => $subscription->plan?->duration_type,
                'Paid Amount' => $subscription->paid_amount,
                'Payment Method' => $subscription->payment_method,
                'Is Active' => $subscription->is_active ? 'Yes' : 'No',
                'Start Date' => $subscription->start_date,
                'End Date' => $subscription->end_date,
                'Created At' => $subscription->created_at->format('Y-m-d H:i:s'),
            ];
        })->toArray();

        // Generate filename
        $filename = 'subscriptions_export_' . now()->format('Y-m-d_H-i-s') . '.csv';
        $currentUser = auth('api')->user();
        $media = ExportHelper::exportToMedia($data, $currentUser, 'exports', $filename);
        return $media->getFullUrl();
    }

    /**
     * Get subscription analytics
     */
    public function getSubscriptionAnalytics(): array
    {
        $totalSubscriptions = Subscription::count();
        $activeSubscriptions = Subscription::where('is_active', true)->count();
        $inactiveSubscriptions = Subscription::where('is_active', false)->count();
        
        $totalRevenue = Subscription::whereNotNull('paid_amount')
            ->where('paid_amount', '>', 0)
            ->sum(DB::raw('CAST(paid_amount AS DECIMAL(10,2))'));
        
        $averageSubscriptionValue = $totalSubscriptions > 0 ? $totalRevenue / $totalSubscriptions : 0;
        
        // Payment method distribution
        $paymentMethods = Subscription::select('payment_method', DB::raw('count(*) as count'))
            ->whereNotNull('payment_method')
            ->groupBy('payment_method')
            ->get()
            ->pluck('count', 'payment_method')
            ->toArray();
        
        // Plan type distribution
        $planTypes = Subscription::join('plans', 'subscriptions.plan_id', '=', 'plans.id')
            ->select('plans.type', DB::raw('count(*) as count'))
            ->groupBy('plans.type')
            ->get()
            ->pluck('count', 'type')
            ->toArray();

        return [
            'total_subscriptions' => $totalSubscriptions,
            'active_subscriptions' => $activeSubscriptions,
            'inactive_subscriptions' => $inactiveSubscriptions,
            'total_revenue' => $totalRevenue,
            'average_subscription_value' => round($averageSubscriptionValue, 2),
            'payment_methods' => $paymentMethods,
            'plan_types' => $planTypes,
        ];
    }
}
