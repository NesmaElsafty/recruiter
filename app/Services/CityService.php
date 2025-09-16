<?php

namespace App\Services;

use App\Models\City;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;

class CityService
{
    /**
     * Get all cities
     */
    public function getAllCities()
    {
        return City::all();
    }

    /**
     * Get city by ID
     */
    public function getCityById(int $id): City
    {
        $city = City::find($id);
        
        if (!$city) {
            throw new ModelNotFoundException('City not found');
        }
        
        return $city;
    }

    /**
     * Create a new city
     */
    public function createCity(array $data): City
    {
        return DB::transaction(function () use ($data) {
            return City::create($data);
        });
    }

    /**
     * Update city
     */
    public function updateCity(int $id, array $data): City
    {
        return DB::transaction(function () use ($id, $data) {
            $city = $this->getCityById($id);
            $city->update($data);
            return $city->fresh();
        });
    }

    /**
     * Delete city
     */
    public function deleteCity(int $id): bool
    {
        return DB::transaction(function () use ($id) {
            $city = $this->getCityById($id);
            return $city->delete();
        });
    }

    /**
     * Search cities by name
     */
    public function searchCities(string $query)
    {
        return City::where('name_en', 'like', "%{$query}%")
                   ->orWhere('name_ar', 'like', "%{$query}%")
                   ->get();
    }
}
