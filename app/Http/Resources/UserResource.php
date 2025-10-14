<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\FeedbackResource;
use App\Http\Resources\CityResource;
use App\Http\Resources\MajorResource;
use App\Http\Resources\ExperienceResource;
use App\Http\Resources\EducationResource;
use App\Helpers\LocalizationHelper;

class UserResource extends JsonResource
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
        return [
            'id' => $this->id,
            'fname' => $this->fname,
            'lname' => $this->lname,
            'email' => $this->email,
            'phone' => $this->phone,
            'type' => $this->type,
            'type_label' => LocalizationHelper::getTypeValue($this->type),
            'is_active' => $this->is_active,
            'status' => $this->is_active ? LocalizationHelper::getStatusValue('active') : LocalizationHelper::getStatusValue('inactive'),
            'company_name' => $this->company_name,
            'job_title' => $this->job_title,

            'interviews' => $this->whenLoaded('interviews', function () {
                return InterviewResource::collection($this->interviews);
            }),

            'subscriptions' => $this->whenLoaded('subscriptions', function () {
                return SubscriptionResource::collection($this->subscriptions);
            }),

            'city' => $this->whenLoaded('city', function () {
                return new CityResource($this->city);
            }),
            'major' => $this->whenLoaded('major', function () {
                return new MajorResource($this->major);
            }),
            'major_name' => $this->major_name,
            'sub_major' => $this->whenLoaded('sub_major', function () {
                return new SubMajorResource($this->sub_major);
            }),
                    
            'feedbacks' => $this->whenLoaded('feedbacks', function () {
                return FeedbackResource::collection($this->feedbacks);
            }),

            'image' => $this->getFirstMediaUrl('avatar'),  
            'resume' => $this->getFirstMediaUrl('resume'),

            'experiences' => $this->whenLoaded('experiences', function () {
                return ExperienceResource::collection($this->experiences);
            }),

            'education' => $this->whenLoaded('education', function () {
                return EducationResource::collection($this->education);
            }),

            'skills' => $this->whenLoaded('skills', function () {
                return SkillResource::collection($this->skills);
            }),
           
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
        ];
    }
}
