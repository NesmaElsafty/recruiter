<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\SubMajorResource;
use App\Services\SubMajorService;
use App\Helpers\LocalizationHelper;
use Exception;

class SubMajorController extends Controller
{
    //
    protected $subMajorService;

    public function __construct(SubMajorService $subMajorService)
    {
        $this->subMajorService = $subMajorService;
    }

    public function index()
    {
        try {
            $subMajors = $this->subMajorService->getAllSubMajors();
            return LocalizationHelper::successResponse(
                'sub_majors_retrieved_successfully',
                SubMajorResource::collection($subMajors)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_sub_majors',
                $e->getMessage()
            );
        }
    }

    public function show ($id)
    {
        try {
            $subMajor = $this->subMajorService->getSubMajorById($id);
            return LocalizationHelper::successResponse(
                'sub_major_retrieved_successfully',
                new SubMajorResource($subMajor)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_sub_major',
                $e->getMessage()
            );
        }
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
                'major_id' => 'required|exists:majors,id',
            ]);
            $subMajor = $this->subMajorService->createSubMajor($request->all());
            return LocalizationHelper::successResponse(
                'sub_major_created_successfully',
                new SubMajorResource($subMajor)
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_create_sub_major',
                $e->getMessage()
            );
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'name_en' => 'required|string|max:255',
                'name_ar' => 'required|string|max:255',
                'major_id' => 'required|exists:majors,id',
            ]);
            $subMajor = $this->subMajorService->updateSubMajor($id, $request->all());
            return LocalizationHelper::successResponse(
                'sub_major_updated_successfully',
                new SubMajorResource($subMajor)
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_update_sub_major',
                $e->getMessage()
            );
        }
    }

    public function destroy($id)
    {
        try {
            $this->subMajorService->deleteSubMajor($id);
            return LocalizationHelper::successResponse(
                'sub_major_deleted_successfully'
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_delete_sub_major',
                $e->getMessage()
            );
        }
    }

    // get sub majors by major id   
    public function getSubMajorsByMajorId(Request $request)
    {
        try {
            $request->validate([
                'major_id' => 'required|exists:majors,id',
            ]);
            $subMajors = $this->subMajorService->getSubMajorsByMajorId($request->major_id);
            return LocalizationHelper::successResponse(
                'sub_majors_retrieved_successfully',
                SubMajorResource::collection($subMajors)
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_sub_majors',
                $e->getMessage()
            );
        }
    }
}
