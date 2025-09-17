<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class FeedbackResource extends JsonResource
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
            'user' => $this->whenLoaded('user', function () {
                return [
                    'id' => $this->user->id,
                    'name' => $this->user->fname . ' ' . $this->user->lname,
                    'email' => $this->user->email,
                    'type' => $this->user->type,
                ];
            }),
            'comment' => $this->comment,
            'rating' => (int)$this->rating,
            'rating_type' => $this->rating_type,
            'is_active' => (bool)$this->is_active,
            // 'is_anonymous' => is_null($this->user_id),
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
            'created_at_human' => $this->created_at?->diffForHumans(),
        ];
    }
}