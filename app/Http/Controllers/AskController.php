<?php

namespace App\Http\Controllers;

use App\Models\Ask;
use Illuminate\Http\Request;

class AskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $asks = Ask::all();
        return view('admin.ask_answer.index')->with(compact('asks'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ask = new Ask();
        $ask->name = $request->name;
        $ask->email = $request->email;
        $ask->gender = $request->gender;
        $ask->content = $request->content;
        $ask->phone = $request->phone;
        $ask->years = $request->years;
        $ask->status = 0;
        $ask->save();
        return redirect()->back()->with('status','Cám ơn bạn đặt câu hỏi. Bác sĩ sẽ trả lời qua mail của bạn');



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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Ask::find($id)->delete();
        return redirect()->back()->with('status','Xóa câu hỏi thành công');

    }
}
