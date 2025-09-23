<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class RetrievalResource extends JsonResource
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
            'user_name' => $this->user?->fname . ' ' . $this->user?->lname,
            'subscription_id' => $this->subscription_id,
            'plan_name' => $this->subscription?->plan?->{"name_{$locale}"} ?? $this->subscription?->plan?->name_ar, 
            'plan_duration_type' => $this->subscription?->plan?->duration_type,
            'paid_amount' => $this->subscription?->paid_amount,
            'payment_method' => $this->subscription?->payment_method,
            'reason' => $this->reason,
            'status' => $this->status,
            'start_date' => $this->subscription?->start_date,
            'end_date' => $this->subscription?->end_date,
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
        ];
    }
}
