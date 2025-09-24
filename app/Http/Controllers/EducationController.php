<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\EducationResource;
use App\Services\EducationService;
use Illuminate\Http\Request;
use App\Helpers\LocalizationHelper;
use Exception;
use App\Models\Education;

class EducationController extends Controller
{
    protected $service;

    public function __construct(EducationService $service)
    {
        $this->service = $service;
    }

    public function index(Request $request)
    {
        try {
            $user = $request->user();
            $items = $this->service->listForUser($user->id);
            return LocalizationHelper::successResponse(
                'education_retrieved_successfully',
                EducationResource::collection($items)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse('failed_to_retrieve_education', $e->getMessage());
        }
    }

    public function store(Request $request)
    {
        try {
            $data = $request->validate([
                'university' => 'nullable|string|max:255',
                'degree' => 'nullable|string|max:255',
                'major_id' => 'nullable|exists:majors,id',
                'major_name' => 'nullable|string|max:255',
                'start_date' => 'nullable|date',
                'end_date' => 'nullable|date|after_or_equal:start_date',
                'description' => 'nullable|string',
                'skills' => 'sometimes|array',
                'skills.*' => 'string|max:255',
            ]);

            $education = $this->service->createForUser($request->user()->id, $data);
            return LocalizationHelper::successResponse(
                'education_created_successfully',
                new EducationResource($education),
                201
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse('failed_to_create_education', $e->getMessage());
        }
    }

    public function show($id)
    {
        try {
            $education = Education::with('skills')->find($id);
            if (!$education) {
                return LocalizationHelper::errorResponse('education_not_found', null, 404);
            }
            return LocalizationHelper::successResponse(
                'education_retrieved_successfully',
                new EducationResource($education)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse('failed_to_retrieve_education', $e->getMessage());
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $data = $request->validate([
                'university' => 'nullable|string|max:255',
                'degree' => 'nullable|string|max:255',
                'major_id' => 'nullable|exists:majors,id',
                'major_name' => 'nullable|string|max:255',
                'start_date' => 'nullable|date',
                'end_date' => 'nullable|date|after_or_equal:start_date',
                'description' => 'nullable|string',
                'skills' => 'sometimes|array',
                'skills.*' => 'string|max:255',
            ]);

            $user = auth('api')->user();
            $education = Education::find($id);
            if (!$education) {
                return LocalizationHelper::errorResponse('education_not_found', null, 404);
            }

            if ($user->type !== 'admin' && $education->user_id !== $user->id) {
                return LocalizationHelper::errorResponse('unauthorized', 'You are not authorized to update this education', 403);
            }

            $education = $this->service->update($id, $data);
            return LocalizationHelper::successResponse(
                'education_updated_successfully',
                new EducationResource($education)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse('failed_to_update_education', $e->getMessage());
        }
    }

    public function destroy($id)
    {
        try {
            $education = Education::find($id);
            if (!$education) {
                return LocalizationHelper::errorResponse('education_not_found', null, 404);
            }

            $user = auth('api')->user();
            if ($user->type !== 'admin' && $education->user_id !== $user->id) {
                return LocalizationHelper::errorResponse('unauthorized', 'You are not authorized to delete this education', 403);
            }

            $this->service->delete($id);
            return LocalizationHelper::successResponse('education_deleted_successfully');
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse('failed_to_delete_education', $e->getMessage());
        }
    }
}
