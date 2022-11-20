<?php

namespace App\Http\Controllers;

use App\Models\Bill;
use App\Models\Bill_Medicine;
use App\Models\Book;
use Illuminate\Http\Response;
use Barryvdh\DomPDF\Facade\Pdf;

use App\Models\Medicine;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BillController extends Controller
{
    public function index($id){
        $book = Book::find($id);
        return view('admin.bookStaff.bill')->with(compact('book'));
    }

    public function typeToMedicines($type){
        $medicines = Medicine::where('type',$type)->get();
        return response()->json($medicines, Response::HTTP_OK);
 
    }
    public function medicineToBill($id){
        $medicine = Medicine::find($id);
        return response()->json($medicine, Response::HTTP_OK);
    }


    public function addBill(Request $request){
        $bill = new Bill();
        $b = $request->query('book');
        $u = $request->query('user');
        $bill->user_id = $u;

        $total = 0;
        foreach($request->id as $key => $id){
            $medicine = Medicine::find($id);
            $total+=$medicine->price*$request->amount[$key];
        }
        $bill->total = $total;
        $book = Book::find($b);
        $book->bill()->save($bill);
        $medicines = Medicine::find($request->id);
        foreach($medicines as $key => $medicine){
            $bill->medicines()->attach($medicine, ['amount' => $request->amount[$key]]);
        }
        $this->viewBillPDF($b);
    }

    public function viewBillPDF($id){
        $book = Book::find($id);
        $bill = Bill::where('book_id',$id)->get();
        foreach($bill as $b){
            $billID= $b->id;
            break;
        }
        $bill = Bill::find($billID);
        $details = Bill_Medicine::where('bill_id',$billID)->get();
 
        
        $pdf = Pdf::loadView('admin.bookStaff.pdf',['book'=>$book,'details'=>$details,'bill'=>$bill]);
        $content = $pdf->download()->getOriginalContent();
        Storage::put('public/medicine_file/bill'.$id.'.pdf',$content);
    }
    public function deleteBill($id){
        $bill = Bill::find($id)->delete();
        $bill_medicines = Bill_Medicine::where('bill_id',$id)->get();
        foreach($bill_medicines as $bm){
            $bm->delete();
        }
        
    }
}
