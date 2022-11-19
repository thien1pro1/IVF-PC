<?php

namespace App\Http\Controllers;
use Illuminate\Http\Response;

use App\Models\Medicine;
use Illuminate\Http\Request;

class BillController extends Controller
{
    public function index($id){
        return view('admin.bookStaff.bill');
    }

    public function typeToMedicines($type){
        $medicines = Medicine::where('type',$type)->get();
        return response()->json($medicines, Response::HTTP_OK);
 
    }
    public function medicineToBill($id){
        $medicine = Medicine::find($id);
        return response()->json($medicine, Response::HTTP_OK);
    }
}
