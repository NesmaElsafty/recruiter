<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
            'name' => $this->name,
            'email' => $this->email,
            'type' => $this->type,
            'company_name' => $this->company_name,
            'job_title' => $this->job_title,
            'city' => $this->whenLoaded('city', function () {
                return [
                    'id' => $this->city->id,
                    'name_en' => $this->city->name_en,
                    'name_ar' => $this->city->name_ar,
                ];
            }),
            'major' => $this->whenLoaded('major', function () {
                return [
                    'id' => $this->major->id,
                    'name_en' => $this->major->name_en,
                    'name_ar' => $this->major->name_ar,
                ];
            }),
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
        ];
    }
}
