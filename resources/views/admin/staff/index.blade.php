@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('staff.create')}}">Thêm Nhân viên</a>
    <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">Tài khoản</th>
            <th scope="col">Tên nhân viên</th>
            <th scope="col">Chức vụ</th>
            <th scope="col">Quản lý</th>
            
          </tr>
        </thead>
        @foreach($allStaff as $staff)
        <tbody>
          <tr>
            <th scope="row">{{$staff->id}}</th>
            <td>{{$staff->email}}</td>
            <td>{{$staff->name}}</td>
            <td>
              {{$staff->position}}
            </td>

            <td>
              <a href="{{route('staff.edit',[$staff->id])}}" class="btn btn-primary" style="float:right">Sửa</a>
              <form action="{{route('staff.destroy',[$staff->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa nhân viên {{$staff->name}}?')" class="btn btn-danger">Xóa</button>
                
              </form>
            </td>
          </tr>
          @endforeach
          
        </tbody>
      </table>
</div>
@endsection
