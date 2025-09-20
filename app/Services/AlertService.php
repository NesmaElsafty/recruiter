<?php

namespace App\Services;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use App\Models\Company;
use App\Models\Service;
use App\Models\Alert;

class AlertService
{
    // get cuurent user or admin or company or client
    public function currentUser()
    {
        return Auth::guard('admin')->user() ?? Auth::guard('company')->user() ?? Auth::guard('client')->user();
    }

    public function getAlerts()
    {
        $currentUser = $this->currentUser();
        if (!$currentUser) {
            return Alert::whereRaw('1 = 0'); // Return empty query if no user
        }
        
        $alerts = Alert::where('user_id', $currentUser->id)->where('user_type', get_class($currentUser));
        return $alerts;
    }

    // // store alert    
    public function storeAlert($data)
    {
        // user_id, user_type, title, description
        $alert = Alert::create($data);
        return $alert;
    }


    // get alert
    public function getAlert($id)
    {
        return Alert::find($id);
    }
}
