<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CityController;
use App\Http\Controllers\MajorController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
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


// Protected routes (require authentication)
Route::middleware('auth:api')->group(function () {
    // General Auth routes
    Route::prefix('auth')->group(function () {
        Route::get('profile', [AuthController::class, 'profile']);
        Route::post('logout', [AuthController::class, 'logout']);
        Route::post('refresh', [AuthController::class, 'refresh']);
    });

    // Admin routes
    Route::prefix('admin')->group(function () {
        Route::apiResource('cities', CityController::class)->except(['show', 'index']);
        Route::apiResource('majors', MajorController::class)->except(['show', 'index']);
    });

    // Recruiter routes
    Route::prefix('recruiter')->group(function () {

    });

    // Candidate routes
    Route::prefix('candidate')->group(function () {
       
    });
});


