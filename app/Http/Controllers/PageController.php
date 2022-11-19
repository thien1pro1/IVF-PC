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
        return view('client.category')->with(compact('category','posts'));
    }

    // public function categoryPage(){

    //     $posts = Post::where('categogy_id',1)->get();
    //     $category = Categogy::find(1);
    //     return view('client.category')->with(compact('category','posts'));
    // }
    public function postPage($id){
        $post = Post::find($id);
        
        return view('client.post')->with(compact('post'));
    }

    public function home(){
         $posts = Post::where('categogy_id',2)->get();
        // $medicines = Medicine::get();
        // $doctor = User::where('position_id',2)->get();

        return view('client.home')->with(compact('posts'));
    }


}
