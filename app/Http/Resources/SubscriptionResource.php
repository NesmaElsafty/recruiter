<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Helpers\LocalizationHelper;

class SubscriptionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $locale = app()->getLocale();
        
        return [
            'id' => $this->id,
            'subscription_id' => $this->subscription_id,
            'user_name' => $this->user?->fname . ' ' . $this->user?->lname,
            'plan_name' => $this->plan?->{"name_{$locale}"} ?? $this->plan?->name_ar,
            'features' => $this->plan?->features->map(function ($feature) use ($locale) {
                return [
                    'id' => $feature->id,
                    'name' => $feature->{"name_{$locale}"} ?? $feature->name_en,
                ];
            }),
            'plan_duration_type' => $this->plan?->duration_type,
            'paid_amount' => $this->paid_amount,
            'payment_method' => $this->payment_method,
            'is_active' => $this->is_active,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
        ];
    }
}
