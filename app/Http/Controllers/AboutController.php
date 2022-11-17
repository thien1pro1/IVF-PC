<?php

namespace App\Http\Controllers;

use App\Http\Constants\BookingStatus;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Room;
use App\Models\Categogy;
use Illuminate\Support\Facades\DB;

use App\Mail\BarcodeEmail;
use App\Mail\ConfirmEmail;

class AboutController extends Controller
{
    public function index(){
        $categogies = Categogy::orderBy('id','ASC')->get();
        return view('client.home')->with(compact('categogies'))->with('hope','JOHN');

    }
}
