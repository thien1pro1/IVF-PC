@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('position.create')}}">Thêm chức vụ</a>
    <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">Chức vụ</th>
            <th scope="col">Lương</th>

            <th scope="col">Quản lý</th>
            
          </tr>
        </thead>
        @foreach($allPosition as $position)
        <tbody>
          <tr>
            <th scope="row">{{$position->id}}</th>
            <td>{{$position->name}}</td>
            <td>{{$position->salary}}</td>


            <td>
              <a href="{{route('position.edit',[$position->id])}}" class="btn btn-primary" style="float:right">Sửa</a>
              <form action="{{route('position.destroy',[$position->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa chức vụ {{$position->name}}?')" class="btn btn-danger">Xóa</button>
                
              </form>
            </td>
          </tr>
          @endforeach
          
        </tbody>
      </table>
</div>
@endsection
