<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AdminTermResource extends JsonResource
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
                'is_active' => $this->is_active,
                'created_at' => $this->created_at,
                'updated_at' => $this->updated_at,
        ];
    }
}
