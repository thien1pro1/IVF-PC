@extends('layouts.admin')
@section('content')
<style>
    .custom-select {
    display: inline-block;
    width: 100%;
    height: calc(2.25rem + 2px);
    padding: 0.375rem 1.75rem 0.375rem 0.75rem;
    line-height: 1.5;
    color: #495057;
    vertical-align: middle;
    background: #fff url(data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E) no-repeat right 0.75rem center;
    background-size: 8px 10px;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
</style>
<div class="container">
    <h2>Cập nhập lịch hẹn khám</h2>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif



        <div class="form-group col-6" style="float: right">
          <label for="c1">Tên Chồng</label>
          <input type="text" readonly class="form-control" id="c1" name="hus_name" value="{{$edit->hus_name}}" >
          
        </div>
        <div class="form-group col-6">
          <label for="c2">Tên vợ</label>
          <input type="text" readonly class="form-control" id="c2" name="wife_name" value="{{$edit->wife_name}}" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c3">Ngày sinh chồng</label>
            <input type="date" readonly class="form-control" id="c3" name="hus_birthday" value="{{$edit->hus_birthday}}"  >
        </div>
        <div class="form-group col-6">
            <label for="c4">Ngày sinh vợ</label>
            <input type="date" readonly class="form-control" id="c4" value="{{$edit->wife_birthday}}"  name="wife_birthday" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c5">Email</label>
            <input type="email" readonly class="form-control" id="c5" value="{{$edit->email}}"  name="email" >
        </div>
        <div class="form-group col-6">
            <label for="c6">Số điện thoại</label>
            <input type="text" readonly class="form-control" id="c6" value="{{$edit->phone}}"  name="phone" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c7">Ngày Khám</label>
            <input type="text" readonly class="form-control" id="c7" value="{{$edit->register_date}}"  name="register_date" >
        </div>
        <div class="form-group col-6">
            <label for="c8">Giờ khám</label>
            <input type="text" readonly class="form-control" id="c8" value="{{$edit->register_time}}"  name="register_time" >
        </div>
        <div class="form-group ">
            <label for="c9">Ghi chú</label>
            <textarea rows="5" readonly resize="none" type="date" class="form-control" id="c9" value="{{$edit->message}}"  name="message" >{{$edit->message}}</textarea>
        </div>
        <div class="form-group">
            <label  for="c11">Trạng thái</label>
            
                @if($edit->status = 1)
                <input type="text" readonly class="form-control" id="c8" value="Đã duyệt"   >

                @elseif($edit->status = 2)
                <input type="text" readonly class="form-control" id="c8" value="Đã Khám"  >

                @elseif($edit->status = 2)
                <input type="text" readonly class="form-control" id="c8" value="Đã Hủy"   >

                @endif
            
        </div>
        <div class="form-group">
            <label for="c12">Kết quả</label>
            <input type="text" readonly class="form-control" id="c12" value="{{$edit->result}}"  name="result" >
            @foreach ($files as $file)
            <div>
                <p><img width="200px" src="{{ asset('/uploads/sa/'.$file->location) }}"></p>

            </div>
        @endforeach
        </div>

        <a style="float: left;   min-width: 100px;    margin:5px;" class="btn btn-secondary" href="{{route('comebackBook')}}"> 
            Quay lại
         </a>



    
    
</div>
@endsection
