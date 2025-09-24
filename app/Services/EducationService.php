<?php

namespace App\Services;

use App\Models\Education;
use Illuminate\Support\Facades\DB;

class EducationService
{
    public function listForUser(int $userId)
    {
        return Education::with('skills')->where('user_id', $userId)->orderByDesc('start_date')->get();
    }

    public function createForUser(int $userId, array $data): Education
    {
        return DB::transaction(function () use ($userId, $data) {
            $education = Education::create([
                'user_id' => $userId,
                'university' => $data['university'] ?? null,
                'degree' => $data['degree'] ?? null,
                'major_id' => $data['major_id'] ?? null,
                'major_name' => $data['major_name'] ?? null,
                'start_date' => $data['start_date'] ?? null,
                'end_date' => $data['end_date'] ?? null,
                'description' => $data['description'] ?? null,
            ]);

            foreach ($data['skills'] ?? [] as $name) {
                $education->skills()->create([
                    'user_id' => $userId,
                    'name' => $name,
                ]);
            }

            return $education->load('skills');
        });
    }

    public function update(int $id, array $data): Education
    {
        return DB::transaction(function () use ($id, $data) {
            $education = Education::with('skills')->findOrFail($id);

            $education->update([
                'university' => $data['university'] ?? $education->university,
                'degree' => $data['degree'] ?? $education->degree,
                'major_id' => $data['major_id'] ?? $education->major_id,
                'major_name' => $data['major_name'] ?? $education->major_name,
                'start_date' => $data['start_date'] ?? $education->start_date,
                'end_date' => $data['end_date'] ?? $education->end_date,
                'description' => $data['description'] ?? $education->description,
            ]);

            if (array_key_exists('skills', $data)) {
                $education->skills()->delete();
                foreach ($data['skills'] as $name) {
                    $education->skills()->create([
                        'user_id' => $education->user_id,
                        'name' => $name,
                    ]);
                }
            }

            return $education->load('skills');
        });
    }

    public function delete(int $id): bool
    {
        return DB::transaction(function () use ($id) {
            $education = Education::with('skills')->findOrFail($id);
            $education->skills()->delete();
            return (bool) $education->delete();
        });
    }
}


