<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Helpers\LocalizationHelper;

class TermResource extends JsonResource
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
            'title' => $this->{"title_{$locale}"} ?? $this->title_en,
            'description' => $this->{"description_{$locale}"} ?? $this->description_en,
            'type' => $this->type,
            'type_label' => LocalizationHelper::getTypeValue($this->type),
            'user_type' => $this->user_type,
            'user_type_label' => LocalizationHelper::getUserTypeValue($this->user_type),
            'is_active' => (bool)$this->is_active,
            'status' => $this->is_active ? LocalizationHelper::getStatusValue('active') : LocalizationHelper::getStatusValue('inactive'),
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
            'created_at_human' => $this->created_at?->diffForHumans(),
        ];
    }

    /**
     * Get type label
     */
    private function getTypeLabel(): string
    {
        return match($this->type) {
            'terms' => 'Terms & Conditions',
            'privacy_policy' => 'Privacy Policy',
            'faq' => 'FAQ',
            default => ucfirst($this->type ?? '')
        };
    }

    /**
     * Get user type label
     */
    private function getUserTypeLabel(): ?string
    {
        return match($this->user_type) {
            'candidate' => 'Candidate',
            'recruiter' => 'Recruiter',
            default => null
        };
    }
}
