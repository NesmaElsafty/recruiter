<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PlanResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        $locale = app()->getLocale();
        
        return [
            'id' => $this->id,
            'name' => $this->{"name_{$locale}"} ?? $this->name_en,
            'description' => $this->{"description_{$locale}"} ?? $this->description_en,
            'price' => $this->price !== null ? (float)$this->price : null,
            'duration' => $this->duration,
            'type' => $this->type,
            'is_active' => (bool)$this->is_active,
            'features' => $this->whenLoaded('features', function () {
                return $this->features->map(function ($f) use ($locale) {
                    return [
                        'id' => $f->id,
                        'name' => $f->{"name_{$locale}"} ?? $f->name_en,
                    ];
                });
            }),
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
        ];
    }
}


