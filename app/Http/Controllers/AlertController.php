<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\AlertService;
use App\Http\Resources\AlertResource;
use App\Helpers\PaginationHelper;
use App\Helpers\LocalizationHelper;
use Illuminate\Http\JsonResponse;
use App\Services\NotificationService;
use App\Models\Alert;

class AlertController extends Controller
{
    // AlertService and NotificationService 
    protected AlertService $alertService;
    protected NotificationService $notificationService;


    public function __construct(AlertService $alertService, NotificationService $notificationService)
    {
        $this->alertService = $alertService;
        $this->notificationService = $notificationService;
    }
    public function index(Request $request)
    {
        // Check if user is authenticated using the same method as AlertService
        $user =  auth('api')->user();

        $alerts = $this->alertService->getAlerts($user->id)->paginate(10);
        return response()->json([
            'status' => 'success',
            'data' => AlertResource::collection($alerts),
            'pagination' => PaginationHelper::paginate($alerts),
        ]);
    }

    // toggle read
    public function toggleRead(Request $request)
    {
        try{
            // Check if user is authenticated using the same method as AlertService
            $user =  auth('api')->user();
            $request->validate([
                'alert_id' => 'required|exists:alerts,id',
            ]);
            $alert = Alert::find($request->alert_id);
           
            if($user->id != $alert->user_id){
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_update_alert',
                    null,
                    401
                );
            }            

            $alert->update([
                'is_read' => !$alert->is_read,
            ]);
            return LocalizationHelper::successResponse(
                'alert_read_status_updated_successfully',
                new AlertResource($alert)
            );
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
                'status' => 'error',
            ]);
        }
    }

    // test storing alert
    public function store(Request $request)
    {
        try{
            $request->validate([
                'user_id' => 'required|exists:users,id',
                'title' => 'required|string|max:255',
                'description' => 'required|string',
            ]);
            $data = [
                'user_id' => $request->user_id,
                'title' => $request->title,
                'description' => $request->description,
                'is_read' => false,
            ];
        $alert = $this->alertService->storeAlert($data);
        return LocalizationHelper::successResponse(
            'alert_stored_successfully',
            new AlertResource($alert)
        );
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
                'status' => 'error',
            ]);
        }
    }

    // delete
    public function destroy(Alert $alert)
    {
        try{
            $user = auth('api')->user();
            if((int)$alert->user_id !== (int)$user->id){
                return LocalizationHelper::errorResponse(
                    'alert_not_found',
                    'You are not authorized to delete this alert',
                    404
                );
            }
        $alert->delete();
        return LocalizationHelper::successResponse(
            'alert_deleted_successfully',
            null,
            200
        );
        }catch(\Exception $e){
            return LocalizationHelper::errorResponse(
                'alert_not_found',
                $e->getMessage(),
                null,
                500
            );
        }
    }
}
