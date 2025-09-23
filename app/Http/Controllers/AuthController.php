<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Exception;
use App\Helpers\LocalizationHelper;

class AuthController extends Controller
{
    /**
     * Register a new user
     */
    public function register(Request $request)
    {
        try {
            $request->validate([
                'fname' => 'required|string|max:255',
                'lname' => 'required|string|max:255',
                'email' => 'required|email|max:255|unique:users,email',
                'type' => 'required|string|in:candidate,recruiter,admin',
                'phone' => 'required|string|max:255|unique:users,phone',
                'city_id' => 'nullable|exists:cities,id',
                'major_id' => 'nullable|exists:majors,id',
                'company_name' => 'nullable|string|max:255',
                'job_title' => 'nullable|string|max:255',
            ]);    
            $userData = $request->all();
            $userData['password'] = Hash::make($userData['password']);
            
            $user = User::create($userData);
            $token = $user->createToken('auth-token');

            // Load relationships for response
            $user->load(['city', 'major']);

            return LocalizationHelper::successResponse(
                'user_created_successfully',
                [
                    'user' => new UserResource($user),
                    'token' => $token,
                ],
                201
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_create_user',
                $e->getMessage(),
                500
            );
        }
    }

    /**
     * Login user
     */
    public function login(LoginRequest $request)
    {
        try {
            $credentials = $request->validated();

            // Find user by email and type
            $user = User::where('email', $credentials['email'])
                       ->where('type', $credentials['type'])
                       ->first();

            if (!$user || !Hash::check($credentials['password'], $user->password)) {
                return LocalizationHelper::errorResponse(
                    'unauthorized',
                    null,
                    401
                );
            }

            // Create token
            $token = $user->createToken('auth-token');

            // Load relationships for response
            $user->load(['city', 'major']);

            return LocalizationHelper::successResponse(
                'login_successful',
                [
                    'user' => new UserResource($user),
                    'token' => $token,
                    'token_type' => 'Bearer'
                ]
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'login_failed',
                $e->getMessage(),
                500
            );
        }
    }

    /**
     * Logout user
     */
    public function logout(Request $request): JsonResponse
    {
        try {
            $user = $request->user();
            $user->revokeToken();

            return LocalizationHelper::successResponse(
                'logout_successful'
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'logout_failed',
                $e->getMessage(),
                500
            );
        }
    }

    /**
     * Get authenticated user profile
     */
    public function profile(Request $request)
    {
        try {
            $user = $request->user();
            $user->load(['city', 'major']);

            return LocalizationHelper::successResponse(
                'profile_retrieved_successfully',
                new UserResource($user)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_profile',
                $e->getMessage(),
                500
            );
        }
    }

    /**
     * Refresh token
     */
    public function refresh(Request $request)
    {
        try {
            $user = $request->user();
            
            // Create new token
            $token = $user->createToken('auth-token');

            return LocalizationHelper::successResponse(
                'token_refreshed_successfully',
                [
                    'token' => $token,
                    'token_type' => 'Bearer'
                ]
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'token_refresh_failed',
                $e->getMessage(),
                500
            );
        }
    }

    public function updateProfile(Request $request)
    {
        try {
            $user = auth('api')->user();
            $user->update($request->all());
            $user->load(['city', 'major']);
            return LocalizationHelper::successResponse(
                'profile_updated_successfully',
                new UserResource($user)
            );
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_update_profile',
                $e->getMessage(),
                500
            );
        }
    }

    public function updatePassword(Request $request)
    {
        try {
            $user = auth('api')->user();
            if(!Hash::check($request->current_password, $user->password)){
                return LocalizationHelper::errorResponse(
                    'invalid_current_password',
                    null,
                    401
                );
            }else{
                $user->update(['password' => Hash::make($request->new_password)]);
                return LocalizationHelper::successResponse(
                    'password_updated_successfully'
                );
            }
            
        } catch (Exception $e) {
            return LocalizationHelper::errorResponse(
                'failed_to_update_password',
                $e->getMessage(),
                500
            );
        }
    }
}
