<?php

namespace App\Services;

use App\Models\User;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;
use App\Helpers\ExportHelper;

class UserService
{

    // indexes
    public function getAllUsers($data)
    {
        $query = User::query();
        $query->where('type', $data['type']);

        if(isset($data['search'])) {
            $query->where('fname', 'like', "%{$data['search']}%")
                  ->orWhere('lname', 'like', "%{$data['search']}%")
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
                case 'fname':
                    $query->orderBy('fname', 'asc');
                    break;
                case 'lname':
                    $query->orderBy('lname', 'asc');
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

        if(isset($data['is_active']) && $data['is_active'] !== 'all') {
            $query->where('is_active', $data['is_active']);
        }

        return $query;
    }

    public function blocklist($data)
    {
        // dd($data);
        // get only soft-deleted users
        $users = User::onlyTrashed();
        if(isset($data['search'])) {
            $users->where('fname', 'like', "%{$data['search']}%")
                  ->orWhere('lname', 'like', "%{$data['search']}%")
                  ->orWhere('email', 'like', "%{$data['search']}%")
                  ->orWhere('phone', 'like', "%{$data['search']}%");
        }
        return $users;
    }

    // requests list
    public function requestsList()
    {
        $users = User::where(['is_active'=> null, 'type'=> 'recruiter']);
        return $users;
    }

    // accepted requests
    public function acceptedRequests()
    {
        $users = User::where(['is_active'=> true, 'type'=> 'recruiter']);
        return $users;
    }


    // CRUD
    public function getUserById($id)
    {
        $user = User::with('feedbacks', 'city', 'major', 'subscriptions','interviews')->find($id);
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

    public function softDeletedStats()
    {
        // Get current counts for soft-deleted users
        $totalSoftDeleted = User::onlyTrashed()->count();
        $candidatesSoftDeleted = User::onlyTrashed()->where('type', 'candidate')->count();
        $recruitersSoftDeleted = User::onlyTrashed()->where('type', 'recruiter')->count();

        // Get previous month counts for percentage calculation
        $previousMonth = now()->subMonth();
        $totalSoftDeletedPrevious = User::onlyTrashed()
            ->where('deleted_at', '<=', $previousMonth)
            ->count();
        $candidatesSoftDeletedPrevious = User::onlyTrashed()
            ->where('type', 'candidate')
            ->where('deleted_at', '<=', $previousMonth)
            ->count();
        $recruitersSoftDeletedPrevious = User::onlyTrashed()
            ->where('type', 'recruiter')
            ->where('deleted_at', '<=', $previousMonth)
            ->count();

        // Calculate percentage changes
        $totalChange = $this->calculatePercentageChange($totalSoftDeletedPrevious, $totalSoftDeleted);
        $candidatesChange = $this->calculatePercentageChange($candidatesSoftDeletedPrevious, $candidatesSoftDeleted);
        $recruitersChange = $this->calculatePercentageChange($recruitersSoftDeletedPrevious, $recruitersSoftDeleted);

        // Get monthly data for charts (last 12 months)
        $monthlyData = $this->getSoftDeletedMonthlyData();

        return [
            'total_soft_deleted' => [
                'count' => $totalSoftDeleted,
                'change_percentage' => $totalChange['percentage'],
                'change_direction' => $totalChange['direction'],
                'monthly_data' => $monthlyData['total']
            ],
            'candidates_soft_deleted' => [
                'count' => $candidatesSoftDeleted,
                'change_percentage' => $candidatesChange['percentage'],
                'change_direction' => $candidatesChange['direction'],
                'monthly_data' => $monthlyData['candidates']
            ],
            'recruiters_soft_deleted' => [
                'count' => $recruitersSoftDeleted,
                'change_percentage' => $recruitersChange['percentage'],
                'change_direction' => $recruitersChange['direction'],
                'monthly_data' => $monthlyData['recruiters']
            ],
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

    private function getSoftDeletedMonthlyData()
    {
        $months = [];
        $totalData = [];
        $candidatesData = [];
        $recruitersData = [];

        // Get data for last 12 months
        for ($i = 11; $i >= 0; $i--) {
            $date = now()->subMonths($i);
            $endOfMonth = $date->copy()->endOfMonth();

            $months[] = $date->format('M Y');

            // Count soft-deleted users up to this month
            $totalData[] = User::onlyTrashed()
                ->where('deleted_at', '<=', $endOfMonth)
                ->count();

            $candidatesData[] = User::onlyTrashed()
                ->where('type', 'candidate')
                ->where('deleted_at', '<=', $endOfMonth)
                ->count();

            $recruitersData[] = User::onlyTrashed()
                ->where('type', 'recruiter')
                ->where('deleted_at', '<=', $endOfMonth)
                ->count();

        }

        return [
            'months' => $months,
            'total' => $totalData,
            'candidates' => $candidatesData,
            'recruiters' => $recruitersData,
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

    // Actions

    // recruiter confirmation
    public function recruiterConfirmation($data){
        $user = User::find($data['id']);
        $user->is_active = $data['is_active'];
        $user->save();
        return $user;
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
        // get users with deleted_at not null
        $users = User::withTrashed()->whereNotNull('deleted_at')->whereIn('id', $ids)->get();
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

        $currentUser = auth('api')->user();

        $filename = $type . '_export_' . now()->format('Ymd_His') . '.csv';
        $media = ExportHelper::exportToMedia($data, $currentUser, 'exports', $filename);
        return $media->getFullUrl();
    }

    public function bulkRecruiterConfirmation($data){
        $users = User::whereIn('id', $data['ids'])->get();
        foreach($users as $user){
            $user->is_active = $data['is_active'];
            $user->save();
        }
        return true;
    }


    public function updateProfile($id, $data){
        $user = User::find($id);
        $user->fname = $data['fname'] ?? $user->fname;
        $user->lname = $data['lname'] ?? $user->lname;
        $user->phone = $data['phone'] ?? $user->phone;
        $user->email = $data['email'] ?? $user->email;
        $user->job_title = $data['job_title'] ?? $user->job_title;
        $user->major_id = $data['major_id'] ?? $user->major_id;
        $user->city_id = $data['city_id'] ?? $user->city_id;
        $user->save();
        return $user;
    }

}
