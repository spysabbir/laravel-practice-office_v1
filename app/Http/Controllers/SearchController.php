<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index()
    {
        return view('searchDemo');
    }

    public function autocomplete(Request $request)
    {
        $data = User::select("name")
                    ->where('name', 'LIKE', '%'. $request->get('query'). '%')
                    ->get();

        return response()->json($data);
    }
}
