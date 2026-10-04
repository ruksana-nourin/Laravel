<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        // return "User index route working fine!";
        $users = User::all();
        // return response()->json($users);
        return response()->json([
            'success' => true,
            'users' => $users
        ]);
    }
}
