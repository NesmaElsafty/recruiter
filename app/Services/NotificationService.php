<?php

namespace App\Services;

use App\Models\Notification;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Pagination\LengthAwarePaginator;
use Carbon\Carbon;
use App\Models\User;

class NotificationService
{

    public function getAllNotifications($data)
    {
        $query = Notification::query();

        if(isset($data['type'])) {
            $query->where('type', $data['type']);
        }

        if(isset($data['search'])) {
            $query->where('title', 'like', "%{$data['search']}%")
                  ->orWhere('description', 'like', "%{$data['search']}%");
        }

        if(isset($data['status'])) {
            $query->where('status', $data['status']);
        }

        if(isset($data['segment'])) {
            $query->whereJsonContains('segments', $data['segment']);
        }

        return $query;
    }

    public function getNotificationById($id)
    {
        return Notification::find($id);
    }

    public function createNotification($data)
    {
        $segments = json_encode($data['segments']);
        
        $notification = new Notification();
        $notification->title = $data['title'];
        $notification->description = $data['description'];
        $notification->type = $data['type'];
        $notification->status = $data['status'];
        $notification->segments = $segments;
        $notification->save();

        $users = User::whereIn('type', json_decode($segments))->where('is_active', true)->get();       
        $notification->users()->sync($users);
        return $notification;
    }

    public function updateNotification($id, $data)
    {
        $segments = json_encode($data['segments']);

        $notification = Notification::find($id);
        $notification->title = $data['title'];
        $notification->description = $data['description'];
        $notification->type = $data['type'];
        $notification->status = $data['status'];
        $notification->segments = $segments;
        $notification->save();

        $users = User::whereIn('type', json_decode($segments))->where('is_active', true)->get();
        $notification->users()->sync($users);
        return $notification;
    }

    public function deleteNotification($id): bool
    {
        $notification = Notification::find($id);
        $notification->users()->detach();
        return $notification->delete();
    }

    public function getNotificationStats()
    {
        // Get current counts
        $unsentCount = Notification::where('status', 'unsent')->count();
        $plannedCount = Notification::where('status', 'planned')->count();
        $sentCount = Notification::where('status', 'sent')->count();
        
        // Calculate previous period counts (last 7 days vs previous 7 days for trend calculation)
        $sevenDaysAgo = now()->subDays(7);
        $fourteenDaysAgo = now()->subDays(14);
        
        $previousUnsentCount = Notification::where('status', 'unsent')
            ->where('created_at', '>=', $fourteenDaysAgo)
            ->where('created_at', '<', $sevenDaysAgo)
            ->count();
            
        $previousPlannedCount = Notification::where('status', 'planned')
            ->where('created_at', '>=', $fourteenDaysAgo)
            ->where('created_at', '<', $sevenDaysAgo)
            ->count();
            
        $previousSentCount = Notification::where('status', 'sent')
            ->where('created_at', '>=', $fourteenDaysAgo)
            ->where('created_at', '<', $sevenDaysAgo)
            ->count();
        
        // Calculate percentage changes
        $unsentChange = $previousUnsentCount > 0 ? (($unsentCount - $previousUnsentCount) / $previousUnsentCount) * 100 : 0;
        $plannedChange = $previousPlannedCount > 0 ? (($plannedCount - $previousPlannedCount) / $previousPlannedCount) * 100 : 0;
        $sentChange = $previousSentCount > 0 ? (($sentCount - $previousSentCount) / $previousSentCount) * 100 : 0;
        
        return [
            'dashboard_cards' => [
                'unsent' => [
                    'count' => $unsentCount,
                    'label' => 'Unsent Notifications',
                    'label_ar' => 'الإشعارات غير المرسلة',
                    'percentage_change' => round(abs($unsentChange), 2),
                    'trend' => $unsentChange >= 0 ? 'up' : 'down',
                    'color' => $unsentChange >= 0 ? 'red' : 'green',
                    'icon' => 'fas fa-exclamation-triangle',
                    'chart_data' => $this->generateChartData('unsent', 7)
                ],
                'scheduled' => [
                    'count' => $plannedCount,
                    'label' => 'Scheduled Notifications',
                    'label_ar' => 'الإشعارات المجدولة',
                    'percentage_change' => round(abs($plannedChange), 2),
                    'trend' => $plannedChange >= 0 ? 'up' : 'down',
                    'color' => $plannedChange >= 0 ? 'green' : 'red',
                    'icon' => 'fas fa-clock',
                    'chart_data' => $this->generateChartData('planned', 7)
                ],
                'sent' => [
                    'count' => $sentCount,
                    'label' => 'Sent Notifications',
                    'label_ar' => 'الإشعارات المرسلة',
                    'percentage_change' => round(abs($sentChange), 2),
                    'trend' => $sentChange >= 0 ? 'up' : 'down',
                    'color' => $sentChange >= 0 ? 'green' : 'red',
                    'icon' => 'fas fa-check-circle',
                    'chart_data' => $this->generateChartData('sent', 7)
                ]
            ],
        ];
    }

    /**
     * Generate chart data for dashboard cards
     */
    private function generateChartData(string $status, int $days = 7): array
    {
        $data = [];
        for ($i = $days - 1; $i >= 0; $i--) {
            $date = now()->subDays($i)->format('Y-m-d');
            $count = Notification::where('status', $status)
                ->whereDate('created_at', $date)
                ->count();
            $data[] = $count;
        }
        return $data;
    }

    /**
     * Get average delivery time for sent notifications
     */
    private function getAverageDeliveryTime(): float
    {
        $sentNotifications = Notification::where('status', 'sent')
            ->whereNotNull('scheduled_at')
            ->whereNotNull('sent_at')
            ->get();

        if ($sentNotifications->isEmpty()) {
            return 0;
        }

        $totalMinutes = $sentNotifications->sum(function ($notification) {
            return $notification->scheduled_at->diffInMinutes($notification->sent_at);
        });

        return round($totalMinutes / $sentNotifications->count(), 2);
    }


    public function bulkDeleteNotifications(array $ids): int
    {
        return Notification::whereIn('id', $ids)->delete();
    }
}
