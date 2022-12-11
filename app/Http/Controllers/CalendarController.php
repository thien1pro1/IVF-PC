<?php

namespace App\Http\Controllers;

use App\Models\Calendar;
use App\Models\Room;
use App\Models\User;
use Illuminate\Http\Request;

class CalendarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::where('position_id',"2")->get();
        $rooms = Room::all();
        $calendars = Calendar::all();
        // foreach($calendars as $calendar){
        //     $i = 12;
        //     dd($calendar->shift.$i);
        // }
        return view('admin.calendar.index')->with(compact('users','rooms','calendars'));
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
    public function store(Request $request,$id)
    {
        $calendars= Calendar::where('room_id',$id)->get();
        $calendar = Calendar::find($id);
        foreach($calendars as $ca){
            if($ca->shift1== $request->shift1){
                return redirect()->back()->with('status','Bác sĩ ca 1 đã có lịch');
            }
            $calendar->shift1 = $request->shift1;
        }
        foreach($calendars as $ca){
            if($ca->shift2== $request->shift2){
                return redirect()->back()->with('status','Bác sĩ ca 2 đã có lịch');
            }
            $calendar->shift2 = $request->shift2;
        }
        foreach($calendars as $ca){
            if($ca->shift3== $request->shift3){
                return redirect()->back()->with('status','Bác sĩ ca 3 đã có lịch');
            }
            $calendar->shift3 = $request->shift3;
        }
        foreach($calendars as $ca){
            if($ca->shift4== $request->shift4){
                return redirect()->back()->with('status','Bác sĩ ca 4 đã có lịch');
            }
            $calendar->shift4 = $request->shift4;
        }
        foreach($calendars as $ca){
            if($ca->shift5== $request->shift5){
                return redirect()->back()->with('status','Bác sĩ ca 5 đã có lịch');
            }
            $calendar->shift5 = $request->shift5;
        }
        foreach($calendars as $ca){
            if($ca->shift6== $request->shift6){
                return redirect()->back()->with('status','Bác sĩ ca 6 đã có lịch');
            }
            $calendar->shift6 = $request->shift6;
        }
        foreach($calendars as $ca){
            if($ca->shift7== $request->shift7){
                return redirect()->back()->with('status','Bác sĩ ca 7 đã có lịch');
            }
            $calendar->shift7 = $request->shift7;
        }
        foreach($calendars as $ca){
            if($ca->shift8== $request->shift8){
                return redirect()->back()->with('status','Bác sĩ ca 8 đã có lịch');
            }
            $calendar->shift8 = $request->shift8;
        }        foreach($calendars as $ca){
            if($ca->shift9== $request->shift9){
                return redirect()->back()->with('status','Bác sĩ ca 9 đã có lịch');
            }
            $calendar->shift9 = $request->shift9;
        }
        foreach($calendars as $ca){
            if($ca->shift10== $request->shift10){
                return redirect()->back()->with('status','Bác sĩ ca 10 đã có lịch');
            }
            $calendar->shift10 = $request->shift10;
        }
        foreach($calendars as $ca){
            if($ca->shift11== $request->shift11){
                return redirect()->back()->with('status','Bác sĩ ca 11 đã có lịch');
            }
            $calendar->shift11 = $request->shift11;
        }
        foreach($calendars as $ca){
            if($ca->shift12== $request->shift12){
                return redirect()->back()->with('status','Bác sĩ ca 12 đã có lịch');
            }
            $calendar->shift12 = $request->shift12;
        }
        dd("cc");
        $calendar->save();
        return redirect('/admin/calendar')->with('status','Cập nhật lịch thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $users = User::where('position_id',"2")->get();
        $rooms = Room::all();
        $calendars = Calendar::all();
        // foreach($calendars as $calendar){
        //     $i = 12;
        //     dd($calendar->shift.$i);
        // }
        return view('admin.calendar.show')->with(compact('users','rooms','calendars'));
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
        $calendars= Calendar::where('id','!=',$id)->get();
        $calendar = Calendar::where('room_id',$id)->first();
        foreach($calendars as $ca){
            if($request->shift1==null){
                continue;
            }
            elseif($ca->shift1== $request->shift1 && $request->shift1!=null){
                $doctor = User::find($request->shift1)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào sáng thứ 2');
            }
            else $calendar->shift1 = $request->shift1;
        }
        foreach($calendars as $ca){
            if($request->shift2==null){
                continue;
            }
            elseif($ca->shift2== $request->shift2 && $request->shift2!=null){
                $doctor = User::find($request->shift2)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào chiều thứ 2');
            }
            else $calendar->shift2 = $request->shift2;
        }
        foreach($calendars as $ca){
            if($request->shift3==null){
                continue;
            }
            elseif($ca->shift3== $request->shift3 && $request->shift3!=null){
                $doctor = User::find($request->shift3)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào sáng thứ 3');
            }
            else $calendar->shift3 = $request->shift3;
        }
        foreach($calendars as $ca){
            if($request->shift4==null){
                continue;
            }
            elseif($ca->shift4== $request->shift4 && $request->shift4!=null){
                $doctor = User::find($request->shift4)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào chiều thứ 3');
            }
            else $calendar->shift4 = $request->shift4;
        }
        foreach($calendars as $ca){
            if($request->shift5==null){
                continue;
            }
            elseif($ca->shift5== $request->shift5 && $request->shift5!=null){
                $doctor = User::find($request->shift5)->name;
                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào sáng thứ 4');
            }else 
            $calendar->shift5 = $request->shift5;
        }
        foreach($calendars as $ca){
            if($request->shift6==null){
                continue;
            }
            elseif($ca->shift6== $request->shift6 && $request->shift6!=null){
                $doctor = User::find($request->shift6)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào chiều thứ 4');
            }else 
            $calendar->shift6 = $request->shift6;
        }
        foreach($calendars as $ca){
            if($request->shift7==null){
                continue;
            }
            elseif($ca->shift7== $request->shift7 && $request->shift7!=null){
                $doctor = User::find($request->shift7)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào sáng thứ 5');
            }else 
            $calendar->shift7 = $request->shift7;
        }
        foreach($calendars as $ca){
            if($request->shift8==null){
                continue;
            }
            elseif($ca->shift8== $request->shift8 && $request->shift8!=null){
                $doctor = User::find($request->shift8)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào chiều thứ 5');
            }else 
            $calendar->shift8 = $request->shift8;
        }        foreach($calendars as $ca){
            if($request->shift9==null){
                continue;
            }
            elseif($ca->shift9== $request->shift9 && $request->shift9!=null){
                $doctor = User::find($request->shift9)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào sáng thứ 6');
            }else 
            $calendar->shift9 = $request->shift9;
        }
        foreach($calendars as $ca){
            if($request->shift10==null){
                continue;
            }
            elseif($ca->shift10== $request->shift10 && $request->shift10!=null){
                $doctor = User::find($request->shift10)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào chiều thứ 6');
            }else 
            $calendar->shift10 = $request->shift10;
        }
        foreach($calendars as $ca){
            if($request->shift11==null){
                continue;
            }
            elseif($ca->shift11== $request->shift11 && $request->shift11!=null){
                $doctor = User::find($request->shift11)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào sáng thứ 7');
            }else 
            $calendar->shift11 = $request->shift11;
        }
        foreach($calendars as $ca){
            if($request->shift12==null){
                continue;
            }
            elseif($ca->shift12== $request->shift12 && $request->shift12!=null){
                $doctor = User::find($request->shift12)->name;

                return redirect()->back()->with('status','Bác sĩ '.$doctor.' đã có lịch trực vào chiều thứ 7');
            }else 
            $calendar->shift12 = $request->shift12;
        }
        
        $calendar->save();
        return redirect('/admin/calendar')->with('status','Cập nhật lịch thành công');
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
