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

// Public routes

// Auth routes
Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login'])->name('login');

// City and major routes
Route::get('cities', [CityController::class, 'index']);
Route::get('cities/{city}', [CityController::class, 'show']);
Route::get('cities/search/{query}', [CityController::class, 'search']);
Route::get('majors', [MajorController::class, 'index']);
Route::get('majors/{major}', [MajorController::class, 'show']);
Route::get('majors/search/{query}', [MajorController::class, 'search']);


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

// Protected routes (require authentication)
Route::middleware('auth:api')->group(function () {
    
    Route::put('contactUs', [ContactUsController::class, 'update']);
    Route::resource('socialMedia', SocialMediaController::class);
    
    // General Auth routes
    Route::prefix('auth')->group(function () {
        Route::get('profile', [AuthController::class, 'profile']);
        Route::post('updateProfile', [AuthController::class, 'updateProfile']);
        Route::post('updatePassword', [AuthController::class, 'updatePassword']);
        Route::post('logout', [AuthController::class, 'logout']);
        Route::post('refresh', [AuthController::class, 'refresh']);
    });

    // feedback routes
    Route::resource('feedbacks', FeedbackController::class);

    // Admin routes
    Route::prefix('admin')->group(function () {
        Route::apiResource('cities', CityController::class)->except(['show', 'index']);
        Route::apiResource('majors', MajorController::class)->except(['show', 'index']);
        
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

        // plan routes
        Route::post('plans', [PlanController::class, 'store']);
        Route::put('plans/{id}', [PlanController::class, 'update']);
        Route::delete('plans/{id}', [PlanController::class, 'destroy']);
        Route::post('plans/bulkActions', [PlanController::class, 'bulkActions']);
        Route::get('features', [PlanController::class, 'features']);

        // notification routes
        Route::apiResource('notifications', NotificationController::class);
    });
    
    // Recruiter routes
    Route::prefix('recruiter')->group(function () {
    });

    // Candidate routes
    Route::prefix('candidate')->group(function () {
    });
});


