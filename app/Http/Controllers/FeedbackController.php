<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Services\FeedbackService;
use App\Http\Resources\FeedbackResource;
use App\Helpers\PaginationHelper;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Validation\ValidationException;
use Exception;
use App\Models\Feedback;
use App\Helpers\LocalizationHelper;

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
            $user = auth('api')->user();
            $stats = [];
            $stats = null;            
            if($user && $user->type == 'admin') {
                $stats = $this->feedbackService->getFeedbackStats();
            }

            $feedbacks = $this->feedbackService->getAllFeedback($data)->paginate(15);
            return response()->json([
                'success' => true,
                'data' => FeedbackResource::collection($feedbacks),
                'stats' => $stats,
                'pagination' => PaginationHelper::paginate($feedbacks)
            ]);
        } catch (\Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_fetch_feedback',
                $e->getMessage(),
                500
            );
        }
    }

    public function store(Request $request): JsonResponse
    {
        try {
            $validated = $request->validate([
                'comment' => 'nullable|string|max:1000',
                'rating' => 'required|integer|min:1|max:5'
            ]);

            $user = auth('api')->user();
            $validated['user_id'] = $user->id;
            $feedback = $this->feedbackService->createFeedback($validated);

            return LocalizationHelper::successResponse(
                'feedback_created_successfully',
                new FeedbackResource($feedback),
                201
            );
        }  catch (\Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_create_feedback',
                $e->getMessage(),
                500
            );
        }
    }

    public function show($id): JsonResponse
    {
        try {
            $feedback = $this->feedbackService->getFeedbackById($id);
            $user = auth('api')->user();
            if($user && $user->type != 'admin' && $feedback->user_id != $user->id) {
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_view_feedback',
                    null,
                    401
                );
            }
            return response()->json([
                'success' => true,
                'data' => new FeedbackResource($feedback)
            ]);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return LocalizationHelper::errorResponse(
                'feedback_not_found',
                null,
                404
            );
        } catch (\Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_fetch_feedback',
                $e->getMessage(),
                500
            );
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
            
            return LocalizationHelper::successResponse(
                'feedback_updated_successfully',
                new FeedbackResource($feedback)
            );
        }  catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return LocalizationHelper::errorResponse(
                'feedback_not_found',
                null,
                404
            );
        } catch (\Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_update_feedback',
                $e->getMessage(),
                500
            );
        }
    }

    public function destroy($id): JsonResponse
    {
        try {
            $this->feedbackService->deleteFeedback($id);
            
            return LocalizationHelper::successResponse(
                'feedback_deleted_successfully'
            );
        }  catch (\Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_delete_feedback',
                $e->getMessage(),
                500
            );
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
            return LocalizationHelper::successResponse(
                'bulk_actions_performed_successfully',
                null,
                200,
                ['url' => $request->action == 'export' ? $result : null]
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_bulk_actions',
                $e->getMessage(),
                500
            );
        }
    }
}
