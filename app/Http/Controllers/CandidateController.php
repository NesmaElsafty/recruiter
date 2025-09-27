<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\LocalizationHelper;
use App\Helpers\PaginationHelper;
use App\Http\Resources\UserResource;
use App\Models\User;
use Exception;
use App\Services\UserService;
use App\Http\Resources\CandidateResource;
use App\Models\Favorite;

class CandidateController extends Controller
{
    //
    protected $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function index(Request $request)
    {
        $candidates = User::with(['city', 'major', 'skills', 'experiences', 'education'])->where(['type'=> 'candidate', 'is_active'=> true]);
       

        if(isset($request->search)) {
            $candidates = $candidates->where('fname', 'like', '%'.$request->search.'%')
            ->orWhere('lname', 'like', '%'.$request->search.'%')
            ->orWhere('email', 'like', '%'.$request->search.'%')
            ->orWhere('phone', 'like', '%'.$request->search.'%')

            ->orWhereHas('major', function ($query) use ($request) {
                $query->where('name_en', 'like', '%'.$request->search.'%')
                      ->orWhere('name_ar', 'like', '%'.$request->search.'%');
            })
            ->orWhereHas('experiences', function ($query) use ($request) {
                $query->where('position', 'like', '%'.$request->search.'%')
                      ->orWhere('company_name', 'like', '%'.$request->search.'%')
                    ->orWhereHas('skills', function ($query) use ($request) {
                        $query->where('name_en', 'like', '%'.$request->search.'%')
                              ->orWhere('name_ar', 'like', '%'.$request->search.'%');
                    });
            })
            ->orWhereHas('education', function ($query) use ($request) {
                $query->where('degree', 'like', '%'.$request->search.'%')
                      ->orWhere('university', 'like', '%'.$request->search.'%')
                      ->orWhereHas('skills', function ($query) use ($request) {
                        $query->where('name_en', 'like', '%'.$request->search.'%')
                              ->orWhere('name_ar', 'like', '%'.$request->search.'%');
                    });
            });
        }

        if(isset($request->city_id)) {
            $candidates = $candidates->where('city_id', $request->city_id);
        }

        if(isset($request->major_id)) {
            $candidates = $candidates->where('major_id', $request->major_id);
        }

        // years of experience
        if(isset($request->total_years_from) && isset($request->total_years_to)) {     
            $candidates = $candidates->whereBetween('total_period', [$request->total_years_from, $request->total_years_to]);
        }
        $candidates = $candidates->paginate(10);


        return LocalizationHelper::successResponse(
            'candidates_retrieved_successfully',
            CandidateResource::collection($candidates),
            200,
            [
                'pagination' => PaginationHelper::paginate($candidates),
            ]
        );
    }

    public function show(Request $request)
    {
        try{
        $candidate = User::where(['type'=> 'candidate', 'is_active'=> true])->find($request->id);
        $candidate->load(['city', 'major', 'skills', 'experiences', 'education']);
        if(!$candidate) {
            return LocalizationHelper::errorResponse(
                'candidate_not_found',
                null,
                404
            );
        }
        return LocalizationHelper::successResponse(
            'candidate_retrieved_successfully',
            new UserResource($candidate),
            200
        );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_candidate',
                $e->getMessage(),
                500
            );
        }
    }

    // add to favorites
    public function addToFavorites(Request $request)
    {
        try{
        $recruiter = auth('api')->user();
        $request->validate([
            'candidate_id' => 'required|exists:users,id',
        ]);
        $favorite = Favorite::updateOrCreate([
            'recruiter_id' => $recruiter->id,
            'candidate_id' => $request->candidate_id,
        ], [
            'recruiter_id' => $recruiter->id,
            'candidate_id' => $request->candidate_id,
        ]);
        $favorite->load('recruiter', 'candidate');
        return LocalizationHelper::successResponse(
            'candidate_added_to_favorites_successfully',
            null,
            200
        );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_add_candidate_to_favorites',
                $e->getMessage(),
                500
            );
        }
    }

    // remove from favorites
    public function removeFromFavorites(Request $request)
    {
        try{
        $recruiter = auth('api')->user();
        $request->validate([
            'candidate_id' => 'required|exists:users,id',
        ]);
        $favorite = Favorite::where('recruiter_id', $recruiter->id)->where('candidate_id', $request->candidate_id)->first();
        if(!$favorite){
            return LocalizationHelper::errorResponse(
                'candidate_not_found_in_favorites',
                null,
                404
            );
        }
        $favorite = Favorite::where('recruiter_id', $recruiter->id)->where('candidate_id', $request->candidate_id)->delete();
        return LocalizationHelper::successResponse(
            'candidate_removed_from_favorites_successfully',
            null,
            200
        );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_remove_candidate_from_favorites',
                $e->getMessage(),
                500
            );
        }
    }

    // get favorites
    public function getFavorites(Request $request)
    {
        try{

            if(isset($request->search)) {
                $candidates = $candidates->where('fname', 'like', '%'.$request->search.'%')
                ->orWhere('lname', 'like', '%'.$request->search.'%')
                ->orWhere('email', 'like', '%'.$request->search.'%')
                ->orWhere('phone', 'like', '%'.$request->search.'%')

                ->orWhereHas('major', function ($query) use ($request) {
                    $query->where('name_en', 'like', '%'.$request->search.'%')
                            ->orWhere('name_ar', 'like', '%'.$request->search.'%');
                })
                ->orWhereHas('experiences', function ($query) use ($request) {
                    $query->where('position', 'like', '%'.$request->search.'%')
                            ->orWhere('company_name', 'like', '%'.$request->search.'%')
                        ->orWhereHas('skills', function ($query) use ($request) {
                            $query->where('name_en', 'like', '%'.$request->search.'%')
                                    ->orWhere('name_ar', 'like', '%'.$request->search.'%');
                        });
                })
                ->orWhereHas('education', function ($query) use ($request) {
                    $query->where('degree', 'like', '%'.$request->search.'%')
                            ->orWhere('university', 'like', '%'.$request->search.'%')
                            ->orWhereHas('skills', function ($query) use ($request) {
                            $query->where('name_en', 'like', '%'.$request->search.'%')
                                    ->orWhere('name_ar', 'like', '%'.$request->search.'%');
                        });
                });
            }

            if(isset($request->city_id)) {
                $candidates = $candidates->where('city_id', $request->city_id);
            }

            if(isset($request->major_id)) {
                $candidates = $candidates->where('major_id', $request->major_id);
            }

            // years of experience
            if(isset($request->total_years_from) && isset($request->total_years_to)) {     
                $candidates = $candidates->whereBetween('total_period', [$request->total_years_from, $request->total_years_to]);
            }
            
        $recruiter = auth('api')->user();
        $favorites = Favorite::where('recruiter_id', $recruiter->id)->with('candidate')->get();
        // get candidates
        $candidates = User::whereIn('id', $favorites->pluck('candidate_id'))->get();
        return LocalizationHelper::successResponse(
            'favorites_retrieved_successfully',
            CandidateResource::collection($candidates),
            200
        );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_favorites',
                $e->getMessage(),
                500
            );
        }
    }
}
