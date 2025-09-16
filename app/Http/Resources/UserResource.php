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
            'phone' => $this->phone,
            'type' => $this->type,
            'is_active' => $this->is_active,
            'company_name' => $this->company_name,
            'job_title' => $this->job_title,
            'interviews' => $this->interviews ?? 0,
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
            'avatar' => $this->when($this->getFirstMediaUrl('avatar'), function () {
                return [
                    'url' => $this->getFirstMediaUrl('avatar'),
                    'thumb' => $this->getFirstMediaUrl('avatar', 'thumb'),
                    'medium' => $this->getFirstMediaUrl('avatar', 'medium'),
                ];
            }),
            'resume' => $this->when($this->getFirstMediaUrl('resume'), function () {
                return [
                    'url' => $this->getFirstMediaUrl('resume'),
                    'name' => $this->getFirstMedia('resume')?->name,
                    'size' => $this->getFirstMedia('resume')?->size,
                ];
            }),
            'documents' => $this->when($this->getMedia('documents')->count() > 0, function () {
                return $this->getMedia('documents')->map(function ($media) {
                    return [
                        'id' => $media->id,
                        'name' => $media->name,
                        'url' => $media->getUrl(),
                        'size' => $media->size,
                        'mime_type' => $media->mime_type,
                    ];
                });
            }),
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
        ];
    }
}
