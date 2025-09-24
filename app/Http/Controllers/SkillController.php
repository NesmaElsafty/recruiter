<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Skill;
use App\Http\Resources\SkillResource;
use App\Helpers\LocalizationHelper;
use Exception;
use App\Models\User;

class SkillController extends Controller
{
    //
    public function index()
    {
        try {
        $user = auth('api')->user();
        $skills = Skill::where(['skillable_type'=> User::class, 'skillable_id'=> $user->id])->get();
        return LocalizationHelper::successResponse(
            'skills_retrieved_successfully',
            SkillResource::collection($skills),
            200
        );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_skills',
                $e->getMessage(),
                500
            );
        }
    }

    public function store(Request $request)
    {
        try {
        $request->validate([
            'name' => 'required|string|max:255',
        ]);
        $user = auth('api')->user();
        
        $skill = new Skill();
        $skill->name = $request->name;
        $skill->skillable_id = $user->id;
        $skill->skillable_type = User::class;
        $skill->save();

        return LocalizationHelper::successResponse(
            'skill_created_successfully',
            new SkillResource($skill),
            201
        );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_create_skill',
                $e->getMessage(),
                500
            );
        }
    }
    
    public function update(Request $request, $id)
    {
        try {
        $user = auth('api')->user();
        $skill = Skill::find($id);

        if(!$skill) {
            return LocalizationHelper::errorResponse(
                'skill_not_found',
                'Skill not found',
                404
            );
        }

        if($skill->skillable_type != User::class || $skill->skillable_id != $user->id) {
          dd($user->type, $skill->skillable_type, $skill->skillable_id);
            return LocalizationHelper::errorResponse(
                'unauthorized',
                'You are not authorized to update this skill',
                403
            );
        }

        $request->validate([
            'name' => 'required|string|max:255',
        ]);
        $skill->name = $request->name;
        $skill->save();
        
        return LocalizationHelper::successResponse(
            'skill_updated_successfully',
            new SkillResource($skill),
            200
        );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_update_skill',
                $e->getMessage(),
                500
            );
        }
    }
    
    public function destroy($id)
    {
        try {
            $user = auth('api')->user();
            $skill = Skill::find($id);
            if(!$skill) {
                return LocalizationHelper::errorResponse(
                    'skill_not_found',
                    'Skill not found',
                    404
                );
            }
            if($skill->skillable_type != User::class || $skill->skillable_id != $user->id) {
                return LocalizationHelper::errorResponse(
                    'unauthorized',
                    'You are not authorized to delete this skill',
                    403
                );
            }
        $skill->delete();
        return LocalizationHelper::successResponse(
            'skill_deleted_successfully',
            new SkillResource($skill),
            200
        );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_delete_skill',
                $e->getMessage(),
                500
            );
        }
    }
    
    
}
