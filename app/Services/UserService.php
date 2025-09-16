<?php

namespace App\Services;

use App\Models\User;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;
use App\Helpers\ExportHelper;

class UserService
{

    public function getAllUsers($data)
    {
        $query = User::query();
        $query->where('type', $data['type']);

        if(isset($data['search'])) {
            $query->where('name_en', 'like', "%{$data['search']}%")
                  ->orWhere('name_ar', 'like', "%{$data['search']}%")
                  ->orWhere('email', 'like', "%{$data['search']}%")
                  ->orWhere('phone', 'like', "%{$data['search']}%")
                  ->orWhere('company_name', 'like', "%{$data['search']}%")
                  ->orWhere('job_title', 'like', "%{$data['search']}%")
                //   search in city and major
                  ->orWhereHas('city', function ($query) use ($data) {
                    $query->where('name_en', 'like', "%{$data['search']}%")
                          ->orWhere('name_ar', 'like', "%{$data['search']}%");
                  })
                  ->orWhereHas('major', function ($query) use ($data) {
                    $query->where('name_en', 'like', "%{$data['search']}%")
                          ->orWhere('name_ar', 'like', "%{$data['search']}%");
                  });
        }

        if(isset($data['sorted_by'])) {
            switch($data['sorted_by']) {
                case 'name_en':
                    $query->orderBy('name_en', 'asc');
                    break;
                case 'name_ar':
                    $query->orderBy('name_ar', 'asc');
                    break;
                case 'major_en':
                    $query->orderBy('major.name_en', 'asc');
                    break;
                case 'major_ar':
                    $query->orderBy('major.name_ar', 'asc');
                    break;            
                case 'job_title':
                    $query->orderBy('job_title', 'asc');
                    break;
                case 'newest':
                    $query->orderBy('created_at', 'desc');
                    break;
                case 'oldest':
                    $query->orderBy('created_at', 'asc');
                    break;
                }
        }

        if(isset($data['is_active'])) {
            $query->where('is_active', $data['is_active']);
        }

        return $query;
    }

    public function blocklist(string $phone)
    {
        // get trashed users
        $user = User::withTrashed();
        
        return false;
    }

    public function unblocklist(string $phone)
    {
        $user = User::where('phone', $phone)->withTrashed()->first();
        if($user){
            $user->delete();
            return true;
        }
    }

    public function getUserById(int $id)
    {
        $user = User::find($id);
        
        if (!$user) {
            throw new ModelNotFoundException('User not found');
        }
        
        return $user;
    }

    public function createUser(array $data)
    {
        return DB::transaction(function () use ($data) {
            return User::create($data);
        });
    }


    public function updateUser($id, $data)
    {
        return DB::transaction(function () use ($id, $data) {
            $user = $this->getUserById($id);
            $user->update($data);
            return $user->fresh();
        });
    }

    
    public function deleteUser($id)
    {
        $user = $this->getUserById($id);
        $user->forceDelete();
        return true;
    }

    // stats
    public function stats(string $userType)
    {
        // Get current counts
        $total = User::where('type', $userType)->withTrashed()->count();
        $active = User::where('type', $userType)->whereNull('deleted_at')->count();
        $banned = User::where('type', $userType)->whereNotNull('deleted_at')->count();

        // Get previous month counts for percentage calculation
        $previousMonth = now()->subMonth();
        $totalPrevious = User::where('type', $userType)
            ->withTrashed()
            ->where('created_at', '<=', $previousMonth)
            ->count();
        $activePrevious = User::where('type', $userType)
            ->whereNull('deleted_at')
            ->where('created_at', '<=', $previousMonth)
            ->count();
        $bannedPrevious = User::where('type', $userType)
            ->whereNotNull('deleted_at')
            ->where('created_at', '<=', $previousMonth)
            ->count();

        // Calculate percentage changes
        $totalChange = $this->calculatePercentageChange($totalPrevious, $total);
        $activeChange = $this->calculatePercentageChange($activePrevious, $active);
        $bannedChange = $this->calculatePercentageChange($bannedPrevious, $banned);

        // Get monthly data for charts (last 12 months)
        $monthlyData = $this->getMonthlyData($userType);

        return [
            "total_{$userType}s" => [
                'count' => $total,
                'change_percentage' => $totalChange['percentage'],
                'change_direction' => $totalChange['direction'],
                'monthly_data' => $monthlyData['total']
            ],
            "active_{$userType}s" => [
                'count' => $active,
                'change_percentage' => $activeChange['percentage'],
                'change_direction' => $activeChange['direction'],
                'monthly_data' => $monthlyData['active']
            ],
            "banned_{$userType}s" => [
                'count' => $banned,
                'change_percentage' => $bannedChange['percentage'],
                'change_direction' => $bannedChange['direction'],
                'monthly_data' => $monthlyData['banned']
            ]
        ];
    }

    private function calculatePercentageChange($previous, $current)
    {
        if ($previous == 0) {
            return [
                'percentage' => $current > 0 ? 100 : 0,
                'direction' => $current > 0 ? 'up' : 'down'
            ];
        }

        $percentage = (($current - $previous) / $previous) * 100;
        
        return [
            'percentage' => round(abs($percentage), 2),
            'direction' => $percentage >= 0 ? 'up' : 'down'
        ];
    }

    private function getMonthlyData(string $userType)
    {
        $months = [];
        $totalData = [];
        $activeData = [];
        $bannedData = [];

        // Get data for last 12 months
        for ($i = 11; $i >= 0; $i--) {
            $date = now()->subMonths($i);
            $endOfMonth = $date->copy()->endOfMonth();

            $months[] = $date->format('M Y');

            // Count users created up to this month
            $totalData[] = User::where('type', $userType)
                ->withTrashed()
                ->where('created_at', '<=', $endOfMonth)
                ->count();

            $activeData[] = User::where('type', $userType)
                ->whereNull('deleted_at')
                ->where('created_at', '<=', $endOfMonth)
                ->count();

            $bannedData[] = User::where('type', $userType)
                ->whereNotNull('deleted_at')
                ->where('created_at', '<=', $endOfMonth)
                ->count();
        }

        return [
            'months' => $months,
            'total' => $totalData,
            'active' => $activeData,
            'banned' => $bannedData
        ];
    }

    // bulk actions

    public function activationToggle($ids){
        $users = User::whereIn('id', $ids)->get();
        foreach($users as $user){
            $user->is_active = !$user->is_active;
            $user->save();
        }    
        return true;
    }

    public function delete($ids){
        $users = User::whereIn('id', $ids)->get();
        foreach($users as $user){
            $user->forceDelete();
        }
        return true;
    }

    public function unblock($ids){
        $users = User::whereIn('id', $ids)->get();
        foreach($users as $user){
            $user->restore();
        }
        return true;
    }

    public function block($ids){
        $users = User::whereIn('id', $ids)->get();
        foreach($users as $user){
            $user->delete();
        }
        return true;
    }

    public function export($ids, $type)
    {
        $users = User::whereIn('id', $ids)->with(['city', 'major'])->get();
        $candidateDataKeys = ['name','email','phone','city','major','interviews','is_active','created_at'];
        $recruiterDataKeys = ['name','email','phone','company_name','job_title','major','is_active','created_at'];
        
        $dataKeys = $type == 'candidate' ? $candidateDataKeys : $recruiterDataKeys;
        
        // Create data mapping function
        $mapUserData = function($user) use ($dataKeys) {
            return array_map(function($key) use ($user) {
                return match($key) {
                    'city' => $user->city?->name_en ?? '',
                    'major' => $user->major?->name_en ?? '',
                    'interviews' => 0, // Placeholder
                    'is_active' => $user->is_active ? 'Active' : 'Inactive',
                    'created_at' => $user->created_at?->format('Y-m-d H:i:s') ?? '',
                    default => $user->$key ?? ''
                };
            }, $dataKeys);
        };
        
        // Build data array with headers and mapped user data
        $data = array_merge(
            [$dataKeys], // Headers
            $users->map($mapUserData)->toArray() // User data rows
        );

        $currentUser = auth()->user();

        $filename = $type . '_export_' . now()->format('Ymd_His') . '.csv';
        $media = ExportHelper::exportToMedia($data, $currentUser, 'exports', $filename);
        return $media->getFullUrl();
    }


}
