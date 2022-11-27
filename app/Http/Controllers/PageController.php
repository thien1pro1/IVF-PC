<?php

namespace App\Http\Controllers;

use App\Models\Categogy;
use App\Models\Post;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\FeedBack;
use DB;

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

        $post2 = Post::with('category')->where('id',$id)->first();
        foreach ($post2 as $key => $p) {
           $categogy_id = $post2->categogy_id;
        }

         $post_related = Post::with('category')->where('categogy_id',$categogy_id)->limit(4)->get();
         $show_cate = Categogy::orderBy(DB::raw('RAND()'))->limit(3)->get();


         
        $category = Categogy::all();
        
        return view('client.post')->with(compact('post','post2','category','post_related','show_cate'));
    }

    public function home(){
         $posts = Post::where('categogy_id',2)->get();

         $services = Post::where('categogy_id',0)->limit(6)->get();
        // $medicines = Medicine::get();
        $doctors = User::where('position_id',2)->get();

        $feedbacks = FeedBack::orderBy(DB::raw('RAND()'))->limit(4)->get();

         $new_post = Post::orderBy(DB::raw('RAND()'))->limit(4)->get();

        return view('client.home')->with(compact('posts','services','new_post','doctors','feedbacks'));
    }



    public function timkiem(){
        $keywords = $_GET['keywords'];
        $category_post = Post::with('category')->where('title','LIKE','%'.$keywords.'%')->orwhere('short_Desc','title','content','LIKE','%'.$keywords.'%')->get();

        $category = Categogy::all();
    
        return view('client.search')->with(compact('category','category_post','keywords'));
    } 

    public function servicePage(){
        $service = Post::where('categogy_id',0);
        $doctors = User::where('position_id',2)->get();
        $services = Post::where('categogy_id',0)->get();
       
        return view('client.service')->with(compact('service','doctors','services'));
    }



}
