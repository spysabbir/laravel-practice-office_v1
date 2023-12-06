<?php

namespace App\Http\Controllers;

use App\Jobs\SendEmailJob;
use App\Models\User;
use App\Notifications\BirthdayWish;
use Illuminate\Http\Request;
use Stevebauman\Location\Facades\Location;

class UserController extends Controller
{
    public function birthdayNotify($id)
    {
        $user = User::find($id);

        $messages["hi"] = "Hey, Happy Birthday {$user->name}";
        $messages["wish"] = "On behalf of the entire company I wish you a very happy birthday and send you my best wishes for much happiness in your life.";

        $user->notify(new BirthdayWish($messages));

        dd('Done');
    }

    public function displayUser()
    {
        /* $ip = $request->ip(); Dynamic IP address */
        $ip = '103.4.119.20';
        $currentUserInfo = Location::get($ip);

        return view('user', compact('currentUserInfo'));
    }

    public function sendEmail() {
        dispatch(new SendEmailJob);

        dd('Send Done');
    }
}
