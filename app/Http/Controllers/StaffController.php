<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Position;
use DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

class StaffController extends Controller
{


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $position = Position::all();
        $staff = User::all();
        $allStaff = User::orderBy('id','ASC')->get();
        return view('admin.staff.index')->with(compact('allStaff','position','staff'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $positions = Position::all();

        return view('admin.staff.create')->with(compact('positions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   $staff = new User();
        $staff->name = $request->name;
        $staff->email = $request->email;
        $staff->position_id = $request->position_id;
        
        if($request['image']){
            $image = $request['image'];
            $ext = $image->getClientOriginalExtension();

            $name = time().'_'.$image->getClientOriginalName();
            Storage::disk('public')->put($name,File::get($image));
            $staff->image = $name;
            $staff->save();
        }
        
        return redirect('/admin/staff')->with('status','Thêm nhân viên thành công');

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
        $edit = User::find($id);
        $position = Position::all();
        return view('admin.staff.edit')->with(compact('edit','position'));
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
        $staff = User::find($id);
        $staff->name = $request->name;
        $staff->email = $request->email;
        $staff->position_id = $request->position_id;

        if($request['image']){
            $image = $request['image'];
            $ext = $image->getClientOriginalExtension();

            $name = time().'_'.$image->getClientOriginalName();
            Storage::disk('public')->put($name,File::get($image));
            $staff->image = $name;
 
        }
        
      
        $staff->save();
        return redirect('/admin/staff')->with('status','Cập nhập Nhân viên '.$request->name.' thành công');
    

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::find($id)->delete();
        return redirect()->back()->with('status','Xoá nhân viên thành công');
    }
    public function comeback(){
        return redirect('/admin/staff');

    }
 }
