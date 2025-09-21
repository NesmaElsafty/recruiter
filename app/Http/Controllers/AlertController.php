<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\AlertService;
use App\Http\Resources\AlertResource;
use App\Helpers\PaginationHelper;
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
                return response()->json([
                    'status' => 'error',
                    'message' => 'غير مصرح لك بتحديث حالة القراءة لهذه الإشعار'
                ], 401);
            }            

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
        return response()->json([
            'status' => 'success',
                'message' => 'Alert stored successfully',
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
