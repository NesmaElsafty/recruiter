<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Services\PlanService;
use App\Http\Resources\PlanResource;
use App\Helpers\PaginationHelper;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Models\Feature;

class PlanController extends Controller
{
    protected $planService;

    public function __construct(PlanService $planService)
    {
        $this->planService = $planService;
    }

    public function index(Request $request)
    {
        $data = $request->all();

        $user = auth('api')->user();

        if($user && $user->type == 'admin') {
            $plans = $this->planService->getAllPlans($data)->paginate(15);
        }else{
            $request->validate([
                'type' => 'required|string|in:candidate,recruiter',
            ]);
            $type = $request->type;
            $plans = $this->planService->getAllPlansByType($type)->paginate(15);
        }


        return response()->json([
            'success' => true,
            'data' => PlanResource::collection($plans),
            'pagination' => PaginationHelper::paginate($plans)
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name_en' => 'required|string|max:255',
            'name_ar' => 'required|string|max:255',
            'description_en' => 'nullable|string',
            'description_ar' => 'nullable|string',
            'price' => 'nullable|numeric|min:0',
            'duration' => 'nullable|integer|min:1',
            'duration_type' => 'nullable|in:monthly,yearly',
            'type' => 'nullable|in:candidate,recruiter',
            'is_active' => 'boolean',
            'features' => 'nullable|array',
            'features.*' => 'integer|exists:features,id',
        ]);

        $user = auth('api')->user();
        if($user->type != 'admin') {
            return response()->json([
                'success' => false,
                'message' => 'Unauthorized'
            ], 401);
        }

        $plan = $this->planService->createPlan($validated);

        return response()->json([
            'success' => true,
            'message' => 'Plan created successfully',
            'data' => new PlanResource($plan)
        ], 201);
    }

    public function show($id)
    {
        $plan = $this->planService->getPlanById($id);
        return response()->json([
            'success' => true,
            'data' => new PlanResource($plan)
        ]);
    }

    public function update(Request $request, $id)
    {
        $user = auth('api')->user();
        if($user->type != 'admin') {
            return response()->json([
                'success' => false,
                'message' => 'Unauthorized'
            ], 401);
        }
        $validated = $request->validate([
            'features' => 'nullable|array',
            'features.*' => 'integer|exists:features,id',
        ]);
        $plan = $this->planService->updatePlan($id, $request->all());

        return response()->json([
            'success' => true,
            'message' => 'Plan updated successfully',
            'data' => new PlanResource($plan)
        ]);
    }

    public function destroy($id)
    {
        $this->planService->deletePlan($id);
        return response()->json([
            'success' => true,
            'message' => 'Plan deleted successfully'
        ]);
    }

    // features
    public function features()
    {
        try{
            $features = Feature::select('id', 'name_en', 'name_ar')->get();
            return response()->json([
                'success' => true,
                'data' => $features
            ]);
        }catch(\Exception $e){
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 500);
        }
    }

    // bulk Actions
    public function bulkActions(Request $request)
    {
        try{
            $validated = $request->validate([
                'ids' => 'required|array|min:1',
                'ids.*' => 'integer|exists:plans,id',
                'action' => 'required|string|in:delete,activationToggle,export'
            ]);

            $ids = [];
            if(isset($validated['ids'])){
                $ids = $validated['ids'];
            }else{
                $ids = Plan::pluck('id')->toArray();
            }

            switch($validated['action']){
                case 'delete':
                    $result = $this->planService->bulkDelete($validated['ids']);
                    break;
                case 'activationToggle':
                    $result = $this->planService->activationToggle($validated['ids']);
                    break;
                case 'export':
                    $result = $this->planService->export($validated['ids']);
                    break;
            }

            return response()->json([
                'success' => true,
                'message' => 'Bulk actions performed successfully',
                'url' => $validated['action'] == 'export' ? $result: null
            ]);
        }catch(\Exception $e){
            return response()->json([
                'success' => false,
                'message' => 'Failed to bulk actions',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function bulkDelete(Request $request)
    {
        $validated = $request->validate([
            'ids' => 'required|array|min:1',
            'ids.*' => 'integer|exists:plans,id'
        ]);

        $this->planService->bulkDeletePlans($validated['ids']);
        return response()->json([
            'success' => true,
            'message' => 'Plans deleted successfully'
        ]);
    }

    public function activationToggle(Request $request)
    {
        $validated = $request->validate([
            'ids' => 'required|array|min:1',
            'ids.*' => 'integer|exists:plans,id'
        ]);

        $this->planService->activationToggle($validated['ids']);
        return response()->json([
            'success' => true,
            'message' => 'Plans status updated successfully'
        ]);
    }

    public function export(Request $request)
    {
        $validated = $request->validate([
            'ids' => 'nullable|array',
            'ids.*' => 'integer|exists:plans,id',
            'type' => 'nullable|in:candidate,recruiter',
            'duration_type' => 'nullable|in:monthly,yearly',
            'is_active' => 'nullable|boolean',
            'date_from' => 'nullable|date',
            'date_to' => 'nullable|date'
        ]);

        $filters = array_filter($validated, function($key) {
            return in_array($key, ['type', 'is_active', 'date_from', 'date_to']);
        }, ARRAY_FILTER_USE_KEY);

        $plans = $this->planService->exportPlans($validated['ids'] ?? null, $filters);
        return response()->json([
            'success' => true,
            'data' => PlanResource::collection($plans)
        ]);
    }
}


