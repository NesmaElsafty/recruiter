<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\CityResource;
use App\Services\CityService;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Validation\ValidationException;
use Exception;
use App\Helpers\LocalizationHelper;
use App\Http\Resources\AdminCityResource;
use App\Helpers\PaginationHelper;

class CityController extends Controller
{
    protected $cityService;

    public function __construct(CityService $cityService)
    {
        $this->cityService = $cityService;
    }


    public function index()
    {
        try {
            $cities = $this->cityService->getAllCities();
            return LocalizationHelper::successResponse(
                'cities_retrieved_successfully',
                CityResource::collection($cities)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_cities',
                $e->getMessage(),
                500
            );
        }
    }

    // getAllCities
    public function getAllCities(Request $request)
    {
        try {
            $cities = $this->cityService->getAllCities($request->all())->paginate(10);
            return response()->json([
                'success' => true,
                'data' => AdminCityResource::collection($cities),
                'pagination' => PaginationHelper::paginate($cities)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve cities',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // getCityById
    public function getCityById($id)
    {
        try {
            $city = $this->cityService->getCityById($id);
            return response()->json([
                'success' => true,
                'data' => $city
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve city',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
            ]);

            $city = $this->cityService->createCity($request->all());

            return LocalizationHelper::successResponse(
                'city_created_successfully',
                new CityResource($city),
                201
            );
        } catch (ValidationException $e) {
            return LocalizationHelper::errorResponse(
                'validation_failed',
                $e->errors(),
                422
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_create_city',
                $e->getMessage(),
                500
            );
        }
    }

    public function show(string $id)
    {
        try {
            $city = $this->cityService->getCityById((int)$id);
            return LocalizationHelper::successResponse(
                'city_retrieved_successfully',
                new CityResource($city)
            );
        } catch (ModelNotFoundException $e) {
            return LocalizationHelper::errorResponse(
                'city_not_found',
                null,
                404
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_city',
                $e->getMessage(),
                500
            );
        }
    }

    public function update(Request $request, string $id)
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
            ]);

            $city = $this->cityService->updateCity((int)$id, $request->all());

            return response()->json([
                'success' => true,
                'message' => 'City updated successfully',
                'data' => new CityResource($city)
            ]);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'City not found'
            ], 404);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update city',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy(string $id)
    {
        try {
            $this->cityService->deleteCity((int)$id);
            return response()->json([
                'success' => true,
                'message' => 'City deleted successfully'
            ]);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'City not found'
            ], 404);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete city',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function search(string $query)
    {
        try {
            $cities = $this->cityService->searchCities($query);
            return response()->json([
                'success' => true,
                'data' => CityResource::collection($cities)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to search cities',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
