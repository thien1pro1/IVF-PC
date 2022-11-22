<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Ask;
use App\Mail\AnswerEmail;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class AnswerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $answer = new Answer();
        $answer->user = $request->user;
        $answer->ask_id = $request->ask_id;
        $answer->content = $request->content;
        Ask::find($request->ask_id)->update(['status' => 1]);
        $answer->save();
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
        //
    }

    public function answerEmail($id){
        $ask = Ask::find($id);
        $email = $ask->email;
        $askContent = $ask->content;

        $answers = Answer::where('ask_id',$id)->get();
        foreach($answers as $answer){
            $answerContent = $answer->content;
            break;
        }

         
        $data = [
            'subject' => 'Bác sĩ tư vấn',
            'askContent'    => $askContent,
            'answerContent'    => $answerContent,
            'email'   => $email
        ];
        
            Mail::to($email)->send(new AnswerEmail($data));
            // return response()->json(['Great check your mail box!']);
        

    }
}
