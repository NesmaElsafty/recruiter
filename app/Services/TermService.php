<?php

namespace App\Services;

use App\Models\Term;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;

class TermService
{
    /**
     * Get all terms with filtering and pagination
     */
    public function getAllTerms($data)
    {
        $query = Term::query();

        $query->whereIn('type', $data['type']);

        if($data['user_type'] == 'all') {
            $query->whereIn('user_type', ['candidate', 'recruiter']);
        } else {
            $query->where('user_type', $data['user_type']);
        }
        // Search functionality
        if (isset($data['search'])) {
            $query->where('title_en', 'like', "%{$data['search']}%")
                  ->orWhere('title_ar', 'like', "%{$data['search']}%")
                  ->orWhere('description_en', 'like', "%{$data['search']}%")
                  ->orWhere('description_ar', 'like', "%{$data['search']}%");
        }

        // Filter by is_active status
        if (isset($data['is_active']) && $data['is_active'] !== 'all') {
            $query->where('is_active', $data['is_active']);
        }

        // Sorting
        if (isset($data['sorted_by'])) {
            switch ($data['sorted_by']) {
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

    /**
     * Get term by ID
     */
    public function getTermById($id)
    {
        $term = Term::find($id);
        
        if (!$term) {
            throw new ModelNotFoundException('Term not found');
        }
        
        return $term;
    }

    /**
     * Create new term
     */
    public function createTerm(array $data)
    {
        return DB::transaction(function () use ($data) {
            return Term::create($data);
        });
    }

    /**
     * Update term
     */
    public function updateTerm($id, $data)
    {
        return DB::transaction(function () use ($id, $data) {
            $term = $this->getTermById($id);
            $term->update($data);
            return $term->fresh();
        });
    }

    /**
     * Delete term
     */
    public function deleteTerm($id)
    {
        $term = $this->getTermById($id);
        $term->delete();
        return true;
    }

    /**
     * Get terms by type
     */
    public function getTermsByType($type)
    {
        return Term::where('type', $type)
                  ->where('is_active', true)
                  ->orderBy('created_at', 'desc')
                  ->get();
    }

    /**
     * Get terms by user type
     */
    public function getTermsByUserType($userType)
    {
        return Term::where('user_type', $userType)
                  ->where('is_active', true)
                  ->orderBy('created_at', 'desc')
                  ->get();
    }

    /**
     * Get terms statistics
     */
    public function getTermsStats()
    {
        // Get current counts
        $total = Term::count();
        $terms = Term::where('type', 'terms')->count();
        $privacyPolicy = Term::where('type', 'privacy_policy')->count();
        $faq = Term::where('type', 'faq')->count();
        $active = Term::where('is_active', true)->count();
        $inactive = Term::where('is_active', false)->count();

        // Get previous month counts for percentage calculation
        $previousMonth = now()->subMonth();
        $totalPrevious = Term::where('created_at', '<=', $previousMonth)->count();
        $activePrevious = Term::where('is_active', true)
            ->where('created_at', '<=', $previousMonth)
            ->count();

        // Calculate percentage changes
        $totalChange = $this->calculatePercentageChange($totalPrevious, $total);
        $activeChange = $this->calculatePercentageChange($activePrevious, $active);

        // Get monthly data for charts (last 12 months)
        $monthlyData = $this->getMonthlyData();

        return [
            'total' => [
                'count' => $total,
                'change_percentage' => $totalChange['percentage'],
                'change_direction' => $totalChange['direction'],
                'monthly_data' => $monthlyData['total']
            ],
            'terms' => [
                'count' => $terms,
                'percentage' => $total > 0 ? round(($terms / $total) * 100, 2) : 0
            ],
            'privacy_policy' => [
                'count' => $privacyPolicy,
                'percentage' => $total > 0 ? round(($privacyPolicy / $total) * 100, 2) : 0
            ],
            'faq' => [
                'count' => $faq,
                'percentage' => $total > 0 ? round(($faq / $total) * 100, 2) : 0
            ],
            'active' => [
                'count' => $active,
                'change_percentage' => $activeChange['percentage'],
                'change_direction' => $activeChange['direction'],
                'percentage' => $total > 0 ? round(($active / $total) * 100, 2) : 0
            ],
            'inactive' => [
                'count' => $inactive,
                'percentage' => $total > 0 ? round(($inactive / $total) * 100, 2) : 0
            ],
        ];
    }

    /**
     * Bulk delete terms
     */
    public function bulkDeleteTerms($ids)
    {
        return DB::transaction(function () use ($ids) {
            Term::whereIn('id', $ids)->delete();
            return true;
        });
    }

    /**
     * Toggle active status for multiple terms
     */
    public function activationToggle($ids)
    {
        return DB::transaction(function () use ($ids) {
            $terms = Term::whereIn('id', $ids)->get();
            foreach ($terms as $term) {
                $term->is_active = !$term->is_active;
                $term->save();
            }
            return true;
        });
    }

    /**
     * Export terms data
     */
    public function exportTerms($ids = null, $filters = [])
    {
        $query = Term::query();
        
        if ($ids) {
            $query->whereIn('id', $ids);
        }
        
        // Apply filters
        if (isset($filters['type'])) {
            $query->where('type', $filters['type']);
        }
        
        if (isset($filters['user_type'])) {
            $query->where('user_type', $filters['user_type']);
        }
        
        if (isset($filters['is_active'])) {
            $query->where('is_active', $filters['is_active']);
        }
        
        if (isset($filters['date_from'])) {
            $query->whereDate('created_at', '>=', $filters['date_from']);
        }
        
        if (isset($filters['date_to'])) {
            $query->whereDate('created_at', '<=', $filters['date_to']);
        }
        
        $terms = $query->orderBy('created_at', 'desc')->get();
        
        return $terms;
    }

    /**
     * Calculate percentage change
     */
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

    /**
     * Get monthly data for charts
     */
    private function getMonthlyData()
    {
        $months = [];
        $totalData = [];
        $activeData = [];
        $inactiveData = [];

        // Get data for last 12 months
        for ($i = 11; $i >= 0; $i--) {
            $date = now()->subMonths($i);
            $endOfMonth = $date->copy()->endOfMonth();

            $months[] = $date->format('M Y');

            // Count terms created up to this month
            $totalData[] = Term::where('created_at', '<=', $endOfMonth)->count();
            $activeData[] = Term::where('is_active', true)
                ->where('created_at', '<=', $endOfMonth)
                ->count();
            $inactiveData[] = Term::where('is_active', false)
                ->where('created_at', '<=', $endOfMonth)
                ->count();
        }

        return [
            'months' => $months,
            'total' => $totalData,
            'active' => $activeData,
            'inactive' => $inactiveData
        ];
    }
}
