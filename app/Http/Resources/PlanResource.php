<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PlanResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'name_en' => $this->name_en,
            'name_ar' => $this->name_ar,
            'description_en' => $this->description_en,
            'description_ar' => $this->description_ar,
            'price' => $this->price !== null ? (float)$this->price : null,
            'duration' => $this->duration,
            'type' => $this->type,
            'is_active' => (bool)$this->is_active,
            'features' => $this->whenLoaded('features', function () {
                return $this->features->map(function ($f) {
                    return [
                        'id' => $f->id,
                        'name_en' => $f->name_en,
                        'name_ar' => $f->name_ar,
                    ];
                });
            }),
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
        ];
    }
}


