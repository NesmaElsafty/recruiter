<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AdminMajorResource extends JsonResource
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
            'name_en' => $this->name_en,
            'name_ar' => $this->name_ar,
            'sub_majors' => $this->subMajors->map(function($subMajor){
                return [
                    'id' => $subMajor->id,
                    'name_en' => $subMajor->name_en,
                    'name_ar' => $subMajor->name_ar,
                ];
            }),
        ];
    }
}
