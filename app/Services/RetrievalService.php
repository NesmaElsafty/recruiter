<?php

namespace App\Services;

use App\Models\Retrieval;
use App\Models\User;
use App\Models\Subscription;
use App\Helpers\ExportHelper;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class RetrievalService
{
    public $locale;

    public function __construct()
    {
        $this->locale = app()->getLocale();
    }

    /**
     * Get all retrievals with filters
     */
    public function getAllRetrievals($data = []): Builder
    {
        $query = Retrieval::with(['user', 'subscription.plan']);

        // Search filter
        if (isset($data['search']) && !empty($data['search'])) {
            $searchTerm = $data['search'];
            $query->where(function ($q) use ($searchTerm) {
                $q->where('reason', 'like', "%{$searchTerm}%")
                  ->orWhereHas('user', function ($userQuery) use ($searchTerm) {
                      $userQuery->where('fname', 'like', "%{$searchTerm}%")
                               ->orWhere('lname', 'like', "%{$searchTerm}%");
                  })
                  ->orWhereHas('subscription', function ($subscriptionQuery) use ($searchTerm) {
                      $subscriptionQuery->where('subscription_id', 'like', "%{$searchTerm}%");
                  })
                  ->orWhereHas('subscription.plan', function ($planQuery) use ($searchTerm) {
                      $planQuery->where('name_en', 'like', "%{$searchTerm}%")
                               ->orWhere('name_ar', 'like', "%{$searchTerm}%")
                               ->orWhere('paid_amount', 'like', "%{$searchTerm}%");
                  });
            });
        }

        // Status filter
        if (isset($data['status']) && $data['status'] !== 'all') {
            $query->where('status', $data['status']);
        }

        if(isset($data['payment_method']) && $data['payment_method'] !== 'all') {
            $query->whereHas('subscription', function ($subscriptionQuery) use ($data) {
                $subscriptionQuery->where('payment_method', $data['payment_method']);
            });
        }

        // Sorting
        $this->applySorting($query, $data);

        return $query;
    }

    /**
     * Get retrievals by user ID
     */
    public function getAllRetrievalsByUserId($userId): Builder
    {
        return Retrieval::with(['user', 'subscription.plan'])
            ->where('user_id', $userId)
            ->orderBy('created_at', 'desc');
    }

    private function applySorting(Builder $query, array $data): void
    {
        $sortBy = $data['sorted_by'] ?? 'newest';

        switch ($sortBy) {
            case 'name':
                $query->join('users', 'retrievals.user_id', '=', 'users.id')
                      ->orderBy('users.fname', 'asc')
                      ->select('retrievals.*');
                break;
            case 'paid_amount':
                $query->orderBy('subscription.paid_amount', 'asc');
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

    public function getRetrievalById($id): ?Retrieval
    {
        return Retrieval::with(['user', 'subscription.plan'])->find($id);
    }

    /**
     * Create a new retrieval
     */
    public function createRetrieval($data)
    {
        $retrieval = new Retrieval();
        $retrieval->subscription_id = $data['subscription_id'];
        $retrieval->user_id = auth('api')->user()->id;
        $retrieval->reason = $data['reason'];
        $retrieval->status = 'pending';
        $retrieval->save();
        return $retrieval;
   
    }

    /**
     * Update retrieval
     */
    public function updateRetrieval($id, $data)
    {
        $retrieval = Retrieval::find($id);
        if (!$retrieval) {
            return false;
        }
        
        return $retrieval->update($data);
    }

    /**
     * Delete retrieval
     */
    public function deleteRetrieval($id)
    {
        $retrieval = Retrieval::find($id);
        if (!$retrieval) {
            return false;
        }
        
        return $retrieval->delete();
    }

    /**
     * Bulk status update
     */
    public function bulkStatusUpdate(array $ids, string $status): int
    {
        $retrievals = Retrieval::whereIn('id', $ids)->get();
        
        foreach ($retrievals as $retrieval) {
            $retrieval->update(['status' => $status]);
        }
        
        return $retrievals->count();
    }

    /**
     * Export retrievals
     */
    public function export(array $ids): string
    {
        $retrievals = Retrieval::with(['user', 'subscription.plan'])
            ->whereIn('id', $ids)
            ->get();

        $data = $retrievals->map(function ($retrieval) {
            return [
                'ID' => $retrieval->id,
                'User Name' => $retrieval->user ? $retrieval->user->fname . ' ' . $retrieval->user->lname : 'N/A',
                'User Email' => $retrieval->user ? $retrieval->user->email : 'N/A',
                'Subscription ID' => $retrieval->subscription ? $retrieval->subscription->subscription_id : 'N/A',
                'Plan Name' => $retrieval->subscription && $retrieval->subscription->plan ? 
                    ($retrieval->subscription->plan->{"name_{$this->locale}"} ?? $retrieval->subscription->plan->name_en) : 'N/A',
                'Reason' => $retrieval->reason,
                'Status' => ucfirst($retrieval->status),
                'Created At' => $retrieval->created_at->format('Y-m-d H:i:s'),
                'Updated At' => $retrieval->updated_at->format('Y-m-d H:i:s'),
            ];
        })->toArray();

        // Generate filename
        $filename = 'retrievals_export_' . now()->format('Y-m-d_H-i-s') . '.csv';
        $currentUser = auth('api')->user();
        $media = ExportHelper::exportToMedia($data, $currentUser, 'exports', $filename);
        return $media->getFullUrl();
    }

    /**
     * Get retrieval analytics
     */
    public function getRetrievalAnalytics(): array
    {
        $totalRetrievals = Retrieval::count();
        $pendingRetrievals = Retrieval::where('status', 'pending')->count();
        $approvedRetrievals = Retrieval::where('status', 'approved')->count();
        $rejectedRetrievals = Retrieval::where('status', 'rejected')->count();
        
        // Status distribution
        $statusDistribution = Retrieval::select('status', DB::raw('count(*) as count'))
            ->groupBy('status')
            ->get()
            ->pluck('count', 'status')
            ->toArray();
        
        // User type distribution
        $userTypeDistribution = Retrieval::join('users', 'retrievals.user_id', '=', 'users.id')
            ->select('users.type', DB::raw('count(*) as count'))
            ->groupBy('users.type')
            ->get()
            ->pluck('count', 'type')
            ->toArray();

        // Average processing time (for approved/rejected)
        $processedRetrievals = Retrieval::whereIn('status', ['approved', 'rejected'])
            ->whereNotNull('updated_at')
            ->get();

        $averageProcessingTime = 0;
        if ($processedRetrievals->isNotEmpty()) {
            $totalHours = $processedRetrievals->sum(function ($retrieval) {
                return $retrieval->created_at->diffInHours($retrieval->updated_at);
            });
            $averageProcessingTime = round($totalHours / $processedRetrievals->count(), 2);
        }

        return [
            'total_retrievals' => $totalRetrievals,
            'pending_retrievals' => $pendingRetrievals,
            'approved_retrievals' => $approvedRetrievals,
            'rejected_retrievals' => $rejectedRetrievals,
            'status_distribution' => $statusDistribution,
            'user_type_distribution' => $userTypeDistribution,
            'average_processing_time_hours' => $averageProcessingTime,
        ];
    }
}
