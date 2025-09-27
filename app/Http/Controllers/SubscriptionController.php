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
use App\Models\User;

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
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_subscriptions',
                $e->getMessage(),
                500
            );
        }
        
    }

    // active
    public function active(Request $request)
    {
        try{
        $subscription = $this->subscriptionService->getUserActiveSubscription();
        if(!$subscription){
            return LocalizationHelper::errorResponse(
                'subscription_active_not_found',
                null,
                404
            );
        }
        return LocalizationHelper::successResponse(
            'subscription_active_retrieved_successfully',
            new SubscriptionResource($subscription),
            200
        );
    }catch(Exception $e){
        return LocalizationHelper::errorResponse(
            'failed_to_retrieve_subscription_active',
            $e->getMessage(),
            500
        );
    }
    }

    // history
    public function history(Request $request)
    {
        try{
        $subscription = $this->subscriptionService->getUserSubscriptionsHistory($request->all())->paginate(10);
        // dd($subscription);
        return LocalizationHelper::successResponse(
            'subscription_history_retrieved_successfully',
            SubscriptionResource::collection($subscription),
            200,
            ['pagination' => PaginationHelper::paginate($subscription)]
        );      
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_subscription_history',
                $e->getMessage(),
                500
            );
        }
    }

    // show
    public function show(Request $request)
    {
        try {   
            $user = auth('api')->user();
            $subscription = $this->subscriptionService->getSubscriptionById($request->id);
            
            if($user->type != 'admin' && $subscription->user_id != $user->id) {
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_view_subscription',
                    null,
                    401
                );
            }
            
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

    // store
    public function store(Request $request)
    {
        try {
            $request->validate([
                'plan_id' => 'required|exists:plans,id',
                'payment_method' => 'required|string',
            ]);
            $subscription = $this->subscriptionService->createSubscription($request->all());
            return LocalizationHelper::successResponse(
                'subscription_created_successfully',
                new SubscriptionResource($subscription),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_create_subscription',
                $e->getMessage(),
                500
            );
        }
    }
    
    // cancel
    public function cancel(Request $request)
    {
        try {
            $request->validate([
                'subscription_id' => 'required|exists:subscriptions,id',
            ]);
            $subscription = $this->subscriptionService->getSubscriptionById($request->subscription_id);
            $user = auth('api')->user();
            if($user->type != 'admin' && $subscription->user_id != $user->id) {
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_cancel_subscription',
                    null,
                    401
                );
            }
            $subscription = $this->subscriptionService->cancelSubscription($request->subscription_id);
            return LocalizationHelper::successResponse(
                'subscription_cancelled_successfully',
                new SubscriptionResource($subscription),
                200
            );
        } catch (Exception $e) {
                return LocalizationHelper::errorResponse(
                'failed_to_cancel_subscription',
                $e->getMessage(),
                500
            );
        }
    }

    // payment confirmation
    public function paymentConfirmation(Request $request)
    {
        try {
            $request->validate([
                'subscription_id' => 'required|exists:subscriptions,id',
            ]);
            $subscription = $this->subscriptionService->getSubscriptionById($request->subscription_id);
            $user = auth('api')->user();
            if($user->type != 'admin' && $subscription->user_id != $user->id) {
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_payment_confirmation',
                    null,
                    401
                );
            }
            $subscription = $this->subscriptionService->paymentConfirmation($request->subscription_id);
            return LocalizationHelper::successResponse(
                'payment_confirmed_successfully',
                new SubscriptionResource($subscription),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_payment_confirmation',
                $e->getMessage(),
                500
            );
        }
    }

    
    
}
