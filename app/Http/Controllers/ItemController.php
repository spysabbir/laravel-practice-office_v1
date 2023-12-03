<?php

namespace App\Http\Controllers;

use App\Models\Item;
use Illuminate\Http\Request;

class ItemController extends Controller
{
    public function index(Request $request)
    {
        $items = Item::paginate(5);

        if ($request->ajax()) {
            return view('ajaxPaginationData', compact('items'));
        }

        return view('items', compact('items'));
    }
}
