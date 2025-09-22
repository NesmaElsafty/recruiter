<?php

namespace App\Services;

use App\Models\Interview;
use App\Models\User;
use App\Helpers\ExportHelper;
use Illuminate\Support\Facades\DB;

class InterviewService
{
    public function getAllInterviews($data)
    {
        $query = Interview::with(['user.major']);

        if (isset($data['search']) && !empty($data['search'])) {
            $searchTerm = $data['search'];
            $query->where(function ($q) use ($searchTerm) {
                $q->where('id', 'like', "%{$searchTerm}%")
                  ->orWhere('interview_id', 'like', "%{$searchTerm}%")
                  ->orWhere('performance', 'like', "%{$searchTerm}%")
                  ->orWhereHas('user', function ($userQuery) use ($searchTerm) {
                      $userQuery->where('fname', 'like', "%{$searchTerm}%")
                               ->orWhere('lname', 'like', "%{$searchTerm}%")
                               ->orWhereHas('major', function ($majorQuery) use ($searchTerm) {
                                   $majorQuery->where('name_en', 'like', "%{$searchTerm}%")
                                            ->orWhere('name_ar', 'like', "%{$searchTerm}%");
                               });
                  });
            });
        }

        // Status filter
        if (isset($data['status']) && !empty($data['status'])) {
            $query->where('status', $data['status']);
        }

        // Sorting
        if (isset($data['sorted_by']) && !empty($data['sorted_by'])) {
            switch ($data['sorted_by']) {
                case 'name':
                    $query->join('users', 'interviews.user_id', '=', 'users.id')
                          ->orderBy('users.fname', 'asc')
                          ->select('interviews.*');
                    break;
                case 'major_en':
                    $query->join('users', 'interviews.user_id', '=', 'users.id')
                          ->join('majors', 'users.major_id', '=', 'majors.id')
                          ->orderBy('majors.name_en', 'asc')
                          ->select('interviews.*');
                    break;
                case 'major_ar':
                    $query->join('users', 'interviews.user_id', '=', 'users.id')
                          ->join('majors', 'users.major_id', '=', 'majors.id')
                          ->orderBy('majors.name_ar', 'asc')
                          ->select('interviews.*');
                    break;
                case 'oldest':
                    $query->orderBy('created_at', 'asc');
                    break;
                case 'newest':
                default:
                    $query->orderBy('created_at', 'desc');
                    break;
            }
        } else {
            // Default sorting by newest
            $query->orderBy('created_at', 'desc');
        }

        return $query;
    }

    public function getInterviewStats()
    {
        // Get basic counts
        $totalInterviews = Interview::count();
        $completedInterviews = Interview::where('status', 'completed')->count();

        // Calculate average performance from completed interviews
        $performanceStats = Interview::where('status', 'completed')
            ->whereNotNull('performance')
            ->get()
            ->map(function ($interview) {
                // Extract numeric value from performance string (e.g., "85%" -> 85)
                $performance = (int) filter_var($interview->performance, FILTER_SANITIZE_NUMBER_INT);
                return $performance;
            });

        $averagePerformance = $performanceStats->count() > 0 
            ? round($performanceStats->avg(), 2) 
            : 0;

        // Get current month and last month data for comparison
        $currentMonth = now()->format('Y-m');
        $lastMonth = now()->subMonth()->format('Y-m');

        // Current month data
        $currentMonthData = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$currentMonth])->count();
        $currentMonthCompleted = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$currentMonth])
            ->where('status', 'completed')->count();

        // Last month data
        $lastMonthData = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$lastMonth])->count();
        $lastMonthCompleted = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$lastMonth])
            ->where('status', 'completed')->count();

        // Calculate percentage changes
        $totalChange = $this->calculatePercentageChange($lastMonthData, $currentMonthData);
        $completedChange = $this->calculatePercentageChange($lastMonthCompleted, $currentMonthCompleted);

        // Get performance comparison (current month vs last month)
        $currentMonthPerformance = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$currentMonth])
            ->where('status', 'completed')
            ->whereNotNull('performance')
            ->get()
            ->map(function ($interview) {
                return (int) filter_var($interview->performance, FILTER_SANITIZE_NUMBER_INT);
            });

        $lastMonthPerformance = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$lastMonth])
            ->where('status', 'completed')
            ->whereNotNull('performance')
            ->get()
            ->map(function ($interview) {
                return (int) filter_var($interview->performance, FILTER_SANITIZE_NUMBER_INT);
            });

        $currentAvgPerformance = $currentMonthPerformance->count() > 0 ? round($currentMonthPerformance->avg(), 2) : 0;
        $lastAvgPerformance = $lastMonthPerformance->count() > 0 ? round($lastMonthPerformance->avg(), 2) : 0;
        $performanceChange = $this->calculatePercentageChange($lastAvgPerformance, $currentAvgPerformance);

        // Get chart data for the last 6 months
        $chartData = $this->getChartData();

        return [
            'total_interviews' => $totalInterviews,
            'completed_interviews' => $completedInterviews,
            'average_performance' => $averagePerformance,
            'changes' => [
                'total_change' => $totalChange,
                'completed_change' => $completedChange,
                'performance_change' => $performanceChange,
            ],
            'chart_data' => $chartData,
        ];
    }

    /**
     * Calculate percentage change between two values
     */
    private function calculatePercentageChange($oldValue, $newValue)
    {
        if ($oldValue == 0) {
            return $newValue > 0 ? 100 : 0;
        }
        
        $change = (($newValue - $oldValue) / $oldValue) * 100;
        return round($change, 2);
    }

    /**
     * Get chart data for the last 6 months
     */
    private function getChartData()
    {
        $months = [];
        $totalData = [];
        $completedData = [];
        $performanceData = [];

        for ($i = 5; $i >= 0; $i--) {
            $month = now()->subMonths($i);
            $monthKey = $month->format('Y-m');
            $monthName = $month->format('M Y');
            
            $months[] = $monthName;
            
            // Get total interviews for this month
            $total = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$monthKey])->count();
            $totalData[] = $total;
            
            // Get completed interviews for this month
            $completed = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$monthKey])
                ->where('status', 'completed')->count();
            $completedData[] = $completed;
            
            // Get average performance for this month
            $performance = Interview::whereRaw('DATE_FORMAT(created_at, "%Y-%m") = ?', [$monthKey])
                ->where('status', 'completed')
                ->whereNotNull('performance')
                ->get()
                ->map(function ($interview) {
                    return (int) filter_var($interview->performance, FILTER_SANITIZE_NUMBER_INT);
                });
            
            $avgPerformance = $performance->count() > 0 ? round($performance->avg(), 2) : 0;
            $performanceData[] = $avgPerformance;
        }

        return [
            'total_interviews' => $totalData,
            'completed_interviews' => $completedData,
            'average_performance' => $performanceData,
        ];
    }

    public function export($ids)
    {
        $interviews = Interview::with(['user.major'])
            ->whereIn('id', $ids)
            ->get();

        $csvData = [];
        foreach ($interviews as $interview) {
            $csvData[] = [
                'ID' => $interview->id,
                'Interview ID' => $interview->interview_id,
                'Candidate Name' => $interview->user ? $interview->user->fname . ' ' . $interview->user->lname : 'N/A',
                'Candidate Email' => $interview->user ? $interview->user->email : 'N/A',
                'Major (English)' => $interview->user && $interview->user->major ? $interview->user->major->name_en : 'N/A',
                'Major (Arabic)' => $interview->user && $interview->user->major ? $interview->user->major->name_ar : 'N/A',
                'Performance' => $interview->performance ?? 'N/A',
                'Status' => ucfirst($interview->status),
                'Created At' => $interview->created_at->format('Y-m-d H:i:s'),
            ];
        }

       $currentUser = auth('api')->user();

        $filename = 'interview_export_' . now()->format('Ymd_His') . '.csv';
        $media = ExportHelper::exportToMedia($csvData, $currentUser, 'exports', $filename);
        return $media->getFullUrl();    
    }

    public function getInterviewById($id)
    {
        return Interview::with(['user.major'])->findOrFail($id);
    }
}
