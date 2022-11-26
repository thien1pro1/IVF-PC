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
    <h2>Cập nhập thông tin cá nhân</h2>
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


    <form method="POST" action="{{route('staff.update',[Auth::user()->id])}}" enctype="multipart/form-data">
        @method('PUT')
        @csrf
        <div class="form-group">
          <label for="exampleInputEmail1">Tài khoản</label>
          <input type="text" class="form-control" id="exampleInputEmail1" name="email" value="{{Auth::user()->email}}" >
          
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Tên</label>
            <input type="text" class="form-control" id="exampleInputEmail1" name="name" value="{{Auth::user()->name}}" >
            
          </div>
          <div class="form-group">
            <label for="title">Ảnh đại diện</label>
            <input type="file"class="form-control" name="image">
            <p><img width="200px" src="{{asset('/uploads/'.Auth::user()->image)}}"></p>
            
          </div>
          <div class="form-group">
            <select class="custom-select" name="position_id">
                @foreach($position as $p)

                    @if(Auth::user()->position_id == $p->id)
                    <option selected value="{{$p->id}}">{{$p->name}}</option>
                    @else
                    <option value="{{$p->id}}">{{$p->name}}</option>
                    @endif
                @endforeach

            </select>
              
          </div>

        <button type="submit" name="addStaff" class="btn btn-success">Lưu</button>
      </form>
</div>
@endsection
