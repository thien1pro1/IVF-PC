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
    <h2>Thêm Nhân viên</h2>
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


    <form method="POST" action="{{route('staff.store')}}">
        @csrf
        <div class="form-group">
          <label for="exampleInputEmail1">Email</label>
          <input type="email" class="form-control" id="exampleInputEmail1" value="{{old('email')}}" name="email">
          
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Tên nhân viên</label>
          <input type="text" class="form-control" id="exampleInputPassword1" value="{{old('name')}}"  name="name" >
        </div>
        <div class="form-group">
            <label for="status">Chức vụ</label>
            <select id="status" class="custom-select" name="position">
                @foreach($pos)
                <option value="1" >Bác sĩ</option>
                <option value="2" >Y Tá</option>
                <option value="3" >Bảo vệ</option>
                <option value="4" >Nhân viên marketing</option>
    
              </select>
              
          </div>

        <button type="submit" name="addStaff" class="btn btn-primary">Thêm</button>
      </form>
</div>
@endsection
