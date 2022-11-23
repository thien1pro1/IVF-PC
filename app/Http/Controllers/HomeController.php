<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Room;
use App\Models\Categogy;
use App\Models\Position;
use App\Models\Post;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $categogy = Categogy::all();
        $noActive_categogy = Categogy::where('status',1);
        $books = Book::orderBy('email','ASC')->count();
        $accept_book = Book::orderBy('email','ASC')->where('status',1)->count();
        $waiting_book = DB::table('books')->orderBy('email','ASC')->where('status',0)->count();

        $finish_book = Book::orderBy('email','ASC')->where('status',2)->count();

        $cancel_book = Book::orderBy('email','ASC')->where('status',3)->count();

        return view('admin.dashboard')->with(compact('waiting_book','books','accept_book','finish_book','cancel_book'));
    }



     
}
