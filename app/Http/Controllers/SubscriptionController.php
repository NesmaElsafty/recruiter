<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Helpers\LocalizationHelper;
use Illuminate\Http\Request;
use App\Models\Subscription;
use App\Http\Resources\SubscriptionResource;
use App\Services\SubscriptionService;
use App\Helpers\PaginationHelper;
use Exception;

class SubscriptionController extends Controller
{
    //
    protected $subscriptionService;

    public function __construct(SubscriptionService $subscriptionService)
    {
        $this->subscriptionService = $subscriptionService;
    }
    
    public function index(Request $request)
    {
        // use service
        try {
            $user = auth('api')->user();
        
            $subscriptions = $this->subscriptionService->getAllSubscriptionsByUserId($user->id)->paginate(10);
            $stats = null;
            
            if($user->type == 'admin') {
                $stats = $this->subscriptionService->getSubscriptionStats();
                $subscriptions = $this->subscriptionService->getAllSubscriptions($request->all())->paginate(10);
            }

            return LocalizationHelper::successResponse(
                'subscriptions_retrieved_successfully',
                SubscriptionResource::collection($subscriptions),
                200,
                [
                    'pagination' => PaginationHelper::paginate($subscriptions),
                    'stats' => $stats
                ]
            );
        } catch (\Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_subscriptions',
                $e->getMessage(),
                500
            );
        }
        
    }

    // show
    public function show(Request $request)
    {
        try {
            $subscription = $this->subscriptionService->getSubscriptionById($request->id);
            return LocalizationHelper::successResponse(
                'subscription_retrieved_successfully',
                new SubscriptionResource($subscription),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_subscription',
                $e->getMessage(),
                500
            );
        }
    }   

    // bulk actions
    public function bulkActions(Request $request)
    {
        try {
            $request->validate([
                'ids' => 'nullable|array|min:1',
                'ids.*' => 'required|exists:subscriptions,id',
                'action' => 'required|string|in:export,activationToggle'
            ]);
            $ids = [];
            if(isset($request->ids)) {
                $ids = $request->ids;
            }else{
                $ids = Subscription::pluck('id')->toArray();
            }
            $result = null;
            switch($request->action) {
                case 'activationToggle':
                    $this->subscriptionService->bulkActivationToggle($ids);
                    break;
                case 'export':
                    $result = $this->subscriptionService->export($ids);
                    break;
            }
            return LocalizationHelper::successResponse(
                'bulk_actions_performed_successfully',
                null,
                200,
                ['url' => $request->action == 'export' ? $result: null]
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
