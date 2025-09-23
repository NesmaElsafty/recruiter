<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Services\DashboardService;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Models\Subscription;
use App\Http\Resources\SubscriptionResource;

class DashboardController extends Controller
{
    protected $dashboardService;

    public function __construct(DashboardService $dashboardService)
    {
        $this->dashboardService = $dashboardService;
    }


    public function getDashboardStats()
    {
        try {
            $stats = $this->dashboardService->getDashboardStats();
            
            return response()->json([
                'success' => true,
                'data' => $stats,
                'message' => 'Dashboard statistics retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve dashboard statistics',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getUserActivity(Request $request)
    {
        try {
            $period = $request->get('period'); // daily, weekly, monthly, yearly
            
            // Validate period parameter
            $allowedPeriods = ['daily', 'weekly', 'monthly', 'yearly'];
            if (!in_array($period, $allowedPeriods)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid period. Allowed values: ' . implode(', ', $allowedPeriods)
                ], 400);
            }
            
            $activityData = $this->dashboardService->getUserActivity($period);
            
            return response()->json([
                'success' => true,
                'data' => $activityData,
                'message' => 'User activity data retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve user activity data',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getSubscriptionActivity(Request $request)
    {
        try {
            $period = $request->get('period'); // daily, weekly, monthly, yearly

            $allowedPeriods = ['daily', 'weekly', 'monthly', 'yearly'];
            if (!in_array($period, $allowedPeriods)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid period. Allowed values: ' . implode(', ', $allowedPeriods)
                ], 400);
            }

            $activityData = $this->dashboardService->getSubscriptionActivity($period);

            return response()->json([
                'success' => true,
                'data' => $activityData,
                'message' => 'Subscription activity data retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve subscription activity data',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getInterviewActivity(Request $request)
    {
        try {
            $period = $request->get('period'); // daily, weekly, monthly, yearly

            $allowedPeriods = ['daily', 'weekly', 'monthly', 'yearly'];
            if (!in_array($period, $allowedPeriods)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid period. Allowed values: ' . implode(', ', $allowedPeriods)
                ], 400);
            }

            $activityData = $this->dashboardService->getInterviewActivity($period);

            return response()->json([
                'success' => true,
                'data' => $activityData,
                'message' => 'Interview activity data retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve interview activity data',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // get last 5 subscriptions
    public function getLast5Subscriptions()
    {
        try {
        $subscriptions = Subscription::orderBy('updated_at', 'desc')->take(5)->get();
        return response()->json([
            'success' => true,
                'data' => SubscriptionResource::collection($subscriptions),
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve last 5 subscriptions',
                'error' => $e->getMessage()
            ], 500);
        }
    }

}
