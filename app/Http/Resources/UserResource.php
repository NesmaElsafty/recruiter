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

        $basic_data =[
            'id' => $this->id,
            'fname' => $this->fname,
            'lname' => $this->lname,
            'email' => $this->email,
            'phone' => $this->phone,
        ];

        $achieved_precentage = 0;
        $total_precentage = 7;

        // check if $basic data has any value and return false if empty
        foreach($basic_data as $key => $value){
            if(empty($value)){
                $achieved_precentage = 0;
                break;
            }
            $achieved_precentage = 1;
        }

        $total_experiences = $this->experiences()->count();
        if($total_experiences > 0){
            $achieved_precentage += 1;
        }

        $total_educations = $this->education()->count();
        if($total_educations > 0){
            $achieved_precentage += 1;
        }

        $total_skills = $this->skills()->count();
        if($total_skills > 0){
            $achieved_precentage += 1;
        }

        $total_interviews = $this->interviews()->count();
        if($total_interviews > 0){
            $achieved_precentage += 1;
        }

        $check_resume = $this->getFirstMediaUrl('resume');
        if($check_resume){
            $achieved_precentage += 1;
        }

        $check_image = $this->getFirstMediaUrl('avatar');
        if($check_image){
            $achieved_precentage += 1;
        }

        $profile_progress = round(($achieved_precentage / $total_precentage) * 100, 0);

        
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

            'profile_progress' => $profile_progress . '%',
           
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
        ];
    }
}
