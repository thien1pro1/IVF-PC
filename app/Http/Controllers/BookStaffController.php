<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Room;
use Illuminate\Support\Facades\DB;

use App\Mail\BarcodeEmail;
use App\Mail\ConfirmEmail;
use App\Models\File;
use Carbon\Carbon;
use Exception;
use Illuminate\Mail\Mailer;
use Illuminate\Support\Facades\Mail as FacadesMail;
use PhpParser\Node\Stmt\TryCatch;


// use function PHPUnit\Framework\isEmpty;

class BookStaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function index()
    {
        $today = Carbon::today();
    

        $a = $today->toDateString();
        // $boo = Book::where('register_date',$a);
        $books = Book::orderBy('status','ASC')->where('register_date',$a)->orderBy('register_date','ASC')->orderBy('register_time','ASC')->get();

        // dd(!empty($boo));

        return view('admin.bookStaff.index')->with(compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   

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
        return view('admin.bookStaff.edit')->with(compact('edit','room'));
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
        $today = Carbon::today();

        $a = $today->toDateString();
        $book = Book::find($id);
        $book->status = 2;
        foreach($request->x_file as $file){
            $filename = 'sa'.$id.'Of'.$book->email;
            $file->storeAs('public/sa_file/'.$filename,$filename);
            $fileModel = new File();
            $fileModel->name = $filename;
            $fileModel->book_id = $id;
            $fileModel->type = 'sa';
            $fileModel->location = 'storage/sa_file/'.$filename;
            $fileModel->save();
        }
        $book->result = $request->result;
        $book->save();
        
        $books = Book::orderBy('status','ASC')->where('register_date',$a)->orderBy('register_date','ASC')->orderBy('register_time','ASC')->get();

        return view('admin.bookStaff.index')->with('status','Hoàn tất khám!')->with(compact('books'));
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
        $data = [
            'subject' => 'Mail xác nhận khám bệnh',
            'body'    => 'Quý khách vui lòng xác nhận'
        ];

            Mail::to($book->email)->send(new ConfirmEmail($data));
            return response()->json(['Great check your mail box!']);

    }


    
    public function barcodeEmail($id){
        $book = Book::find($id);
        $body = 'Anh '.$book->hus_name.' Và chị '.$book->wife_name.
                ' sẽ khám vào '.$book->regiser_time.
                ' Ngày' .$book->regiser_date.
                ' tại Phòng '.$book->room_id;
        $data = [
            'subject' => 'Mail thông báo khám bệnh',
            'body'    => $body,
            'id'      => $id
        ];
        
            Mail::to($book->email)->send(new BarcodeEmail($data));
            return response()->json(['Great check your mail box!']);
        
    }
}
