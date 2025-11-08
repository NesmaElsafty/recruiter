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
        $majorName = $this->major_name ?? $this->major?->{"name_{$locale}"} ?? $this->major?->name_en;
        $subMajorName = $this->sub_major_name ?? $this->sub_major?->{"name_{$locale}"} ?? $this->sub_major?->name_en;
        $cityName = $this->city_name ?? $this->city?->{"name_{$locale}"} ?? $this->city?->name_en;
        $user = auth('api')->user();
        $isFavorite = false;
        if($user){
            $isFavorite = $this->favoriteCandidates()->where('recruiter_id', $user->id)->exists();
        }
        return [
            'id' => $this->id,
            'fname' => $this->fname,
            'lname' => $this->lname,
            'major' => [
                'id' => $this->major->id,
                'name' => $majorName,
                'name_ar' => $this->major?->name_ar,
            ],
            'sub_major' => [
                'id' => $this->sub_major->id,
                'name' => $subMajorName,
            ],
            'city' => [
                'id' => $this->city->id,
                'name' => $this->city->name_en,
                'name_ar' => $this->city?->name_ar,
            ],

            'experiences' => ExperienceResource::collection($this->experiences),
            'last_education' => new EducationResource($this->education->last()),
            'is_favorite' => $isFavorite,
        ];
    }
}
