<?php

namespace App\Http\Resources;

use App\Http\Resources\MajorResource;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class InterviewResource extends JsonResource
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
            'interview_id' => $this->interview_id,
            'user' => $this->user ? [
                'id' => $this->user->id,
                'name' => $this->user->fname . ' ' . $this->user->lname,
            ] : null,
            'major' => $this->user ?  new MajorResource($this->user->major) : null,
            'performance' => $this->performance . '%',
            'status' => $this->status,
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
        ];
    }
}
