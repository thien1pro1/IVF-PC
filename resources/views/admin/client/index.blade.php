@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    
    <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">Tên vợ</th>
            <th scope="col">Tên chồng</th>
            <th scope="col">Tên chồng</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">Quản lý</th>
            
          </tr>
        </thead>
        @foreach($alldanhmuc as $danhmuc)
        <tbody>
          <tr>
            <th scope="row">{{$danhmuc->id}}</th>
            <td>{{$danhmuc->categogyName}}</td>
            <td>{{$danhmuc->short_Desc}}</td>
            <td>
              @if($danhmuc->status==1)
                <span class="text text-success">kích hoạt</span>
              @else
                <span class="text text-danger">Không kích hoạt</span>
              @endif

            </td>

            <td>
              <a href="{{route('categogy.edit',[$danhmuc->id])}}" class="btn btn-primary" style="float:right">Sửa</a>
              <form action="{{route('categogy.destroy',[$danhmuc->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa danh mục {{$danhmuc->categogyName}}?')" class="btn btn-danger">Xóa</button>
                
              </form>
            </td>
          </tr>
          @endforeach
          
        </tbody>
      </table>
</div>
@endsection
