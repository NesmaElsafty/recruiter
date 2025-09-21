<?php

namespace App\Services;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use App\Models\Company;
use App\Models\Service;
use App\Models\Alert;
use App\Events\AlertCreated;

class AlertService
{
    public function getAlerts($user_id)
    {
        $alerts = Alert::where('user_id', $user_id);
        return $alerts;
    }

    // // store alert    
    public function createAlert($data)
    {
        // user_id, user_type, title, description
        $alert = Alert::create($data);

        event(new AlertCreated([
            'title' => $data['title'] ?? 'New Notification',
            'body'  => $data['body']  ?? 'Hello from Laravel 🎉',
            'type'  => $data['type']  ?? 'info',
        ], (int) $data['user_id']));

        return $alert;
    }

    // Bulk create alerts for better performance
    public function createBulkAlerts($alertsData)
    {
        if (empty($alertsData)) {
            return collect();
        }

        // Prepare data for bulk insert
        $preparedData = collect($alertsData)->map(function($alertData) {
            return array_merge($alertData, [
                'is_read' => $alertData['is_read'] ?? false,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        })->toArray();

        // Bulk insert alerts
        Alert::insert($preparedData);

        // Get the inserted alerts to return them
        $insertedAlerts = Alert::whereIn('user_id', collect($alertsData)->pluck('user_id'))
            ->where('created_at', '>=', now()->subMinute())
            ->get();

        // Dispatch events for all alerts
        foreach ($alertsData as $alertData) {
            event(new AlertCreated([
                'title' => $alertData['title'] ?? 'New Notification',
                'body'  => $alertData['description'] ?? $alertData['body'] ?? 'Hello from Laravel 🎉',
                'type'  => $alertData['type'] ?? 'info',
            ], (int) $alertData['user_id']));
        }

        return $insertedAlerts;
    }


    // get alert
    public function getAlert($id)
    {
        return Alert::find($id);
    }
}
