<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\MajorResource;
use App\Services\MajorService;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Validation\ValidationException;
use Exception;

class MajorController extends Controller
{
    protected $majorService;

    public function __construct(MajorService $majorService)
    {
        $this->majorService = $majorService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(): JsonResponse
    {
        try {
            $majors = $this->majorService->getAllMajors();
            return response()->json([
                'success' => true,
                'data' => MajorResource::collection($majors)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve majors',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): JsonResponse
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
            ]);

            $major = $this->majorService->createMajor($request->all());

            return response()->json([
                'success' => true,
                'message' => 'Major created successfully',
                'data' => new MajorResource($major)
            ], 201);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to create major',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id): JsonResponse
    {
        try {
            $major = $this->majorService->getMajorById((int)$id);
            return response()->json([
                'success' => true,
                'data' => new MajorResource($major)
            ]);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Major not found'
            ], 404);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve major',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id): JsonResponse
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
            ]);

            $major = $this->majorService->updateMajor((int)$id, $request->all());

            return response()->json([
                'success' => true,
                'message' => 'Major updated successfully',
                'data' => new MajorResource($major)
            ]);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Major not found'
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
                'message' => 'Failed to update major',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id): JsonResponse
    {
        try {
            $this->majorService->deleteMajor((int)$id);
            return response()->json([
                'success' => true,
                'message' => 'Major deleted successfully'
            ]);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Major not found'
            ], 404);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete major',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Search majors by name
     */
    public function search(string $query): JsonResponse
    {
        try {
            $majors = $this->majorService->searchMajors($query);
            return response()->json([
                'success' => true,
                'data' => MajorResource::collection($majors)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to search majors',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
