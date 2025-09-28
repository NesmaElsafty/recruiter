<?php

namespace App\Services;

use App\Models\SubMajor;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;

class SubMajorService
{
    /**
     * Get all sub majors
     */
    public function getAllSubMajors()
    {
        return SubMajor::with('major')->get();
    }

    /**
     * Get sub major by ID
     */
    public function getSubMajorById(int $id): SubMajor
    {
        $subMajor = SubMajor::with('major')->find($id);
        
        if (!$subMajor) {
            throw new ModelNotFoundException('Sub major not found');
        }
        
        return $subMajor;
    }

    /**
     * Create a new sub major
     */
    public function createSubMajor(array $data): SubMajor
    {
        return DB::transaction(function () use ($data) {
            return SubMajor::create($data);
        });
    }

    /**
     * Update sub major
     */
    public function updateSubMajor(int $id, array $data): SubMajor
    {
        return DB::transaction(function () use ($id, $data) {
            $subMajor = $this->getSubMajorById($id);
            $subMajor->update($data);
            return $subMajor->fresh();
        });
    }

    /**
     * Delete sub major
     */
    public function deleteSubMajor(int $id): bool
    {
        return DB::transaction(function () use ($id) {
            $subMajor = $this->getSubMajorById($id);
            return $subMajor->delete();
        });
    }

    /**
     * Search sub majors by name
     */
    public function searchSubMajors(string $query)
    {
        return SubMajor::with('major')
                    ->where('name_en', 'like', "%{$query}%")
                    ->orWhere('name_ar', 'like', "%{$query}%")
                    ->get();
    }

    /**
     * Get sub majors by major ID
     */
    public function getSubMajorsByMajorId(int $majorId)
    {
        return SubMajor::where('major_id', $majorId)->get();
    }
}
