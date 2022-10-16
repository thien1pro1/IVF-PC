@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('post.create')}}">Thêm bài đăng</a>

<table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Tiêu đề</th>
         <th scope="col">Lượt xem</th>
      <!--    <th scope="col">Lượt xem tháng</th> -->
        <th scope="col">Hình ảnh</th>
        <th scope="col">Mô tả ngắn</th>
        <th scope="col">Thuộc danh mục</th>
        <th scope="col">Quản lý</th>
        
      </tr>
    </thead>
    <tbody>





        @foreach($allPost as $post)

      <tr>
        <td scope="row">{{$post->id}}</td>
         <td scope="row">{{$post->title}}</td>
          <td scope="row">{{$post->views}}</td>
        <!--   <td scope="row">{{$post->viewsm}}</td> -->
         <td scope="row"><img width="200px" src="{{asset('public/uploads/'.$post->image)}}"></td>
         <td scope="row">{!!substr($post->short_desc,0,200)!!}</td>
         <td scope="row">{{$post->categogy_id}}</td>
        
            <td>
              <a href="{{route('post.edit',[$post->id])}}" class="btn btn-primary" style="float:right">Sửa</a>
              <form action="{{route('post.destroy',[$post->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa danh mục {{$post->title}}?')" class="btn btn-danger">Xóa</button>
                
              </form>
            </td>

      </tr>
      @endforeach
    </tbody>
@endsection
