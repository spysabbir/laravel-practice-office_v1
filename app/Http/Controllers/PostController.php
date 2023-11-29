<?php

namespace App\Http\Controllers;

use App\Mail\PostMailExample;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Barryvdh\DomPDF\Facade\Pdf;

class PostController extends Controller
{
    public function postsLoadMore(Request $request)
    {
        $posts = Post::paginate(5);

        if ($request->ajax()) {
            $view = view('component.postsLoadMoreData', compact('posts'))->render();

            return response()->json(['html' => $view]);
        }

        return view('postsLoadMore', compact('posts'));
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

    public function postsAutoLoad(Request $request)
    {
        $posts = Post::paginate(5);

        if ($request->ajax()) {
            $view = view('component.postsAutoLoadData', compact('posts'))->render();

            return response()->json(['html' => $view]);
        }

        return view('postsAutoLoad', compact('posts'));
    }
}
