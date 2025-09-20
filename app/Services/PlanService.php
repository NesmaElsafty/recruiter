<?php

namespace App\Services;

use App\Models\Plan;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;
use App\Helpers\ExportHelper;


class PlanService
{
    public function getAllPlans($data)
    {
        $query = Plan::with('features');

        if (isset($data['search'])) {
            $query->where(function ($q) use ($data) {
                $q->where('name_en', 'like', "%{$data['search']}%")
                  ->orWhere('name_ar', 'like', "%{$data['search']}%")
                  ->orWhere('description_en', 'like', "%{$data['search']}%")
                  ->orWhere('description_ar', 'like', "%{$data['search']}%");
            });
        }

        if (isset($data['type'])) {
            $query->where('type', $data['type']);
        }

        if (isset($data['is_active'])) {
            $query->where('is_active', $data['is_active']);
        }

        if (isset($data['sorted_by'])) {
            switch ($data['sorted_by']) {
                case 'name_en':
                    $query->orderBy('name_en', 'asc');
                    break;
                case 'name_ar':
                    $query->orderBy('name_ar', 'asc');
                    break;
                case 'price':
                    $query->orderBy('price', 'asc');
                    break;
                case 'newest':
                    $query->orderBy('created_at', 'desc');
                    break;
                case 'oldest':
                    $query->orderBy('created_at', 'asc');
                    break;
            }
        } 
        
        return $query;
    }

    public function getAllPlansByType($type)
    {
        $query = Plan::with('features');
        $query->where(['type'=> $type, 'is_active'=> true]);
        return $query;
    }

    public function getPlanById($id)
    {
        $plan = Plan::with('features')->find($id);
        if (!$plan) {
            throw new ModelNotFoundException('Plan not found');
        }
        return $plan;
    }

    public function createPlan(array $data)
    {
        return DB::transaction(function () use ($data) {
            $features = $data['features'] ?? null;
            unset($data['features']);
            $plan = Plan::create($data);
            if (is_array($features)) {
                $plan->features()->sync($features);
            }
            return $plan->load('features');
        });
    }

    public function updatePlan($id, $data)
    {
        return DB::transaction(function () use ($id, $data) {
            $plan = $this->getPlanById($id);
            $features = $data['features'] ?? null;
            unset($data['features']);
            $plan->update($data);
            if (is_array($features)) {
                $plan->features()->sync($features);
            }
            return $plan->fresh()->load('features');
        });
    }

    public function deletePlan($id)
    {
        $plan = $this->getPlanById($id);
        $plan->features()->detach();
        $plan->delete();
        return true;
    }

    public function bulkDelete($ids)
    {
        return DB::transaction(function () use ($ids) {
            $plans = Plan::whereIn('id', $ids)->get();
            foreach ($plans as $plan) {
                $plan->features()->detach();
                $plan->delete();
            }
            return true;
        });
    }

    public function activationToggle($ids)
    {
        return DB::transaction(function () use ($ids) {
            $plans = Plan::whereIn('id', $ids)->get();
            foreach ($plans as $plan) {
                $plan->is_active = !$plan->is_active;
                $plan->save();
            }
            return true;
        });
    }

    public function export($ids)
    {
        $plans = Plan::whereIn('id', $ids)->get();
        $data = [];
        foreach($plans as $plan){
            $data[] = [
                'name_en' => $plan->name_en,
                'name_ar' => $plan->name_ar,
                'user_type' => $plan->type,
                'description_en' => $plan->description_en,
                'description_ar' => $plan->description_ar,
                'price' => $plan->price,
                'duration' => $plan->duration,
                'duration_type' => $plan->duration_type,
                'is_active' => $plan->is_active ? 'Active' : 'Inactive',
                'created_at' => $plan->created_at?->format('Y-m-d H:i:s'),
            ];
        }
        
        $currentUser = auth('api')->user();

        $filename = 'plan_export_' . now()->format('Ymd_His') . '.csv';
        $media = ExportHelper::exportToMedia($data, $currentUser, 'exports', $filename);
        return $media->getFullUrl();
    }
}


