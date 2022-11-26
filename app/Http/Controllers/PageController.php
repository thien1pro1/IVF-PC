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



    public function timkiem(){
        $keywords = $_GET['keywords'];
        $category_post = Post::with('category')->where('title','LIKE','%'.$keywords.'%')->orwhere('short_Desc','title','LIKE','%'.$keywords.'%')->get();

        $category = Categogy::all();
    
        return view('client.search')->with(compact('category','category_post','keywords'));
    } 

    public function servicePage(){
        $service = Post::where('categogy_id',0);
        return view('client.service');
    }


}
