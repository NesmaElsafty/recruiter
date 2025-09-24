<?php

namespace App\Services;

use App\Models\Experience;
use App\Models\Skill;
use Illuminate\Support\Facades\DB;

class ExperienceService
{
    public function listForUser(int $userId)
    {
        return Experience::with('skills')->where('user_id', $userId)->orderByDesc('start_date')->get();
    }

    public function createForUser(int $userId, array $data): Experience
    {
        return DB::transaction(function () use ($userId, $data) {
            $experience = Experience::create([
                'user_id' => $userId,
                'company_name' => $data['company_name'] ?? null,
                'position' => $data['position'] ?? null,
                'location' => $data['location'] ?? null,
                'start_date' => $data['start_date'] ?? null,
                'end_date' => $data['end_date'] ?? null,
                'description' => $data['description'] ?? null,
                'is_current' => (bool)($data['is_current'] ?? false),
            ]);

            $skills = $data['skills'] ?? [];
            foreach ($skills as $name) {
                $experience->skills()->create(['name' => $name]);
            }

            return $experience->load('skills');
        });
    }

    public function update(int $id, array $data): Experience
    {
        return DB::transaction(function () use ($id, $data) {
            $experience = Experience::with('skills')->findOrFail($id);

            $experience->update([
                'company_name' => $data['company_name'] ?? $experience->company_name,
                'position' => $data['position'] ?? $experience->position,
                'location' => $data['location'] ?? $experience->location,
                'start_date' => $data['start_date'] ?? $experience->start_date,
                'end_date' => $data['end_date'] ?? $experience->end_date,
                'description' => $data['description'] ?? $experience->description,
                'is_current' => (bool)($data['is_current'] ?? $experience->is_current),
            ]);

            if (array_key_exists('skills', $data)) {
                $experience->skills()->delete();
                foreach ($data['skills'] as $name) {
                    $experience->skills()->create(['name' => $name]);
                }
            }

            return $experience->load('skills');
        });
    }

    public function delete(int $id): bool
    {
        return DB::transaction(function () use ($id) {
            $experience = Experience::with('skills')->findOrFail($id);
            $experience->skills()->delete();
            return (bool) $experience->delete();
        });
    }
}


