<?php

namespace App\Http\Controllers;

use App\Http\Constants\BookingStatus;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Room;
use Illuminate\Support\Facades\DB;

use App\Mail\BarcodeEmail;
use App\Mail\ConfirmEmail;
use App\Mail\FinishEmail;
use App\Mail\sendHistory;


use Exception;
use Illuminate\Mail\Mailer;
use Illuminate\Support\Facades\Mail as FacadesMail;
use PhpParser\Node\Stmt\TryCatch;

// use function PHPUnit\Framework\isEmpty;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function index()
    {
        $books = Book::orderBy('status','ASC')->where('status','>=',0)->orderBy('register_date','ASC')->orderBy('register_time','ASC')->get();
        return view('admin.client.index')->with(compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        
        return view('client.book');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function confirm(Request $request){
        $id = $request->query('id');

        $book = Book::find($id);
        $book->status = BookingStatus::$CONFIRMED_STAFF;
        $book->save();
    }
    public function store(Request $request)
    {   
        $kq1 = Room::count();


        $kq2 = DB::table('books')->where('register_date',$request->register_date)
                                 ->where('register_time',$request->register_time)
                                 ->whereNotNull('room_id')->count();
        

        
        $book = new Book();
        $book->wife_name = $request->wife_name;
        $book->hus_name = $request->hus_name;
        $book->wife_birthday = $request->wife_birthday;
        $book->hus_birthday = $request->hus_birthday;
        $book->phone = $request->phone;
        $book->email = $request->email;

        
        $book->message = $request->message;
        $book->register_date = $request->register_date;
        $book->register_time = $request->register_time;
        $book->status = BookingStatus::$WAITING;
        $book->status = -1;

        
        if($kq1>$kq2){
            
            if($book->save()){
                // $b = DB::table('books')->where('register_date',$request->register_date)
                // ->where('register_time',$request->register_time)->where('email',$request->email)->get();
                // dd($book->id);
                $this->confirmEmail($book->id);
                return redirect()->back()->with('status','Đặt lịch thành công');

            }
            
        }



        return redirect()->back()->with('status','Giờ đó đã hết phòng!');
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
        $edit = Book::find($id);
        $room = Room::all();
        // $room1 =  DB::table('rooms')->empty();
        
        // $kq2 = DB::table('books')->where('register_date',$edit->register_date)->where('register_time',$edit->register_time)
        // ->whereNotNull('room_id')->get();
        // $room_e = DB::table('rooms')->whereNotIn('id',$kq2->room_id);

        // DD($kq2->room_id);
        return view('admin.client.edit')->with(compact('edit','room'));
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
        
        // $kq1 = DB::table('books')->where('register_date',$request->register_date)
        //->where('register_time',$request->register_time)->where('room_id',$request->room_id)->count();
        $rooms_e = Room::get();
        $kq2 = DB::table('books')->where('register_date',$request->register_date)
                                 ->where('register_time',$request->register_time)
                                 ->where('room_id',$request->room_id)->get();

        $book = Book::find($id);

        $book->wife_name = $request->wife_name;
        $book->hus_name = $request->hus_name;
        $book->wife_birthday = $request->wife_birthday;
        $book->hus_birthday = $request->hus_birthday;
        $book->phone = $request->phone;
        $book->email = $request->email;

        
        $book->message = $request->message;
        $book->register_date = $request->register_date;
        $book->register_time = $request->register_time;
        $book->status = 1;
        foreach($rooms_e as $r){
            $kq3 = DB::table('books')->where('register_date',$request->register_date)
                                 ->where('register_time',$request->register_time)
                                 ->where('room_id',$r->id)->count();
            if($kq3==0){
                $book->room_id = $r->id;
                $book->save();
                return redirect()->back()->with('status','Đặt lịch thành công');
            }
        }
        

        return redirect()->back()->with('status','Giờ đó đã hết phòng!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    { 
        Book::find($id)->delete();
        return redirect()->back()->with('status','Xoá lượt khám thành công');
    }

    public function cancel($id){
        $book = Book::find($id);
        $book->status = 3;
        $book->room_id = null;
        $book->save();
        return redirect()->route('book.index')->with('status','Hủy lịch khám thành công!');
    }
    
    public function confirmEmail($id){
        $book = Book::find($id);
        $email = $book->email;
        $body = 'Anh '.$book->hus_name.' Và chị '.$book->wife_name.
                ' đã đăng kí khám vào lúc '.$book->register_time.


                ' , Ngày' .$book->register_date;

        $data = [
            'subject' => 'Mail thông báo khám bệnh',
            'body'    => $body,
            'id'      => $id,
            'email'   => $email
        ];
        
            Mail::to($book->email)->send(new ConfirmEmail($data));
            // return response()->json(['Great check your mail box!']);
        

    }
    // public function FinishEmail(Request $request){
    //     if(!empty($request->id)){
    //         $book = Book::find($request->id);
    //         $email = $book->email;
            
    //         $body = 'Anh '.$book->hus_name.' Và chị '.$book->wife_name.
    //                 '  khám vào '.$book->register_time.
    
    
    //                 ' Ngày' .$book->register_date.
    
    //                 ' tại Phòng '.$book->room_id;
    //         $data = [
    //             'subject' => 'Mail kết quả khám vào ngày '.$book->register_date,
    //             'body'    => $body,
    //             'id'      => $request->id,
    //             'result'  => $book->result,
    //             'notify'  => 'Kết quả xét nghiệm được lưu trữ tại bệnh viện',
    //             'email'   => $email
    //         ];
            
    //             Mail::to($book->email)->send(new FinishEmail($data));
    //             // return response()->json(['Great check your mail box!']);
            
    //     }
    //     elseif(!empty($request->email)&&!empty($request->phone)){

    //             $book = Book::where('email',$request->email)->where('phone',$request->phone)->get();
                
    //             $body = 'Hồ sơ khám sức khỏe';
    //             $data = [
    //                 'subject' => 'Mail thông báo khám bệnh',
    //                 'body'    => $body,
    //                 'id'      => $request->id,
    //                 'phone'  => $book->phone,
    //                 'email'   => $book->email
    //             ];
                
    //                 Mail::to($book->email)->send(new FinishEmail($data));
    //                 // return response()->json(['Great check your mail box!']);
    //     }
        
    // }
    public function sendHistory(Request $request){
        $email = $request->query('email');
        $phone = $request->query('phone');
        
        $bookT = Book::where('email',$email)->where('phone',$phone)->get();
        if(!empty($bookT)){
            $body = "";
            $data = [
                'subject' => 'Lịch sử khám chữa bệnh',
                'body'    => $body,
                'email'   => $email
            ];
            Mail::to($email)->send(new SendHistory($data));
            return redirect()->back()->with('status','Kết quả đã được gửi đến mail của bạn');

        }
        else{
            return redirect()->back()->with('status','Không có kết quả ứng với thông tin bạn nhập');
        }

        
    }


    
    public function barcodeEmail($id){
        $book = Book::find($id);
        $email = $book->email;
        $body = 'Anh '.$book->hus_name.' Và chị '.$book->wife_name.
                ' sẽ khám vào '.$book->register_time.


                ' Ngày' .$book->register_date.

                ' tại Phòng '.$book->room_id;
        $data = [
            'subject' => 'Mail thông báo khám bệnh',
            'body'    => $body,
            'id'      => $id,
            'email'   => $email
        ];
        
            Mail::to($book->email)->send(new BarcodeEmail($data));
            return response()->json(['Great check your mail box!']);
        
    }

    public function history(Request $request){
        $email = $request->query('email');
        $books = Book::where('email',$email)->where('status',2)->orderBy('register_date')->get();

        return view('client.history',[
            'email'=>$email
        ])->with(compact('books'));

    }

    public function detailHistory(Request $request){
        $id = $request->query('id');
        $email = $request->query('email');
        $book = Book::where('id',$id)->first();

        return view('client.detailHistory',[
            'id'=>$id
        ])->with(compact('book'));

    }
    public function searchBook(Request $request){
        $search = $request->query('search');
        $status = $request->query('status');
        $books = Book::when($request->has('status'), function ($query) use ($status) {
                                     
            return $query->where('status', $status);
          })
          ->where(function ($query) use ($search) {
            $query->where('email',$search)
                    ->orWhere('hus_name', 'LIKE', '%' . $search . '%')
                    ->orWhere('wife_name', 'LIKE', '%' . $search . '%');
        })
                            
                                             
                                            
                                            
                                            ->orderBy('register_date','ASC')->orderBy('register_time','ASC')->get();
        return view('admin.client.index')->with(compact('books'));

    }
}
