<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TermResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'title_en' => $this->title_en,
            'title_ar' => $this->title_ar,
            'description_en' => $this->description_en,
            'description_ar' => $this->description_ar,
            'type' => $this->type,
            'user_type' => $this->user_type,
            'is_active' => (bool)$this->is_active,
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
