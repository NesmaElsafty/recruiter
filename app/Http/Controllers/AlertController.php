<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\AlertService;
use App\Http\Resources\AlertResource;
use App\Helpers\PaginationHelper;
use Illuminate\Http\JsonResponse;
use App\Services\NotificationService;

class AlertController extends Controller
{
    //
    protected AlertService $alertService;
    protected NotificationService $notificationService;
    public function __construct(NotificationService $notificationService)
    {
        $this->alertService = new AlertService();
        $this->notificationService = $notificationService;
    }
    public function index(Request $request)
    {
        // Check if user is authenticated using the same method as AlertService
        $currentUser = $this->alertService->currentUser();
        if (!$currentUser) {
            return response()->json([
                'status' => 'error',
                'message' => 'غير مصرح لك بالوصول لهذه الإشعارات'
            ], 401);
        }

        $alerts = $this->alertService->getAlerts()->paginate(10);
        return response()->json([
            'status' => 'success',
            'data' => AlertResource::collection($alerts),
            'pagination' => PaginationHelper::paginate($alerts),
        ]);
    }
    
    public function store(Request $request)
    {
        try{
            $notification = $this->notificationService->getNotificationById($request->notification_id);
            $notifyUsers = $notification->notifyUsers;
            foreach($notifyUsers as $notifyUser){
                $data = [
                    'user_id' => $notifyUser->user_id,
                    'user_type' => $notifyUser->user_type,
                    'title' => $notification->title,
                    'description' => $notification->description,
                    'is_read' => false,
                ];
                $alert = $this->alertService->storeAlert($data);
            }
            return response()->json([
                'status' => 'success',
                // 'data' => new AlertResource($alert),
                'message' => 'notification sent successfully',
            ]);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
                'status' => 'error',
            ]);
        }
    }

    // toggle read
    public function toggleRead(Request $request)
    {
        try{
            // Check if user is authenticated using the same method as AlertService
            $currentUser = $this->alertService->currentUser();
            if (!$currentUser) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'غير مصرح لك بتحديث حالة القراءة لهذه الإشعار'
                ], 401);
            }

            $request->validate([
                'alert_id' => 'required|exists:alerts,id',
            ]);

            $alert = $this->alertService->getAlert($request->alert_id);
            if($currentUser->id !== $alert->user_id || $currentUser->user_type !== $alert->user_type){
                return response()->json([
                    'status' => 'error',
                    'message' => 'غير مصرح لك بتحديث حالة القراءة لهذه الإشعار'
                ], 401);
            }

            $alert = $this->alertService->getAlert($request->alert_id);
            $alert->update([
                'is_read' => !$alert->is_read,
            ]);
            return response()->json([
                'status' => 'success',
                'message' => 'تم تحديث حالة القراءة لهذه الإشعار بنجاح',
                'data' => new AlertResource($alert),
            ]);
        }catch(\Exception $e){
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
                'status' => 'error',
            ]);
        }
    }
}
