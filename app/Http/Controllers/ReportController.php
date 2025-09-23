<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Services\ReportService;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    protected $reportService;

    public function __construct(ReportService $reportService)
    {
        $this->reportService = $reportService;
    }

    public function getUserActivityByDateRange(Request $request)
    {
        try {
            $from = $request->from ?? now()->subMonth()->toDateString();
            $to = $request->to ?? now()->toDateString();

            $data = $this->reportService->getUserActivityByDateRange($from, $to);

            return response()->json([
                'success' => true,
                'data' => $data,
                'message' => 'User activity by date range retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve user activity by date range',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getInterviewStatusByDateRange(Request $request)
    {
        try {
            $from = $request->from ?? now()->subMonth()->toDateString();
            $to = $request->to ?? now()->toDateString();

            $data = $this->reportService->getInterviewStatusByDateRange($from, $to);

            return response()->json([
                'success' => true,
                'data' => $data,
                'message' => 'Interview status by date range retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve interview status by date range',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getCandidateMajorsByDateRange(Request $request)
    {
        try {
            $from = $request->from ?? now()->subMonth()->toDateString();
            $to = $request->to ?? now()->toDateString();
            $limit = (int) ($request->limit ?? 5);

            $data = $this->reportService->getCandidateMajorsByDateRange($from, $to, $limit);

            return response()->json([
                'success' => true,
                'data' => $data,
                'message' => 'Candidate majors by date range retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve candidate majors by date range',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getCandidateCitiesByDateRange(Request $request)
    {
        try {
            $from = $request->from ?? now()->subMonth()->toDateString();
            $to = $request->to ?? now()->toDateString();
            $limit = (int) ($request->limit ?? 5);

            $data = $this->reportService->getCandidateCitiesByDateRange($from, $to, $limit);

            return response()->json([
                'success' => true,
                'data' => $data,
                'message' => 'Candidate cities by date range retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve candidate cities by date range',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getInterviewPerformanceByDateRange(Request $request)
    {
        try {
            $from = $request->from ?? now()->subMonth()->toDateString();
            $to = $request->to ?? now()->toDateString();

            $data = $this->reportService->getInterviewPerformanceByDateRange($from, $to);

            return response()->json([
                'success' => true,
                'data' => $data,
                'message' => 'Interview performance by date range retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve interview performance by date range',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getSubscriptionsByDateRange(Request $request)
    {
        try {
            $from = $request->from ?? now()->subMonth()->toDateString();
            $to = $request->to ?? now()->toDateString();

            $data = $this->reportService->getSubscriptionsByDateRange($from, $to);

            return response()->json([
                'success' => true,
                'data' => $data,
                'message' => 'Subscriptions by date range retrieved successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve subscriptions by date range',
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
}
