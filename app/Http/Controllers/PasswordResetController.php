<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PasswordReset;
use Illuminate\Support\Facades\Mail;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Mail\Message;
use Illuminate\Support\Str;
use Carbon\Carbon;


class PasswordResetController extends Controller
{
    public function SendRequestEmail(Request $request){
        $request->validate([
            'email'=> 'required|email',

        ]);
        $email = $request->email;
        //Check User Exist Or Not
        $user = User::where('email',  $email)->first();
        if(!$user){
            return response([
                'message' => 'Email Not Exist',
                'status' => 'Failed'
            ],404);
        }
        //Generate Token
        $token = Str::random(60);
        PasswordReset::create([
            'email' =>  $email,
            'token' => $token,
            'created_at' => Carbon::now()
        ]);

        // dump("http:/127.0.0.1.3000/api/user/reset" . $token);//For Checking prupose if ther are not available for email link
        

        //Sending Email For Password Reset

        Mail::send('reset',['token' => $token],function(Message $message)use( $email){
            $message -> subject('Reset Your Passowrd');
            $message->to( $email);
        });

        return response([
            'message' => 'Password Reset Link is Set to your Email',
            'status' => 'Success'
        ],200);
    }
}
