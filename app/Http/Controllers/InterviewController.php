<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Interview;
use App\Http\Resources\InterviewResource;
use App\Services\InterviewService;
use Exception;
use App\Helpers\PaginationHelper;


class InterviewController extends Controller
{
    //
    protected $interviewService;

    public function __construct(InterviewService $interviewService)
    {
        $this->interviewService = $interviewService;
    }

    public function index(Request $request)
    {
        try {
            $data = $request->all();
            $stats = [];
            $user = auth('api')->user();
            $interviews = Interview::where('user_id', $user->id)->paginate(15);
            
            if($user->type == 'admin') {
                $interviews = $this->interviewService->getAllInterviews($data)->paginate(15);
                $stats = $this->interviewService->getInterviewStats();
            }

            return response()->json([
                'status' => 'success',
                'data' => InterviewResource::collection($interviews),
                'pagination' => PaginationHelper::paginate($interviews),
                'stats' => $stats
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Failed to retrieve interviews',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // export
    public function export(Request $request)
    {
        try {
           request()->validate([
            'ids' => 'nullable|array',
            'ids.*' => 'required|integer|exists:interviews,id',
           ]);

           $ids = [];
           if(isset($request->ids) && !empty($request->ids)) {
            $ids = $request->ids;
           }else{
            $ids = Interview::pluck('id')->toArray();
            
           }

           $interviews = $this->interviewService->export($ids);

           return response()->json([
            'status' => 'success',
            'url' => $interviews
           ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Failed to export interviews',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // show 
    public function show(Request $request)
    {
        try {
            $interview = $this->interviewService->getInterviewById($request->id);
            return response()->json([
                'status' => 'success',
                'data' => new InterviewResource($interview)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Failed to show interview',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
