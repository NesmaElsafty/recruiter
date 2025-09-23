<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\NotificationResource;
use App\Services\NotificationService;
use App\Helpers\PaginationHelper;
use App\Helpers\LocalizationHelper;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Illuminate\Validation\Rule;
use Exception;
use App\Services\AlertService;
use App\Models\Notification;


class NotificationController extends Controller
{
    protected NotificationService $notificationService;
    protected AlertService $alertService;
    public function __construct(NotificationService $notificationService, AlertService $alertService)
    {
        $this->notificationService = $notificationService;
        $this->alertService = $alertService;
    }

    public function index(Request $request)
    {
        try {
            $notifications = $this->notificationService->getAllNotifications($request->all())->paginate(10);
            
            return LocalizationHelper::successResponse(
                'notifications_retrieved_successfully',
                NotificationResource::collection($notifications),
                200,
                [
                    'pagination' => PaginationHelper::paginate($notifications),
                    'stats' => $this->notificationService->getNotificationStats(),
                ]
            );
        } catch (Exception $th) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_notifications',
                $th->getMessage(),
                500
            );
        }
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'type' => ['required', Rule::in(['notification', 'alert'])],
            'segments' => ['required', 'array', 'min:1'],
            'segments.*' => ['required', Rule::in(['admin', 'candidate', 'recruiter'])],
            'status' => ['sometimes', Rule::in(['planned', 'sent', 'unsent'])],
            'scheduled_at' => 'nullable|date|after:now',
        ]);

        $notification = $this->notificationService->createNotification($validated);
        $notification->sendToUsers($validated['segments']);
        return response()->json([
            'message' => 'Notification created successfully',
            'data' => new NotificationResource($notification)
        ], 201);
    }
    public function show(int $id)
    {
        $notification = $this->notificationService->getNotificationById($id);

        if (!$notification) {
            return response()->json([
                'message' => 'Notification not found'
            ], 404);
        }

        return response()->json([
            'data' => new NotificationResource($notification)
        ]);
    }

    
    public function update(Request $request, int $id)
    {   try{
        $validated = $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'description' => 'sometimes|required|string',
            'type' => ['sometimes', 'required', Rule::in(['notification', 'alert'])],
            'segments' => ['sometimes', 'required', 'array', 'min:1'],
            'segments.*' => ['required', Rule::in(['admin', 'candidate', 'recruiter'])],
            'status' => ['sometimes', Rule::in(['planned', 'sent', 'unsent'])],
            'scheduled_at' => 'nullable|date',
        ]);

        $notification = $this->notificationService->updateNotification($id, $validated);

        return response()->json([
            'message' => 'Notification updated successfully',
            'data' => new NotificationResource($notification)
        ]);
    } catch (Exception $e) {
        return response()->json([
            'message' => 'Failed to update notification',
            'error' => $e->getMessage()
        ], 500);
    }
    }

    
    public function destroy($id)
    {   
        try{
        $this->notificationService->deleteNotification($id);
        return response()->json([
            'message' => 'Notification deleted successfully'
        ]);
    } catch (Exception $e) {
        return response()->json([
            'message' => 'Failed to delete notification',
            'error' => $e->getMessage()
        ], 500);
    }
    }

    // notify user
    public function notify(Request $request)
    {   
        try{
            $request->validate([
                'notification_id' => 'required|exists:notifications,id',
            ]);
            $this->notificationService->notify($request->notification_id);
            return response()->json([
                'message' => 'Notification sent successfully'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Failed to send notification',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    
    public function getStats()
    {
        $stats = $this->notificationService->getNotificationStats();

        return response()->json([
            'data' => $stats
        ]);
    }

    
    public function bulkDelete(Request $request)
    {
        $validated = $request->validate([
            'ids' => 'required|array|min:1',
            'ids.*' => 'integer|exists:notifications,id',
        ]);

        $deleted = $this->notificationService->bulkDeleteNotifications($validated['ids']);

        return response()->json([
            'message' => "Successfully deleted {$deleted} notifications"
        ]);
    }
}
