<?php

namespace App\Services;

use App\Models\Feedback;
use App\Models\User;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;
use App\Helpers\ExportHelper;
use App\Helpers\PaginationHelper;


class FeedbackService
{
    // indexes
    public function getAllFeedback($data)
    {
        $query = Feedback::with('user');

        // Search functionality
        if (isset($data['search'])) {
            $query->where('comment', 'like', "%{$data['search']}%")
                  ->orWhereHas('user', function ($q) use ($data) {
                      $q->where('fname', 'like', "%{$data['search']}%")
                        ->orWhere('lname', 'like', "%{$data['search']}%")
                        ->orWhere('email', 'like', "%{$data['search']}%");
                  });
        }

        // Filter by rating type
        if (isset($data['rating_type'])) {
            $query->where('rating_type', $data['rating_type']);
        }

        // Filter by rating
        if (isset($data['rating'])) {
            $query->where('rating', $data['rating']);
        }

        // Filter by user type
        if (isset($data['user_type'])) {
            $query->whereHas('user', function ($q) use ($data) {
                $q->where('type', $data['user_type']);
            });
        }

        // Filter by is_active status
        // if (isset($data['is_active'])) {
        //     $query->where('is_active', $data['is_active']);
        // }

        // Sorting
        if (isset($data['sorted_by'])) {
            switch ($data['sorted_by']) {
                case 'fname':
                    $query->orderBy('user.fname', 'asc');
                    break;
                case 'newest':
                    $query->orderBy('created_at', 'desc');
                    break;
                case 'oldest':
                    $query->orderBy('created_at', 'asc');
                    break;
            }
        } 
        return $query;
    }

    // show
    public function getFeedbackById($id)
    {
        $feedback = Feedback::with('user')->find($id);
        
        return $feedback;
    }

    public function createFeedback(array $data)
    {
        return DB::transaction(function () use ($data) {
            // Determine rating type based on rating value
            $data['rating_type'] = $this->determineRatingType($data['rating']);
            
            return Feedback::create($data);
        });
    }

    public function updateFeedback($id, $data)
    {
        return DB::transaction(function () use ($id, $data) {
            $feedback = $this->getFeedbackById($id);
            
            // Update rating type if rating is being updated
            if (isset($data['rating'])) {
                $data['rating_type'] = $this->determineRatingType($data['rating']);
            }
            
            $feedback->update($data);
            return $feedback->fresh();
        });
    }

    public function deleteFeedback($id)
    {
        $feedback = $this->getFeedbackById($id);
        $feedback->delete();
        return true;
    }

  
    public function getFeedbackStats()
    {
        // Get current counts
        $total = Feedback::count();
        $good = Feedback::where('rating_type', 'good')->count();
        $bad = Feedback::where('rating_type', 'bad')->count();
        $active = Feedback::where('is_active', true)->count();
        $inactive = Feedback::where('is_active', false)->count();
        $withComments = Feedback::whereNotNull('comment')->count();
        $anonymous = Feedback::whereNull('user_id')->count();

        // Get previous month counts for percentage calculation
        $previousMonth = now()->subMonth();
        $totalPrevious = Feedback::where('created_at', '<=', $previousMonth)->count();
        $goodPrevious = Feedback::where('rating_type', 'good')
            ->where('created_at', '<=', $previousMonth)
            ->count();
        $badPrevious = Feedback::where('rating_type', 'bad')
            ->where('created_at', '<=', $previousMonth)
            ->count();

        // Calculate percentage changes
        $totalChange = $this->calculatePercentageChange($totalPrevious, $total);
        $goodChange = $this->calculatePercentageChange($goodPrevious, $good);
        $badChange = $this->calculatePercentageChange($badPrevious, $bad);

        // Get monthly data for charts (last 12 months)
        $monthlyData = $this->getMonthlyData();

        return [
            'total' => [
                'count' => $total,
                'change_percentage' => $totalChange['percentage'],
                'change_direction' => $totalChange['direction'],
                'monthly_data' => $monthlyData['total']
            ],
            'good' => [
                'count' => $good,
                'change_percentage' => $goodChange['percentage'],
                'change_direction' => $goodChange['direction'],
                'monthly_data' => $monthlyData['good']
            ],
            'bad' => [
                'count' => $bad,
                'change_percentage' => $badChange['percentage'],
                'change_direction' => $badChange['direction'],
                'monthly_data' => $monthlyData['bad']
            ],
            'active' => [
                'count' => $active,
                'percentage' => $total > 0 ? round(($active / $total) * 100, 2) : 0
            ],
            'inactive' => [
                'count' => $inactive,
                'percentage' => $total > 0 ? round(($inactive / $total) * 100, 2) : 0
            ],
        ];
    }

    public function getFeedbackByUser($userId)
    {
        return Feedback::where('user_id', $userId)
                      ->orderBy('created_at', 'desc');
    }
    
    public function activationToggle($ids)
    {
        $feedbacks = Feedback::whereIn('id', $ids)->get();
        foreach($feedbacks as $feedback){
            $feedback->is_active = !$feedback->is_active;
            $feedback->save();
        }
        return true;
    }

    public function bulkDelete($ids)
    {
        $feedbacks = Feedback::whereIn('id', $ids)->get();
        foreach($feedbacks as $feedback){
            $feedback->delete();
        }
        return true;
    }

    public function export($ids)
    {
        $feedbacks = Feedback::whereIn('id', $ids)->with(['user'])->get();
        $data = [];
        foreach($feedbacks as $feedback){
            $data[] = [
                'user_id' => $feedback->user?->fname . ' ' . $feedback->user?->lname,
                'user_email' => $feedback->user?->email,
                'user_type' => $feedback->user?->type,
                'comment' => $feedback->comment,
                'rating' => $feedback->rating,
                'rating_type' => $feedback->rating_type,
                'is_active' => $feedback->is_active ? 'Active' : 'Inactive',
                'created_at' => $feedback->created_at?->format('Y-m-d H:i:s'),
            ];
        }
        
        $currentUser = auth('api')->user();

        $filename = 'feedback_export_' . now()->format('Ymd_His') . '.csv';
        $media = ExportHelper::exportToMedia($data, $currentUser, 'exports', $filename);
        return $media->getFullUrl();
    }


    private function determineRatingType($rating)
    {
        return (int)$rating >= 3 ? 'good' : 'bad';
    }

    private function calculatePercentageChange($previous, $current)
    {
        if ($previous == 0) {
            return [
                'percentage' => $current > 0 ? 100 : 0,
                'direction' => $current > 0 ? 'up' : 'down'
            ];
        }

        $percentage = (($current - $previous) / $previous) * 100;
        
        return [
            'percentage' => round(abs($percentage), 2),
            'direction' => $percentage >= 0 ? 'up' : 'down'
        ];
    }

    private function getMonthlyData()
    {
        $months = [];
        $totalData = [];
        $goodData = [];
        $badData = [];

        // Get data for last 12 months
        for ($i = 11; $i >= 0; $i--) {
            $date = now()->subMonths($i);
            $endOfMonth = $date->copy()->endOfMonth();

            $months[] = $date->format('M Y');

            // Count feedback created up to this month
            $totalData[] = Feedback::where('created_at', '<=', $endOfMonth)->count();
            $goodData[] = Feedback::where('rating_type', 'good')
                ->where('created_at', '<=', $endOfMonth)
                ->count();
            $badData[] = Feedback::where('rating_type', 'bad')
                ->where('created_at', '<=', $endOfMonth)
                ->count();
        }

        return [
            'months' => $months,
            'total' => $totalData,
            'good' => $goodData,
            'bad' => $badData
        ];
    }

    private function getRatingDistribution()
    {
        $distribution = [];
        
        for ($i = 1; $i <= 5; $i++) {
            $count = Feedback::where('rating', $i)->count();
            $distribution[] = [
                'rating' => $i,
                'count' => $count,
                'percentage' => Feedback::count() > 0 ? round(($count / Feedback::count()) * 100, 2) : 0
            ];
        }
        
        return $distribution;
    }
}
