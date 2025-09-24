<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\ExperienceResource;
use App\Services\ExperienceService;
use Illuminate\Http\Request;
use App\Models\Experience;
// localization
use App\Helpers\LocalizationHelper;
use Exception;

class ExperienceController extends Controller
{
    protected $service;

    public function __construct(ExperienceService $service)
    {
        $this->service = $service;
    }

    public function index(Request $request)
    {
        try {
            $user = $request->user();
            $experiences = $this->service->listForUser($user->id);
            return LocalizationHelper::successResponse(
                'experiences_retrieved_successfully',
                ExperienceResource::collection($experiences),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_experiences',
                $e->getMessage(),
                500
            );
        }
    }

    public function store(Request $request)
    {
        try {
            $data = $request->validate([
                'company_name' => 'nullable|string|max:255',
                'position' => 'nullable|string|max:255',
                'location' => 'nullable|string|max:255',
                'start_date' => 'nullable|date',
                'end_date' => 'nullable|date|after_or_equal:start_date',
                'description' => 'nullable|string',
                'is_current' => 'sometimes|boolean',
                'skills' => 'sometimes|array',
                'skills.*' => 'string|max:255',
            ]);

            $experience = $this->service->createForUser($request->user()->id, $data);
            return LocalizationHelper::successResponse(
                'experience_created_successfully',
                new ExperienceResource($experience),
                201
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_create_experience',
                $e->getMessage(),
                500
            );
        }
    }

    public function show($id)
    {
        try {
            
            $experience = Experience::with('skills')->find($id);
            if(!$experience) {
                return LocalizationHelper::errorResponse(
                    'experience_not_found',
                    'Experience not found',
                    404
                );
            }
            return LocalizationHelper::successResponse(
                'experience_retrieved_successfully',
                new ExperienceResource($experience),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_experience',
                $e->getMessage(),
                500
            );
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $data = $request->validate([
                'company_name' => 'nullable|string|max:255',
                'position' => 'nullable|string|max:255',
                'location' => 'nullable|string|max:255',
                'start_date' => 'nullable|date',
                'end_date' => 'nullable|date|after_or_equal:start_date',
                'description' => 'nullable|string',
                'is_current' => 'sometimes|boolean',
                'skills' => 'sometimes|array',
                'skills.*' => 'string|max:255',
            ]);

            $experience = $this->service->update($id, $data);
            $user = auth('api')->user();
            if ($user->type !== 'admin' && $experience->user_id !== $user->id) {
                return LocalizationHelper::errorResponse('unauthorized', 'You are not authorized to update this experience', 403);
            }

            $experience = $this->service->update($id, $data);
            
            return LocalizationHelper::successResponse(
                'experience_updated_successfully',
                new ExperienceResource($experience),
                200
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_update_experience',
                $e->getMessage(),
                500
            );
        }
    }

    public function destroy(Request $request, $id)
    {
        try {
            $user = auth('api')->user();
            $experience = Experience::find($id);
            if (!$experience) {
                return LocalizationHelper::errorResponse('experience_not_found', null, 404);
            }

            if ($user->type !== 'admin' && $experience->user_id !== $user->id) {
                return LocalizationHelper::errorResponse('unauthorized', 'You are not authorized to delete this experience', 403);
            }

            $this->service->delete($id);
            return LocalizationHelper::successResponse('experience_deleted_successfully');
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse('experience_not_found', null, 404);
        } 
    }
}
        