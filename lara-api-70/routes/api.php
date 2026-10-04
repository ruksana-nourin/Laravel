<?php

use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

Route::get('/users', [UserController::class, 'index']);
Route::apiResource('/departments', DepartmentController::class);

Route::post('/test', function () {
    return "Laravel api test route working fine!";
});
