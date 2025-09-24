<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Helpers\LocalizationHelper;
use Illuminate\Http\Request;
use App\Models\Retrieval;
use App\Http\Resources\RetrievalResource;
use App\Services\RetrievalService;
use App\Helpers\PaginationHelper;
use Exception;
use App\Models\Subscription;

class RetrievalController extends Controller
{
    protected $retrievalService;

    public function __construct(RetrievalService $retrievalService)
    {
        $this->retrievalService = $retrievalService;
    }
    
    public function index(Request $request)
    {
        try {
            $user = auth('api')->user();
        
            $retrievals = $this->retrievalService->getAllRetrievalsByUserId($user->id)->paginate(10);
            
            if($user->type == 'admin') {
                $retrievals = $this->retrievalService->getAllRetrievals($request->all())->paginate(10);
            }

            return LocalizationHelper::successResponse(
                'retrievals_retrieved_successfully',
                RetrievalResource::collection($retrievals),
                200,
                [
                    'pagination' => PaginationHelper::paginate($retrievals),
                ]
            );
        } catch (\Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_retrievals',
                $e->getMessage(),
                500
            );
        }
    }

    public function show(Request $request)
    {
        try {
            $retrieval = $this->retrievalService->getRetrievalById($request->id);
            
            if (!$retrieval) {
                return LocalizationHelper::errorResponse(
                    'retrieval_not_found',
                    'Retrieval not found',
                    404
                );
            }

            $user = auth('api')->user();
            if($user->type != 'admin' || $retrieval->user_id != $user->id) {
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_view_retrieval',
                    null,
                    401
                );
            }

            return LocalizationHelper::successResponse(
                'retrieval_retrieved_successfully',
                new RetrievalResource($retrieval),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_retrieval',
                $e->getMessage(),
                500
            );
        }
    }


    // take action on retrieval
    public function action(Request $request)
    {
        try {
            // dd($request->all());
            $request->validate([
                'id' => 'required|exists:retrievals,id',
                'action' => 'required|string|in:approved,rejected',
            ]);

            $retrieval = Retrieval::find($request->id);
            // dd($retrieval);
            $retrieval->update(['status' => $request->action]);

            // return the retrieval
            return LocalizationHelper::successResponse(
                'action_taken_on_retrieval_successfully',
                new RetrievalResource($retrieval),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_take_action_on_retrieval',
                $e->getMessage(),
                500
            );
        }
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'subscription_id' => 'required|exists:subscriptions,id',
                'reason' => 'required|string|max:1000',
            ]);
            
            $subscription = $this->subscriptionService->getSubscriptionById($request->subscription_id);
            $user = auth('api')->user();
            if($user->type != 'admin' || $subscription->user_id != $user->id) {
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_create_retrieval',
                    null,
                    401
                );
            }
            
            // Check if user owns the subscription
            $subscription = Subscription::find($request->subscription_id);
                
            if (!$subscription) {
                return LocalizationHelper::errorResponse(
                    'subscription_not_found_or_not_owned',
                    'Subscription not found or you do not own this subscription',
                    404
                );
            }

            $retrieval = $this->retrievalService->createRetrieval($request->all());

            return LocalizationHelper::successResponse(
                'retrieval_created_successfully',
                new RetrievalResource($retrieval),
                201
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_create_retrieval',
                $e->getMessage(),
                500
            );
        }
    }

    // public function update(Request $request)
    // {
    //     try {
    //         $request->validate([
    //             'reason' => 'sometimes|string|max:1000',
    //             'status' => 'sometimes|in:pending,approved,rejected',
    //         ]);

    //         $retrieval = $this->retrievalService->getRetrievalById($request->id);
            
    //         if (!$retrieval) {
    //             return LocalizationHelper::errorResponse(
    //                 'retrieval_not_found',
    //                 'Retrieval not found',
    //                 404
    //             );
    //         }

    //         $user = auth('api')->user();
            
    //         // Only allow users to update their own retrievals (except status)
    //         if ($user->type !== 'admin' && $retrieval->user_id !== $user->id) {
    //             return LocalizationHelper::errorResponse(
    //                 'unauthorized',
    //                 'You are not authorized to update this retrieval',
    //                 403
    //             );
    //         }

    //         // Only admins can update status
    //         if (isset($request->status) && $user->type !== 'admin') {
    //             return LocalizationHelper::errorResponse(
    //                 'unauthorized',
    //                 'Only administrators can update retrieval status',
    //                 403
    //             );
    //         }

    //         $updateData = $request->only(['reason', 'status']);
    //         $success = $this->retrievalService->updateRetrieval($request->id, $updateData);

    //         if (!$success) {
    //             return LocalizationHelper::errorResponse(
    //                 'failed_to_update_retrieval',
    //                 'Failed to update retrieval',
    //                 500
    //             );
    //         }

    //         $updatedRetrieval = $this->retrievalService->getRetrievalById($request->id);

    //         return LocalizationHelper::successResponse(
    //             'retrieval_updated_successfully',
    //             new RetrievalResource($updatedRetrieval),
    //             200
    //         );
    //     } catch (\Illuminate\Validation\ValidationException $e) {
    //         return LocalizationHelper::errorResponse(
    //             'validation_failed',
    //             $e->errors(),
    //             422
    //         );
    //     } catch (Exception $e) {
    //         return LocalizationHelper::errorResponse(
    //             'failed_to_update_retrieval',
    //             $e->getMessage(),
    //             500
    //         );
    //     }
    // }

    // public function destroy(Request $request)
    // {
    //     try {
    //         $retrieval = $this->retrievalService->getRetrievalById($request->id);
            
    //         if (!$retrieval) {
    //             return LocalizationHelper::errorResponse(
    //                 'retrieval_not_found',
    //                 'Retrieval not found',
    //                 404
    //             );
    //         }

    //         $user = auth('api')->user();
            
    //         // Only allow users to delete their own retrievals or admins
    //         if ($user->type !== 'admin' && $retrieval->user_id !== $user->id) {
    //             return LocalizationHelper::errorResponse(
    //                 'unauthorized',
    //                 'You are not authorized to delete this retrieval',
    //                 403
    //             );
    //         }

    //         $success = $this->retrievalService->deleteRetrieval($request->id);

    //         if (!$success) {
    //             return LocalizationHelper::errorResponse(
    //                 'failed_to_delete_retrieval',
    //                 'Failed to delete retrieval',
    //                 500
    //             );
    //         }

    //         return LocalizationHelper::successResponse(
    //             'retrieval_deleted_successfully',
    //             null,
    //             200
    //         );
    //     } catch (Exception $e) {
    //         return LocalizationHelper::errorResponse(
    //             'failed_to_delete_retrieval',
    //             $e->getMessage(),
    //             500
    //         );
    //     }
    // }

}
