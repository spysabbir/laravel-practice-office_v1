<?php

namespace App\Http\Controllers;

use App\Mail\PostMailExample;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Barryvdh\DomPDF\Facade\Pdf;

class PostController extends Controller
{
    public function index(Request $request)
    {
        $posts = Post::paginate(5);

        if ($request->ajax()) {
            $view = view('data', compact('posts'))->render();

            return response()->json(['html' => $view]);
        }

        return view('posts', compact('posts'));
    }

    public function sendEmailPdf($id)
    {
        $posts = Post::find($id);

        $data["email"] = "your@gmail.com";
        $data["title"] = $posts->title;
        $data["body"] = $posts->body;

        $pdf = PDF::loadView('email.postMail', $data);
        $data["pdf"] = $pdf;

        Mail::to($data["email"])->send(new PostMailExample($data));

        dd('Mail sent successfully');
    }
}
