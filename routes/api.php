<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CityController;
use App\Http\Controllers\MajorController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\ContactUsController;
use App\Http\Controllers\SocialMediaController;
use App\Http\Controllers\TermController;
use App\Http\Controllers\PlanController;
use App\Http\Controllers\NotificationController;    
use App\Http\Controllers\AlertController;
use App\Events\AlertCreated;
use App\Models\User;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\InterviewController;
use App\Http\Controllers\SubscriptionController;
use App\Http\Controllers\RetrievalController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\ExperienceController;
use App\Http\Controllers\EducationController;
use App\Http\Controllers\SkillController;
use App\Http\Controllers\CandidateController;
use App\Http\Controllers\OtpController;
use App\Http\Controllers\SubMajorController;

// Public routes

// Auth routes
Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login'])->name('login');
Route::post('auth/requestEmailOtp', [AuthController::class, 'requestEmailOtp']);
Route::post('auth/verify-email-otp', [AuthController::class, 'verifyEmailOtp']);

// Social Auth routes

Route::prefix('auth')->group(function () {
    Route::get('{provider}/redirect', [SocialAuthController::class, 'redirect'])
        ->whereIn('provider', ['google','linkedin']);

    Route::get('{provider}/callback', [SocialAuthController::class, 'callback'])
        ->whereIn('provider', ['google','linkedin']);

    Route::post('refresh', [AuthController::class, 'refresh']);
    
});

// City and major routes
Route::get('cities', [CityController::class, 'index']);
Route::get('cities/{city}', [CityController::class, 'show']);
Route::get('cities/search/{query}', [CityController::class, 'search']);
Route::get('majors', [MajorController::class, 'index']);
Route::get('majors/{major}', [MajorController::class, 'show']);
Route::get('majors/search/{query}', [MajorController::class, 'search']);


Route::post('/sendOtp', [OtpController::class, 'send']);
Route::post('/verifyOtp', [OtpController::class, 'verify']);
Route::post('/resetPassword', [OtpController::class, 'resetPassword']);


// Media upload routes
Route::post('users/{id}/avatar', [UserController::class, 'uploadAvatar']);
Route::post('users/{id}/resume', [UserController::class, 'uploadResume']);
Route::post('users/{id}/documents', [UserController::class, 'uploadDocuments']);
Route::delete('users/{id}/media/{mediaId}', [UserController::class, 'deleteMedia']);

Route::get('users', [UserController::class, 'index']);
Route::get('users/{id}', [UserController::class, 'show']);

Route::get('contactUs', [ContactUsController::class, 'index']);

// terms routes
    Route::get('terms', [TermController::class, 'index']);
    Route::get('terms/{id}', [TermController::class, 'show']);

// plans routes
Route::get('plans', [PlanController::class, 'index']);
Route::get('plans/{id}', [PlanController::class, 'show']);

// candidates routes
Route::get('candidates', [CandidateController::class, 'index']);
Route::get('candidates/{id}', [CandidateController::class, 'show']);

// sub majors routes
Route::get('subMajors', [SubMajorController::class, 'index']);
Route::get('subMajors/{id}', [SubMajorController::class, 'show']);
Route::get('getSubMajorsByMajorId', [SubMajorController::class, 'getSubMajorsByMajorId']);

// Protected routes (require authentication)
Route::middleware('auth:api')->group(function () {
    
    Route::put('contactUs', [ContactUsController::class, 'update']);
    Route::resource('socialMedia', SocialMediaController::class);
    
    Route::post('addToFavorites', [CandidateController::class, 'addToFavorites']);
    Route::post('removeFromFavorites', [CandidateController::class, 'removeFromFavorites']);
    Route::get('getFavorites', [CandidateController::class, 'getFavorites']);
    // General Auth routes
    Route::prefix('auth')->group(function () {
        Route::get('profile', [AuthController::class, 'profile']);
        Route::post('updateProfile', [AuthController::class, 'updateProfile']);
        Route::post('updatePassword', [AuthController::class, 'updatePassword']);
        Route::post('logout', [AuthController::class, 'logout']);
    });

    // feedback routes
    Route::resource('feedbacks', FeedbackController::class);

    // alert routes
    Route::resource('alerts', AlertController::class);
    Route::post('alerts/toggleRead', [AlertController::class, 'toggleRead']);

    // message routes
    Route::get('messages', [MessageController::class, 'index']);
    Route::get('messages/{id}', [MessageController::class, 'show']);
    Route::post('messages', [MessageController::class, 'store']);
    Route::post('messages/bulkActions', [MessageController::class, 'bulkActions']);

    // experiences
    Route::get('experiences', [ExperienceController::class, 'index']);
    Route::post('experiences', [ExperienceController::class, 'store']);
    Route::get('experiences/{id}', [ExperienceController::class, 'show']);
    Route::put('experiences/{id}', [ExperienceController::class, 'update']);
    Route::delete('experiences/{id}', [ExperienceController::class, 'destroy']);

    // education
    Route::get('education', [EducationController::class, 'index']);
    Route::post('education', [EducationController::class, 'store']);
    Route::get('education/{id}', [EducationController::class, 'show']);
    Route::put('education/{id}', [EducationController::class, 'update']);
    Route::delete('education/{id}', [EducationController::class, 'destroy']);

    // skills
    Route::get('skills', [SkillController::class, 'index']);
    Route::post('skills', [SkillController::class, 'store']);
    Route::put('skills/{id}', [SkillController::class, 'update']);
    Route::delete('skills/{id}', [SkillController::class, 'destroy']);

    // interview routes
    Route::get('interviews', [InterviewController::class, 'index']);
    Route::get('interviews/{id}', [InterviewController::class, 'show']);


    // subscription routes
    // use prefix
    Route::prefix('subscriptions')->group(function () {
        Route::get('/', [SubscriptionController::class, 'index']);
        Route::post('/', [SubscriptionController::class, 'store']);
        Route::get('/{id}', [SubscriptionController::class, 'show']);
    });
    Route::post('paymentConfirmation', [SubscriptionController::class, 'paymentConfirmation']);
    Route::get('/subscriptionsHistory', [SubscriptionController::class, 'history']);
    Route::get('/subscriptionsCurrentActive', [SubscriptionController::class, 'active']);
    Route::post('/subscriptionsCancel', [SubscriptionController::class, 'cancel']);

    // retrieval routes
    Route::get('retrievals', [RetrievalController::class, 'index']);
    Route::get('retrievals/{id}', [RetrievalController::class, 'show']);
    Route::post('retrievals', [RetrievalController::class, 'store']);

    // Admin routes
    Route::prefix('admin')->group(function () {
        Route::apiResource('cities', CityController::class)->except(['show', 'index']);
        Route::apiResource('majors', MajorController::class)->except(['show', 'index']);

        Route::get('getAllMajors', [MajorController::class, 'getAllMajors']);
        Route::get('getMajorById/{id}', [MajorController::class, 'getMajorById']);
        
        Route::get('getAllCities', [CityController::class, 'getAllCities']);
        Route::get('getCityById/{id}', [CityController::class, 'getCityById']);
        
        // User routes
        Route::post('users', [UserController::class, 'store']);
        Route::put('users/{id}', [UserController::class, 'update']);
        Route::delete('users/{id}', [UserController::class, 'destroy']);
        Route::post('users/bulkActions', [UserController::class, 'bulkActions']);
        Route::get('users/blocklist', [UserController::class, 'blocklist']);

        Route::get('users/requestsList', [UserController::class, 'requestsList']);
        Route::get('users/acceptedRequests', [UserController::class, 'acceptedRequests']);
        Route::post('users/recruiterConfirmation', [UserController::class, 'recruiterConfirmation']);
    
        // feedback routes
        Route::prefix('feedbacks')->group(function () {    
            Route::post('/bulkActions', [FeedbackController::class, 'bulkActions']);
        }); 
        
        // term routes
        Route::post('terms', [TermController::class, 'store']);
        Route::put('terms/{id}', [TermController::class, 'update']);
        Route::delete('terms/{id}', [TermController::class, 'destroy']);
        // export terms
        Route::post('termExport', [TermController::class, 'export']);
        Route::post('termBulkDelete', [TermController::class, 'bulkDelete']);
        Route::post('termBulkActivationToggle', [TermController::class, 'bulkActivationToggle']);

        // plan routes
        Route::post('plans', [PlanController::class, 'store']);
        Route::put('plans/{id}', [PlanController::class, 'update']);
        Route::delete('plans/{id}', [PlanController::class, 'destroy']);
        Route::post('plans/bulkActions', [PlanController::class, 'bulkActions']);
        Route::get('features', [PlanController::class, 'features']);

        // notification routes
        Route::apiResource('notifications', NotificationController::class);
        Route::post('notifications/bulkDelete', [NotificationController::class, 'bulkDelete']);
        Route::post('notifications/notify', [NotificationController::class, 'notify']);

        // reply msg
        Route::post('messages/reply', [MessageController::class, 'reply']);

        // admin export routes
        Route::post('interviews/export', [InterviewController::class, 'export']);

        // subscription routes
        Route::post('subscriptions/bulkActions', [SubscriptionController::class, 'bulkActions']);
        
        // retrieval routes
        Route::post('retrievals/action', [RetrievalController::class, 'action']);
        
        // dashboard routes
        Route::prefix('dashboard')->group(function () {
            Route::get('getDashboardStats', [DashboardController::class, 'getDashboardStats']);
            Route::get('getUserActivity', [DashboardController::class, 'getUserActivity']);
            Route::get('getInterviewActivity', [DashboardController::class, 'getInterviewActivity']);
            Route::get('getSubscriptionActivity', [DashboardController::class, 'getSubscriptionActivity']);
            Route::get('getLastSubscriptions', [DashboardController::class, 'getLast5Subscriptions']);
        });

        // report routes (custom range analytics)
        Route::prefix('reports')->group(function () {
            Route::get('getUserActivityByDateRange', [ReportController::class, 'getUserActivityByDateRange']);
            Route::get('getInterviewStatusByDateRange', [ReportController::class, 'getInterviewStatusByDateRange']);
            Route::get('getCandidateMajorsByDateRange', [ReportController::class, 'getCandidateMajorsByDateRange']);
            Route::get('getCandidateCitiesByDateRange', [ReportController::class, 'getCandidateCitiesByDateRange']);
            Route::get('getInterviewPerformanceByDateRange', [ReportController::class, 'getInterviewPerformanceByDateRange']);
            Route::get('getSubscriptionsByDateRange', [ReportController::class, 'getSubscriptionsByDateRange']);
        });
    
        // sub majors routes
        Route::prefix('subMajors')->group(function () {
            Route::post('', [SubMajorController::class, 'store']);
            Route::put('{id}', [SubMajorController::class, 'update']);
            Route::delete('{id}', [SubMajorController::class, 'destroy']);
        });
    });
});


// test pusher notifications
Route::post('/test-alert', function (Request $request) {
    $data = $request->validate([
        'user_id' => 'required|integer',
        'title'   => 'sometimes|string',
        'body'    => 'sometimes|string',
        'type'    => 'sometimes|string',
    ]);

    event(new AlertCreated([
        'title' => $data['title'] ?? 'New Notification',
        'body'  => $data['body']  ?? 'Hello from Laravel 🎉',
        'type'  => $data['type']  ?? 'info',
    ], (int) $data['user_id']));

    return [
        'ok'      => true,
        'channel' => 'user.' . (int) $data['user_id'],  // للتأكيد
        'event'   => 'alert.created',
    ];
});


