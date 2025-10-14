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
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Mail;
use App\Mail\OtpMail;
use Exception;
use App\Helpers\LocalizationHelper;
use App\Services\UserService;
use App\Models\Major;
use App\Models\RefreshToken;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Cookie;


class AuthController extends Controller
{
    protected $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }
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
                'major_name' => 'nullable|string|max:255',
                'sub_major_id' => 'nullable|exists:sub_majors,id',
                'company_name' => 'nullable|string|max:255',
                'job_title' => 'nullable|string|max:255',
            ]);    
            $userData = $request->all();
            $userData['password'] = Hash::make($userData['password']);
            
            if($request->major_id != ""){
                $major = Major::find($request->major_id);
                $userData['major_id'] = $major->id;
                $userData['major_name'] = LocalizationHelper::getLocalizedFieldName($major->name_en, $major->name_ar);
            }
            $user = User::create($userData);
            $token = $user->createToken('auth-token');

            // Load relationships for response
            $user->load(['city', 'major', 'skills', 'experiences', 'education']);

            
            DB::beginTransaction();
            $access = $this->issueAccessToken($user, $request->header('X-Device-Name') ?: 'auth-token', minutes: 60);
            $refresh = $this->issueRefreshToken($user, $request, days: 30);

            DB::commit();

            return LocalizationHelper::successResponse(
                'user_created_successfully',
                [
                    'user' => new UserResource($user),
                    'token' => $access['token'],
                    'token_type' => 'Bearer',
                    'access_expires_at'     => $access['expires_at'],
                    'refresh_token'         => $refresh['refresh_token'],
                    'refresh_expires_at'    => $refresh['refresh_expires_at'],
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
                    'wrong_credintials',
                    null,
                    401
                );
            }

            DB::beginTransaction();
            $access = $this->issueAccessToken($user, $request->header('X-Device-Name') ?: 'auth-token', minutes: 60);
            $refresh = $this->issueRefreshToken($user, $request, days: 30);

            DB::commit();

            // Load relationships for response
            $user->load(['city', 'major']);

            return LocalizationHelper::successResponse(
                'login_successful',
                [
                    'user' => new UserResource($user),
                    'token' => $access['token'],
                    'token_type' => 'Bearer',
                    'access_expires_at'     => $access['expires_at'],
                    'refresh_token'         => $refresh['refresh_token'],
                    'refresh_expires_at'    => $refresh['refresh_expires_at'],
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
            $user->load(['city', 'major', 'skills', 'experiences', 'education']);

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

    public function refresh(Request $request)
    {
        try {
            // تقدر تبعته في البودي أو تاخده من كوكي HttpOnly
            $refreshPlain = $request->input('refresh_token') ?? $request->cookie('refresh_token');
            if (! $refreshPlain) {
                return LocalizationHelper::errorResponse('missing_refresh_token', null, 422);
            }
            // dd($refreshPlain);

            $hash = hash('sha256', $refreshPlain);

            /** @var \App\Models\RefreshToken $record */
            $record = RefreshToken::where('token_hash', $hash)->first();


            if (! $record || $record->revoked || $record->expires_at->isPast()) {
                return LocalizationHelper::errorResponse('invalid_or_expired_refresh_token', null, 401);
            }

            $user = User::find($record->user_id);
            if (! $user) {
                return LocalizationHelper::errorResponse('user_not_found', null, 401);
            }

            DB::beginTransaction();

            // 1) اعمل revoke للـ refresh القديم (rotation)
            $record->revoked = true;
            $record->save();

            // 2) اصدر access جديد
            $access = $this->issueAccessToken($user, $record->device_name ?: 'auth-token', minutes: 60);

            // 3) اصدر refresh جديد واربط القديم بالجديد
            $newRefresh = $this->issueRefreshToken($user, $request, days: 30);
            $record->replaced_by_id = $newRefresh['refresh_token_id'];
            $record->save();

            DB::commit();

            $payload = [
                'token'              => $access['token'],
                'access_expires_at'  => $access['expires_at'],
                'refresh_token'      => $newRefresh['refresh_token'],
                'refresh_expires_at' => $newRefresh['refresh_expires_at'],
                'token_type'         => 'Bearer',
            ];

            $response = LocalizationHelper::successResponse('token_refreshed_successfully', $payload);
            return $response;

        } catch (Exception $e) {
            return LocalizationHelper::errorResponse('token_refresh_failed', $e->getMessage(), 500);
        }
    }


    public function updateProfile(Request $request)
    {
        try {
            $user = auth('api')->user();
            $user->load(['city', 'major', 'skills', 'experiences', 'education']);

            $user = $this->userService->updateProfile($user->id, $request->all());

            if($request->hasFile('resume')){
                $user->clearMediaCollection('resume');
                $user->addMediaFromRequest('resume')
                    ->toMediaCollection('resume');
            }

            if($request->hasFile('image')){
                $user->clearMediaCollection('avatar');
                $user->addMediaFromRequest('image')
                    ->toMediaCollection('avatar');
            }

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

    /**
     * Send OTP to user's email
     */
    public function requestEmailOtp(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $code = (string) random_int(100000, 999999);
        $ttlMinutes = 10;
        $cacheKey = 'otp:' . strtolower($request->email);

        Cache::put($cacheKey, [
            'code' => $code,
            'attempts' => 0,
        ], now()->addMinutes($ttlMinutes));

        Mail::to($request->email)->send(new OtpMail($code, $ttlMinutes));

        return response()->json([
            'success' => true,
            'message' => 'OTP sent to email'
        ]);
    }

    /**
     * Verify email OTP
     */
    public function verifyEmailOtp(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'code' => 'required|string|size:6',
        ]);

        $cacheKey = 'otp:' . strtolower($request->email);
        $entry = Cache::get($cacheKey);

        if (!$entry) {
            return response()->json([
                'success' => false,
                'message' => 'OTP expired or not found'
            ], 400);
        }

        if ($entry['code'] !== $request->code) {
            $entry['attempts'] = ($entry['attempts'] ?? 0) + 1;
            Cache::put($cacheKey, $entry, now()->addMinutes(5));
            return response()->json([
                'success' => false,
                'message' => 'Invalid code'
            ], 400);
        }

        Cache::forget($cacheKey);

        return response()->json([
            'success' => true,
            'message' => 'OTP verified'
        ]);
    }


private function issueAccessToken(User $user, ?string $deviceName = null, ?int $minutes = 60): array
{
    // Custom token system: createToken returns a string directly
    $accessToken = $user->createToken($deviceName ?: 'auth-token');

    return [
        'token'  => $accessToken,
        'expires_at'    => now()->addMinutes($minutes)->toISOString(),
        'token_type'    => 'Bearer',
    ];
}

private function issueRefreshToken(User $user, Request $request, int $days = 30): array
{
    $refreshPlain = Str::random(64);
    $hash = hash('sha256', $refreshPlain);

    $record = RefreshToken::create([
        'user_id'     => $user->id,
        'token_hash'  => $hash,
        'device_name' => $request->header('X-Device-Name') ?: 'unknown',
        'ip'          => $request->ip(),
        'user_agent'  => substr((string)$request->userAgent(), 0, 2000),
        'expires_at'  => now()->addDays($days),
    ]);

    return [
        'refresh_token'        => $refreshPlain,
        'refresh_token_id'     => $record->id,          // مفيد للتتبع (اختياري ترجيعه)
        'refresh_expires_at'   => $record->expires_at->toISOString(),
    ];
}

/**
 * اختياري: ترجيع الـ refresh في HttpOnly Cookie للويب
 */
private function attachRefreshCookieToResponse($response, string $refreshToken, int $days = 30)
{
    $minutes = $days * 24 * 60;
    // لو عندك سب دومين مختلف استخدم SameSite=None و Secure
    Cookie::queue(Cookie::make(
        name: 'refresh_token',
        value: $refreshToken,
        minutes: $minutes,
        path: '/',
        domain: null,  // اضبطه حسب الدومين
        secure: true,
        httpOnly: true,
        sameSite: 'Lax' // أو 'None' لو cross-site
    ));
    return $response;
}

}
