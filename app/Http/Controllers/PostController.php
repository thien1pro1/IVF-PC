<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Categogy;
use Storage;
use File;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $all_post = Post::all();

 
        $allPost = Post::get();
        $category = Categogy::all();
        return view('admin.post.index')->with(compact('allPost','category'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $user = Auth::user();    
        $categogy = Categogy::all();
        return view('admin.post.create')->with(compact('categogy'));
   
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $post = new Post(); 
        $post->title = $request->title;
        $post->views = $request->views;
        $post->short_desc = $request->short_desc;
        $post->content = $request->content;
        $post->categogy_id = $request->categogy_id;
        if($request['image']){
            $image = $request['image'];
            $ext = $image->getClientOriginalExtension();

            $name = time().'_'.$image->getClientOriginalName();
            Storage::disk('public')->put($name,File::get($image));
            $post->image = $name;

        }else{
            $post->image = 'default.jpg';
        }
        $post->save();
        return redirect()->back()->with('status','Thêm danh mục thành công');
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   
        $edit = Post::find($id);
        return view('admin.post.edit')->with(compact('edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();
        $post = Post::find($id);
        $post->title = $data['title'];
        $post->views = $data['views'];
        $post->short_desc = $data['short_desc'];
        $post->content = $data['content'];
        if($request['image']){
            unlink('public/uploads/'.$post->image);
            $image = $request['image'];
            $ext = $image->getClientOriginalExtension();

            $name = time().'_'.$image->getClientOriginalName();
            Storage::disk('public')->put($name,File::get($image));
            $post->image = $name;

        }
        $post->categogy_id = $request->categogy_id;

        $post->save();
        return redirect()->back()->with('status','Cập nhập danh mục thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Post::find($id)->delete();
        return redirect()->back()->with('status','Xoá Bài viết thành công');


    }
}
