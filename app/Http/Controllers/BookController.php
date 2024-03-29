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
use App\Models\File;
use App\Models\User;
use Carbon\Carbon;
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
    
    public function index(Request $request)
    {
        if($request->query('search')==null && $request->query('status')==null && $request->query('date_from')==null &&$request->query('date_to')==null){
        $date_from = "2000-1-1";
        $today = Carbon::today();

        $date_to = $today->toDateString();
        $books = Book::orderBy('status','ASC')->where('status','>=',0)->orderBy('register_date','ASC')->orderBy('register_time','ASC')->get();
        return view('admin.client.index')->with(compact('books','date_from','date_to'));
        }
        else{
            $search = $request->query('search');
            $status = $request->query('status');
            $date_from = $request->query('date_from');
            $date_to = $request->query('date_to');
    
            if(empty($status) && empty($search)){
                $this->comeback();
            }
            $books = Book::when($request->has('status'), function ($query) use ($status) {
                    if($status == 9) {
                        return $query;
                    }
                    else                 
                return $query->where('status', $status);
              })
              ->when($request->has('date_from'), function ($query) use ($date_from) {
                if($date_from == "") {
                    return $query;
                }
                else                 
            return $query->where('register_date','>=', $date_from);
          })
          ->when($request->has('date_to'), function ($query) use ($date_to) {
            if($date_to == "") {
                return $query;
            }
            else                 
        return $query->where('register_date','<=', $date_to);
      })
              ->where(function ($query) use ($search) {
                $query->where('email',$search)
                        ->orWhere('hus_name', 'LIKE', '%' . $search . '%')
                        ->orWhere('wife_name', 'LIKE', '%' . $search . '%');
            })
                                
                                                 
                                                
                                                
                                                ->orderBy('register_date','ASC')->orderBy('register_time','ASC')->get();
            return view('admin.client.index')->with(compact('books','date_from','date_to'));
    
        }
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
        $book->status = BookingStatus::$CONFIRMED_EMAIL;
        $book->save();
        return redirect('/client/home')->with('status','Đặt lịch thành công');

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
        $edit = Book::find($id);
        $room = Room::all();
        return view('admin.client.show')->with(compact('edit','room'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   $files = File::where('book_id',$id)->get();
        $edit = Book::find($id);
        $room = Room::all();
        return view('admin.client.edit')->with(compact('edit','room','files'));
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
        $book->status = BookingStatus::$CONFIRMED_STAFF;
        foreach($rooms_e as $r){
            $kq3 = DB::table('books')->where('register_date',$request->register_date)
                                 ->where('register_time',$request->register_time)
                                 ->where('room_id',$r->id)->count();
            if($kq3==0){
                $book->room_id = $r->id;
                $book->save();
                $this->barcodeEmail($id);
                return redirect('/admin/client')->with('status','Duyệt lịch thành công');
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
            if (Mail::failures()) {
                $book->delete();
                return redirect()->back()->with('status','Địa chỉ mail bạn nhập không thuộc bất kỳ tài khoản nào');
                
            }
        
            // return response()->json(['Great check your mail box!']);
            

    }
    
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
        $book = Book::find($id);
        $user = User::find($book->user_id)->name;

        return view('client.detailHistory',[
            'id'=>$id
        ])->with(compact('book','user'));

    }
    public function searchBook(Request $request){
        $search = $request->query('search');
        $status = $request->query('status');
        $date_from = $request->query('date_from');
        $date_to = $request->query('date_to');

        if(empty($status) && empty($search)){
            $this->comeback();
        }
        $books = Book::when($request->has('status'), function ($query) use ($status) {
                if($status == 9) {
                    return $query;
                }
                else                 
            return $query->where('status', $status);
          })
          ->when($request->has('date_from'), function ($query) use ($date_from) {
            if($date_from == "") {
                return $query;
            }
            else                 
        return $query->where('register_date','>=', $date_from);
      })
      ->when($request->has('date_to'), function ($query) use ($date_to) {
        if($date_to == "") {
            return $query;
        }
        else                 
    return $query->where('register_date','<=', $date_to);
  })
          ->where(function ($query) use ($search) {
            $query->where('email',$search)
                    ->orWhere('hus_name', 'LIKE', '%' . $search . '%')
                    ->orWhere('wife_name', 'LIKE', '%' . $search . '%');
        })
                            
                                             
                                            
                                            
                                            ->orderBy('register_date','ASC')->orderBy('register_time','ASC')->get();
        return view('admin.client.index')->with(compact('books','date_from','date_to'));

    }
    public function comeback(){
        return redirect('/admin/client');

    }
}
