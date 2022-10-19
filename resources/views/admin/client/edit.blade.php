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


    <form method="POST" action="{{route('book.update',[$edit->id])}}">
        @method('PUT')
        @csrf
        <div class="form-group col-6" style="float: right">
          <label for="c1">Tên Chồng</label>
          <input type="text" class="form-control" id="c1" name="hus_name" value="{{$edit->hus_name}}" >
          
        </div>
        <div class="form-group col-6">
          <label for="c2">Tên vợ</label>
          <input type="text" class="form-control" id="c2" name="wife_name" value="{{$edit->wife_name}}" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c3">Ngày sinh chồng</label>
            <input type="date" class="form-control" id="c3" name="hus_birthday" value="{{$edit->hus_birthday}}"  >
          </div>
        <div class="form-group col-6">
            <label for="c4">Ngày sinh vợ</label>
            <input type="date" class="form-control" id="c4" value="{{$edit->wife_birthday}}"  name="wife_birthday" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c5">Email</label>
            <input type="email" class="form-control" id="c5" value="{{$edit->email}}"  name="email" >
        </div>
        <div class="form-group col-6">
            <label for="c6">Số điện thoại</label>
            <input type="text" class="form-control" id="c6" value="{{$edit->phone}}"  name="phone" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c7">Ngày Khám</label>
            <input type="date" class="form-control" id="c7" value="{{$edit->register_date}}"  name="register_date" >
        </div>
        <div class="form-group col-6">
            <label for="c8">Giờ khám</label>
            <input type="time" class="form-control" id="c8" value="{{$edit->register_time}}"  name="register_time" >
        </div>
        <div class="form-group ">
            <label for="c9">Ghi chú</label>
            <textarea rows="5" resize="none" type="date" class="form-control" id="c9" value="{{$edit->message}}"  name="message" ></textarea>
        </div>
        <div class="form-group">
            <label for="c10">Phòng khám</label>
           
            <select class="form-control custom-select" id="c11"  name="room_id" > 
                @foreach ($room as $r)
                @if ($r->id==$edit->room_id)
                    <option  selected value="{{$edit->room_id}}" >Phòng {{$edit->room_id}}</option>
                @else
                <option  value="{{$r->id}}" >{{$r->name}}</option>

                @endif
                    
                @endforeach

            </select>
        </div>
        <div class="form-group">
            <label for="c11">Trạng thái</label>
            <select class="form-control custom-select" id="c11"  name="status" > 
                @if ($edit->status==0)
                    <option class="text text-primary" selected value="0" >Chờ xác nhận</option>
                    <option class="text text-success" value="1" >Đã xác nhận</option>
                    <option class="text text-muted" value="2" >Đã Khám</option>  
                    <option class="text text-danger" value="3" >Đã hủy</option> 
                @elseif($edit->status==1)
                    <option class="text text-primary" value="0" >Chờ xác nhận</option>
                    <option class="text text-success" selected value="1" >Đã xác nhận</option>
                    <option class="text text-muted" value="2" >Đã Khám</option>  
                    <option class="text text-danger" value="3" >Đã hủy</option> 
                @elseif($edit->status==2)
                    <option class="text text-primary" value="0" >Chờ xác nhận</option>
                    <option class="text text-success" value="1" >Đã xác nhận</option>
                    <option class="text text-muted" selected value="2" >Đã Khám</option>  
                    <option class="text text-danger" value="3" >Đã hủy</option> 
                @else
                    <option class="text text-primary" value="0" >Chờ xác nhận</option>
                    <option class="text text-success" selected value="1" >Đã xác nhận</option>
                    <option class="text text-muted" value="2" >Đã Khám</option>  
                    <option class="text text-danger" selected value="3" >Đã hủy</option> 
                @endif   
                  
            </select>
        </div>
        <div class="form-group">
            <label for="c12">Kết quả</label>
            <input type="text" class="form-control" id="c12" value="{{$edit->result}}"  name="result" >
        </div>

        {{-- <div class="form-group">
            <select class="custom-select" name="status">
            	@if($editdanhmuc->status==1)
                <option value="1" >kích hoạt</option>
                @else
                <option value="2" >Không kích hoạt</option>
    			@endif
              </select>
              
          </div> --}}

        <button type="submit" name="addbook" class="btn btn-primary">Lưu</button>
      </form>
</div>
@endsection
