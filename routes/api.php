<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CityController;
use App\Http\Controllers\MajorController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// API Routes for Cities
Route::apiResource('cities', CityController::class);

// API Routes for Majors
Route::apiResource('majors', MajorController::class);

// Additional search routes
Route::get('cities/search/{query}', [CityController::class, 'search']);
Route::get('majors/search/{query}', [MajorController::class, 'search']);
