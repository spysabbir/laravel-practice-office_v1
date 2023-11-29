<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Notifications\BirthdayWish;
use Illuminate\Http\Request;

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
}
