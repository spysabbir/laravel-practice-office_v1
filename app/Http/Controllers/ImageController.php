<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic;

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

    public function imageUploadConvert()
    {
        return view('imageUpload');
    }

    public function imageUploadConvertStore(Request $request)
    {
        $this->validate($request, [
            'image' => ['required', 'image', 'mimes:jpg,png,jpeg,gif,svg', 'max:2048'],
        ]);

        $input = $request->all();
        $image  = ImageManagerStatic::make($request->file('image'))->encode('webp');

        $imageName = Str::random().'.webp';

        $image->save(public_path('images/'. $imageName));
        $input['image_name'] = $imageName;

        return back()
            ->with('success', 'Image Upload successful')
            ->with('imageName', $imageName);
    }
}
