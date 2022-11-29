<?php

namespace App\Http\Controllers;

use App\Models\Bill;
use App\Models\Bill_Medicine;
use App\Models\Book;
use App\Models\File;
use Illuminate\Http\Response;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use App\Models\Medicine;
use App\Models\Room;
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

        $edit = Book::find($b);
        $room = Room::all();

        return redirect('/admin/bookStaff/'.$b.'/edit')->with('status','Tạo toa thuốc thành công');
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
        return $pdf->download('book'.$id.Carbon::now().'.pdf');
         // $pdf = Pdf::loadView('admin.bookStaff.cc');
        
        //  return $pdf->download('book'.$id.'.pdf');
        // $content = $pdf->download()->getOriginalContent();
        // Storage::put('public/medicine_file/bill'.$id.'.pdf',$content);
    }
    public function deleteBill($id){
        //$id is book id
        $bill = Bill::where('book_id',$id)->first();
      
            $billId = $bill->id;
            $bill->delete();
            $bill_medicines = Bill_Medicine::where('bill_id',$billId)->delete();

        

        
    }




    public function edit($id){
        $book = Book::find($id);
        $bill = Bill::where('book_id',$id)->first();
        $bill_medicines = Bill_Medicine::where('bill_id',$bill->id)->get();
        return view('admin.bookStaff.editBill')->with(compact('book','bill','bill_medicines'));
    }
    public function saveBill(Request $request){
        $bill = new Bill();
        $b = $request->query('book');
        $this->deleteBill($b);
        $u = $request->query('user');
        $bi_id = $request->query('bill');
        $bill->user_id = $u;

        $total = 0;

        $bill->total = $total;
        $book = Book::find($b);
        $book->bill()->save($bill);
        $medicines = Medicine::find($request->id);
        foreach($medicines as $key => $medicine){
            $bill->medicines()->attach($medicine, ['amount' => $request->amount[$key]]);
        }


        return redirect('/admin/bookStaff/'.$b.'/edit')->with('status','Sửa đơn thuốc thành công');
    }
}
