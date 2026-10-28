<?php

use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

Route::apiResource('/users', UserController::class);
Route::apiResource('/products', ProductController::class)->names('api.products');
Route::apiResource('/roles', RoleController::class);
Route::apiResource('/categories', CategoryController::class);
// Route::apiResource('/brands', BrandController::class);
Route::get('/brands', [BrandController::class, 'index']);

// Auth routes
Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);
Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
Route::post('check-token', [AuthController::class, 'checkToken']);