<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function register(Request $request){
        $request ->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed',
            'tc' => 'required',
        ]);
        if(User::where('email', $request->email)->first()){
            return response([
                'mesage' => 'Email Already Exists',
                'status' => 'Failed'
            ],200);
        }
        $user = User::create([
            'name'=> $request->name,
            'email'=> $request->email,
            'password'=> Hash::make($request->password),
            'tc'=>json_decode($request->tc),
        ]);

        $token = $user->createToken($request->email)
        ->plainTextToken;

        return response([
            'token' => $token,
            'mesage' => 'Registration Success',
            'status' => 'Success'
        ],201);
    }
    public function login(Request $request){
        $request ->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();
        if($user && Hash::check($request->password, $user->password)){
            $token = $user->createToken($request->email)
            ->plainTextToken;

            return response([
                'token' => $token,
                'mesage' => 'login Success',
                'status' => 'Success'
            ],200);
        }
        return response([
            'message' => 'The Provided Credential are Incorrect',
            'status' => 'failed'
        ],401);
    }
    public function logout(){
        auth()->user()->tokens()->delete();
        return response([
            'message' => 'Logout Success',
            'status' => 'Success'
        ],200);
    }
    public function logged_user(){
        $loggedUser = auth()->user();
        return response([
            'user' => $loggedUser,
            'message' => "Logged User Data",
            'status' =>'Success'
        ],200); 
    }
    public function ChangePassword(Request $request){
        $request->validate([
            'password' => 'required|confirmed'
        ]);
        $loggedUser = auth()->user();
        $loggedUser->password = Hash::make($request->password);
        $loggedUser->save();
        return response([
            // 'user' => $loggedUser,
            'message' => "Password Changed SuccessFull",
            'status' =>'Success'
        ],200);

    }
}
