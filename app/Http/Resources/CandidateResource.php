<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\ExperienceResource;
use App\Http\Resources\EducationResource;
use App\Models\Favorite;

class CandidateResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $locale = app()->getLocale();
        
        $isFavorite = false;
        $user = auth('api')->user();
        if($user){
            $isFavorite = $this->favoriteCandidates()->where('recruiter_id', $user->id)->exists();
        }

        return [
            'id' => $this->id,
            'fname' => $this->fname,
            'lname' => $this->lname,
            'email' => $this->email,
            'phone' => $this->phone,
            'image' => $this->getFirstMediaUrl('avatar'),
            'resume' => $this->getFirstMediaUrl('resume'),                
            'major' => [
                'id' => $this->major?->id,
                'name' => $this->major?->{"name_{$locale}"} ?? $this->major?->name_en,
            ],
            'sub_major' => $this->sub_major ? [
                'id' => $this->sub_major?->id,
                'name' => $this->sub_major?->{"name_{$locale}"} ?? $this->sub_major?->name_en,
            ] : null,
            'city' => [
                'id' => $this->city?->id,
                'name' => $this->city?->{"name_{$locale}"} ?? $this->city?->name_en,
            ],

            'experiences' => ExperienceResource::collection($this->experiences),
            'last_education' => new EducationResource($this->education->last()),
            'is_favorite' => $isFavorite,
        ];
    }
}
