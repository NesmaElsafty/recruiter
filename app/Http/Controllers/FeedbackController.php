<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Services\FeedbackService;
use App\Http\Resources\FeedbackResource;
use App\Helpers\PaginationHelper;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Validation\ValidationException;

class FeedbackController extends Controller
{
    protected $feedbackService;

    public function __construct(FeedbackService $feedbackService)
    {
        $this->feedbackService = $feedbackService;
    }

    public function index(Request $request)
    {
        try {
            $data = $request->all();
            $feedbacks = $this->feedbackService->getAllFeedback($data)->paginate(15);
            $user = auth()->user();
            $stats = null;
            if($user->type == 'admin') {
                $stats = $this->feedbackService->getFeedbackStats();
            }
            return response()->json([
                'success' => true,
                'data' => FeedbackResource::collection($feedbacks),
                'stats' => $stats,
                'pagination' => PaginationHelper::paginate($feedbacks)
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch feedback',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request): JsonResponse
    {
        try {
            $validated = $request->validate([
                'user_id' => 'nullable|exists:users,id',
                'comment' => 'nullable|string|max:1000',
                'rating' => 'required|integer|min:1|max:5'
            ]);

            $feedback = $this->feedbackService->createFeedback($validated);
            
            return response()->json([
                'success' => true,
                'message' => 'Feedback created successfully',
                'data' => new FeedbackResource($feedback)
            ], 201);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to create feedback',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show($id): JsonResponse
    {
        try {
            $feedback = $this->feedbackService->getFeedbackById($id);
            
            return response()->json([
                'success' => true,
                'data' => new FeedbackResource($feedback)
            ]);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Feedback not found'
            ], 404);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch feedback',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function update(Request $request, $id): JsonResponse
    {
        try {
            $validated = $request->validate([
                'comment' => 'nullable|string|max:1000',
                'rating' => 'sometimes|integer|min:1|max:5'
            ]);

            $feedback = $this->feedbackService->updateFeedback($id, $validated);
            
            return response()->json([
                'success' => true,
                'message' => 'Feedback updated successfully',
                'data' => new FeedbackResource($feedback)
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Feedback not found'
            ], 404);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update feedback',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id): JsonResponse
    {
        try {
            $this->feedbackService->deleteFeedback($id);
            
            return response()->json([
                'success' => true,
                'message' => 'Feedback deleted successfully'
            ]);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Feedback not found'
            ], 404);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete feedback',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function bulkActions(Request $request)
    {
        try {
            $request->validate([
                'ids' => 'nullable|array',
                'ids.*' => 'required|exists:users,id',
                'action' => 'required|string|in:activationToggle,delete,export',
            ]);

            $ids = [];
            if(isset($request->ids)) {
                $ids = $request->ids;
            }else{
                $ids = Feedback::pluck('id')->toArray();
            }

            switch($request->action) {
                case 'activationToggle':
                    $result = $this->feedbackService->activationToggle($ids);
                    break;
                case 'delete':
                    $result = $this->feedbackService->bulkDelete($ids);
                    break;
                case 'export':
                    $result = $this->feedbackService->export($ids);
                    break;
            }
            return response()->json([
                'success' => true,
                'message' => 'Bulk actions performed successfully',
                'url' => $request->action == 'export' ? $result: null
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to bulk actions',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
