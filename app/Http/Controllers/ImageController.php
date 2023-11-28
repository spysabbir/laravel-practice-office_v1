<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function index()
    {
        return view('imageUpload');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'image' => ['required', 'image', 'mimes:png,jpg', 'dimensions:min_width=100,min_height=100,max_width=1000,max_height=1000','max:5048']
        ]);

        $imageName = time().'.'.$request->image->extension();

        $request->image->move(public_path('images'), $imageName);

        return back()->with('success', 'You have successfully upload image.')->with('image', $imageName);

    }
}
