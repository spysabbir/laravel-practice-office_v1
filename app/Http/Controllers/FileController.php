<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FileController extends Controller
{
    public function index()
    {
        return view('fileUpload');
    }

    public function store(Request $request)
    {
        $request->validate([
            'file' => 'required',
        ]);

        $fileName = time().'.'.request()->file->getClientOriginalExtension();

        request()->file->move(public_path('files'), $fileName);

        return response()->json(['success'=>'You have successfully upload file.']);
    }
}
