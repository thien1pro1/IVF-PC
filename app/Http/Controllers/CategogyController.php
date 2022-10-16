<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Categogy;

class CategogyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            
        $alldanhmuc = Categogy::orderBy('id','ASC')->get();
        return view('admin.categogy.index')->with(compact('alldanhmuc'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
           
        
        return view('admin.categogy.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(
            [
                'categogyName'=>'required|unique:categogy|max:255',
                'short_Desc' =>'required|max:255',
                'status'     =>'required'
            ],
            [
                'categogyName.required'=>'Vui lòng nhập tên danh mục',
                'short_Desc.required' =>'Nhập mo tả!',
            ]
        );
        $categogy = new Categogy();
        $categogy->categogyName = $data['categogyName'];
        $categogy->short_Desc = $data['short_Desc'];
        $categogy->status = $data['status'];
        $categogy->save();
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
        $editdanhmuc = Categogy::find($id);
        return view('admin.categogy.edit')->with(compact('editdanhmuc'));
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
        $data = $request->validate(
            [
                'categogyName'=>'required|max:255',
                'short_Desc' =>'required|max:255',
                'status'     =>'required'
            ],
            [
                'categogyName.unique'=>'Tên đã tồn tại. Vui lòng nhập tên khác',
                'short_Desc.required' =>'Nhập mo tả!',
            ]
        );
        $categogy = Categogy::find($id);
        $categogy->categogyName = $data['categogyName'];
        $categogy->short_Desc = $data['short_Desc'];
        $categogy->status = $data['status'];
        $categogy->save();
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
        Categogy::find($id)->delete();
        return redirect()->back()->with('status','Xoá danh mục thành công');


    }
}
