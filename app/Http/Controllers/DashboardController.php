<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Room;
use App\Models\Categogy;
use App\Models\Medicine;
use App\Models\Position;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $medicines = Medicine::orderBy('register_time','ASC')->get();
        dd($medicines);
        $categogy = Categogy::all();
        $noActive_categogy = Categogy::where('status',1);
        $books = Book::orderBy('email','ASC')->count();
        $waiting_book = Book::orderBy('email','ASC')->where('status',0)->count();
        $accept_book = Book::orderBy('email','ASC')->where('status',1)->count();
        $finish_book = Book::orderBy('email','ASC')->where('status',2)->count();

        $cancel_book = Book::orderBy('email','ASC')->where('status',3)->count();

        return view('admin.dashboard')->with(compact('waiting_books','books','medicines'));
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
        //
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
}
