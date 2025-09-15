<?php

namespace App\Services;

use App\Models\Major;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;

class MajorService
{
    /**
     * Get all majors
     */
    public function getAllMajors(): Collection
    {
        return Major::all();
    }

    /**
     * Get major by ID
     */
    public function getMajorById(int $id): Major
    {
        $major = Major::find($id);
        
        if (!$major) {
            throw new ModelNotFoundException('Major not found');
        }
        
        return $major;
    }

    /**
     * Create a new major
     */
    public function createMajor(array $data): Major
    {
        return DB::transaction(function () use ($data) {
            return Major::create($data);
        });
    }

    /**
     * Update major
     */
    public function updateMajor(int $id, array $data): Major
    {
        return DB::transaction(function () use ($id, $data) {
            $major = $this->getMajorById($id);
            $major->update($data);
            return $major->fresh();
        });
    }

    /**
     * Delete major
     */
    public function deleteMajor(int $id): bool
    {
        return DB::transaction(function () use ($id) {
            $major = $this->getMajorById($id);
            return $major->delete();
        });
    }

    /**
     * Search majors by name
     */
    public function searchMajors(string $query): Collection
    {
        return Major::where('name_en', 'like', "%{$query}%")
                    ->orWhere('name_ar', 'like', "%{$query}%")
                    ->get();
    }
}
