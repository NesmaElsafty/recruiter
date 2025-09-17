<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\SocialMediaResource;
use App\Models\SocialMedia;

class ContactUsResourse extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $socialMedia = SocialMedia::all();
        return [
            "id" => $this->id,
            "address" => $this->address,
            "phone" => $this->phone,
            "email" => $this->email,
            "copyright" => $this->copyright,
            "social_media" => SocialMediaResource::collection($socialMedia),
        ];
    }
}
