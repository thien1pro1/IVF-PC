<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;
use App\Models\User;

class RoomController extends Controller
{
/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function index()
    {
        $rooms = Room::all();
        return view('admin.room.index')->with(compact('rooms'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        
        return view('admin.room.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   

        

        
        $room = new Room();

        $room->name = $request->name;
        $room->user_id = $request->user_id;

        $room->save();
        return redirect()->back()->with('status','Tạo phòng thành công');

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
        $edit = Room::find($id);
        $user = User::where('position_id',2)->get();

        return view('admin.room.edit')->with(compact('edit','user'));
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
        $edit = Room::find($id);
        $edit->name = $request->name;
        $edit->user_id = $request->user_ids;
        $edit->save();
        return redirect()->back()->with('status','Chỉnh sửa phòng thành công thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    { 
        Room::find($id)->delete();
        return redirect()->back()->with('status','Xoá lượt khám thành công');
    }
    public function comeback(){
        return redirect('/admin/room');

    }
}
