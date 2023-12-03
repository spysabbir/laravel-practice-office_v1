<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\Country;
use App\Models\State;
use Illuminate\Http\Request;

class DropdownController extends Controller
{
    public function index()
    {
        $countries = Country::get(["name", "id"]);
        return view('dropdown', compact('countries'));
    }

    public function fetchState(Request $request)
    {
        $states = State::where("country_id", $request->country_id)->get(["name", "id"]);

        return response()->json($states);
    }

    public function fetchCity(Request $request)
    {
        $citys = City::where("state_id", $request->state_id)->get(["name", "id"]);

        return response()->json($citys);
    }
}
