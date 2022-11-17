<?php

namespace App\Http\Controllers;

use App\Models\Categogy;
use App\Models\Post;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function categoryPage($id){

        $posts = Post::where('categogy_id',$id)->get();
        $category = Categogy::find($id);
        return view('client.category')->with(compact('Category','posts'));
    }
    public function postPage($id){
        $post = Post::find($id);
        
        return view('client.category')->with(compact('post'));
    }
}
