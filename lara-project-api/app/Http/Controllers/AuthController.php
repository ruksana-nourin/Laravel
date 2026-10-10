<?php

namespace App\Http\Controllers;

use App\Models\User;
use Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register(Request $request) {
        // return response()->json($request->all());

        $request->validate([
            'name' => 'required|min:3|max:50',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:3|max:15',
            'password_confirmation' => 'required|same:password',
        ]);
        

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->role_id = 5;
        $user->password = Hash::make($request->password);
        
        if ($user->save()) {

            
            return response()->json([
                'success' => 'Registration completed successfully',

            ]);
        } else {
            

            return response()->json([
                'error' => 'Registration failed! Try again later',

            ],500);

        }
        // return response()->json("register route is working");
    }

    public function login(Request $request) {

    $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);
        $result = Auth::attempt([
            'email' => $request->email,
            'password' => $request->password,
        ]);
        if($result){
            $user = Auth::user();
            $token = $user->createToken('mobile')->plainTextToken;

            return response()->json([
            "success" =>    true,
            "token" =>    $token,
            'user' => $user,
            ]);
        }else{

            return response()->json([
                
                'error' =>true,
                'message' => 'invalid credentials'

        ],401);
        }
    }

    public function logout() {
        return response()->json("logout route is working");
    }
}
