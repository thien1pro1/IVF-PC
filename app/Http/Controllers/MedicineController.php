<?php

namespace App\Http\Controllers;

use App\Models\Medicine;
use Carbon\Carbon;
use Illuminate\Http\Request;

class MedicineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->query('search') == null && $request->query('type') == null) {
            $medicines = Medicine::orderBy('id', 'ASC')->get();
            return view('admin.medicine.index')->with(compact('medicines'));
        } else {
            $search = $request->query('search');
            $type = $request->query('type');


            if (empty($status) && empty($search)) {
                $this->comeback();
            }
            $medicines = Medicine::when($request->has('type'), function ($query) use ($type) {
                if ($type == 9) {
                    return $query;
                } else
                    return $query->where('type', $type);
            })
                ->when($request->has('search'), function ($query) use ($search) {
                    if ($search == "") {
                        return $query;
                    } else
                        return $query->Where('name', 'LIKE', '%' . $search . '%');
                })->get();
            return view('admin.medicine.index')->with(compact('medicines', 'search', 'type'));
        }

        // $medicines = Medicine::orderBy('id', 'ASC')->get();
        // return view('admin.medicine.index')->with(compact('medicines'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        return view('admin.medicine.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $data = $request->validate(
        //     [
        //         'MedicineName'=>'required|unique:Medicine|max:255',
        //         'short_Desc' =>'required|max:255',
        //         'status'     =>'required'
        //     ],
        //     [
        //         'MedicineName.required'=>'Vui lòng nhập tên danh mục',
        //         'short_Desc.required' =>'Nhập mo tả!',
        //     ]
        // );
        $medicine = new Medicine();
        $medicine->name = $request->name;
        $medicine->type = $request->type;
        $medicine->price = $request->price;
        $medicine->amount = $request->amount;
        $medicine->status = 0;
        $medicine->save();
        return redirect()->back()->with('status', 'Thêm danh mục thành công');
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
        $edit = Medicine::find($id);
        return view('admin.medicine.edit')->with(compact('edit'));
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
        // $data = $request->validate(
        //     [
        //         'name'=>'required|max:255',
        //         'type' =>'required|max:255',
        //         'amount'     =>'required'
        //     ],
        //     [
        //         'MedicineName.unique'=>'Tên đã tồn tại. Vui lòng nhập tên khác',
        //         'short_Desc.required' =>'Nhập mo tả!',
        //     ]
        // );
        $medicine = Medicine::find($id);
        $medicine->name = $request->name;
        $medicine->type = $request->type;
        $medicine->amount = $request->amount;
        $medicine->status = $request->status;

        $medicine->save();
        return redirect('/admin/Medicine')->with('status', 'Cập nhập danh mục thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Medicine::find($id)->delete();
        return redirect()->back()->with('status', 'Xoá danh mục thành công');
    }
    public function exportPDF()
    {
    }
    public function comeback()
    {
        return redirect('/admin/medicine');
    }
}
