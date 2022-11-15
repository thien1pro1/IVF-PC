@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('post.create')}}">Thêm bài đăng</a>


    <div class="card">
      <div class="table-responsive">
        <table class="table align-items-center mb-0">
          <thead>
            <tr>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">#</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tiêu đề</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Lượt xem</th>
              <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Hình ảnh</th>
              <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Mô tả ngắn</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Thuộc danh mục</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Quản lí</th>
              <th class="text-secondary opacity-7"></th>
            </tr>
          </thead>
          <tbody>


            @foreach($allPost as $post)
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                 <!--  <div>
                    <img src="{{asset('uploads/'.$post->image)}}" class="avatar avatar-sm me-3">
                  </div> -->
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">{{$post->id}}</h6>
                    <!-- <p class="text-xs text-secondary mb-0">john@creative-tim.com</p> -->
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">{{$post->title}}</p>
                  
              </td>
               <td>
               
                <p class="text-xs text-secondary mb-0">{{$post->views}}</p>
              </td>
              <td class="align-middle text-center text-sm">
                <div>
                    <img  width="100px" src="{{asset('uploads/'.$post->image)}}" class="avatar avatar-sm me-3">
                  </div>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">{{$post->short_Desc}}</span>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">{{$post->category->categogyName}}</span>
              </td>
              <td class="align-middle">

                <a href="{{route('post.edit',[$post->id])}}" class="btn btn-light">Sửa</a>


                <form action="{{route('post.destroy',[$post->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa danh mục {{$post->title}}?')" class="btn btn-danger">Xóa</button>
                
              </form>


              </td>
            </tr>

            @endforeach


       
    
           
          </tbody>
        </table>
      </div>
    </div>








@endsection
