<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EducationResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'university' => $this->university,
            'degree' => $this->degree,
            'major_id' => $this->major_id,
            'major_name' => $this->major_name,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
            'description' => $this->description,
            'skills' => SkillResource::collection($this->whenLoaded('skills')),
        ];
    }
}
