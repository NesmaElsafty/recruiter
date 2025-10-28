<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\MajorResource;
use App\Http\Resources\AdminMajorResource;
use App\Services\MajorService;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Validation\ValidationException;
use Exception;
use App\Helpers\LocalizationHelper;
use App\Helpers\PaginationHelper;

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
    public function index()
    {
        try {
            $majors = $this->majorService->getAllMajors();
            return LocalizationHelper::successResponse(
                'cities_retrieved_successfully',
                MajorResource::collection($majors)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_majors',
                $e->getMessage(),
                500
            );
        }
    }

    // getAllMajors
    public function getAllMajors(Request $request)
    {
        try {
            $majors = $this->majorService->getAllMajors($request->all())->paginate(10);
            return response()->json([
                'success' => true,
                'data' => AdminMajorResource::collection($majors),
                'pagination' => PaginationHelper::paginate($majors)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve majors',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // getMajorById
    public function getMajorById(int $id)
    {
        try {
            $major = $this->majorService->getMajorById($id);
            return response()->json([
                'success' => true,
                'data' => new AdminMajorResource($major)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve major',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
                'sub_majors' => 'nullable|array',
                'sub_majors.*.name_en' => 'required|string|max:255',
                'sub_majors.*.name_ar' => 'required|string|max:255',
            ]);

            $major = $this->majorService->createMajor($request->all());

            // attach sub majors to major
            if($request->has('sub_majors')){
                foreach($request->sub_majors as $sub_major){
                    $major->subMajors()->create([
                        'name_en' => $sub_major['name_en'],
                        'name_ar' => $sub_major['name_ar'],
                        'major_id' => $major->id,
                    ]);
                }
            }
            return response()->json([
                'success' => true,
                'message' => 'Major created successfully',
                'data' => new AdminMajorResource($major)
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
    public function show($id)
    {
        try {
            $major = $this->majorService->getMajorById((int)$id);
            return response()->json([
                'success' => true,
                'data' => new AdminMajorResource($major)
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
    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
            ]);

            $major = $this->majorService->updateMajor((int)$id, $request->all());

            // update sub majors
            if($request->has('sub_majors')){
                $major->subMajors()->delete();
                foreach($request->sub_majors as $sub_major){
                    $major->subMajors()->create([
                        'name_en' => $sub_major['name_en'],
                        'name_ar' => $sub_major['name_ar'],
                        'major_id' => $major->id,
                    ]);
                }
            }
            return LocalizationHelper::successResponse(
                'major_updated_successfully',
                new AdminMajorResource($major)
            );
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
    public function destroy($id)
    {
        try {
            $this->majorService->deleteMajor((int)$id);
            return response()->json([
                'success' => true,
                'message' => 'Major deleted successfully'
            ]);
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_delete_major',
                $e->getMessage()
            );
        }
    }

    /**
     * Search majors by name
     */
    public function search($query)
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
