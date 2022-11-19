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
        
        // dd($bill->id);
            $medicines = Medicine::find($request->id);
            // dd($medicine);
            foreach($medicines as $key => $medicine){
                $bill->medicines()->attach($medicine, ['amount' => $request->amount[$key]]);
            }
    }

    public function viewBillPDF($id){
        $book = Book::find($id);
        $bill = Bill::where('book_id',$id)->get();
        foreach($bill as $b){
            $billID= $b->id;
            break;

        }
        // $medicines = $bill->medicines();
        $bill = Bill::find($billID);
        $details = Bill_Medicine::where('bill_id',$billID)->get();
        
        // foreach($details as $detail){
        //     return 'so luong '.$detail->amount;
        // }

        
        $pdf = Pdf::loadView('admin.bookStaff.pdf',['book'=>$book,'details'=>$details,'bill'=>$bill]);
        return $pdf->download('billOf'.$id.'.pdf');
        
    }
}
