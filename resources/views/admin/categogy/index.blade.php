@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('categogy.create')}}">Thêm danh mục</a>
   



 <div class="card">
      <div class="table-responsive">
        <table class="table align-items-center mb-0">
          <thead>
            <tr>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">STT</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên danh mục</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Mô tả</th>

              
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Quản lí</th>
              <th class="text-secondary opacity-7"></th>
            </tr>
          </thead>
        
          <tbody>
               @foreach($alldanhmuc as $key => $danhmuc)


         
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">{{$key+1}}</h6>
                    <!-- <p class="text-xs text-secondary mb-0">john@creative-tim.com</p> -->
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">{{$danhmuc->categogyName}}</p>
                  
              </td>
               <td>
               
                <p class="text-xs text-secondary mb-0">{{$danhmuc->short_Desc}}</p>
              </td>
             
              
              <td class="align-middle">

                <a  href="{{route('categogy.edit',[$danhmuc->id])}}" class="btn btn-light">Sửa</a>


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
