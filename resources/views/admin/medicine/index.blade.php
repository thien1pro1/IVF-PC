@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('medicine.create')}}">Thêm dược phẩm</a>
   



 <div class="card">
      <div class="table-responsive">
        <table class="table align-items-center mb-0">
          <thead>
            <tr>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">#</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên thuốc</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Phân loại</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Ngày nhập</th>

              
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Quản lí</th>
              <th class="text-secondary opacity-7"></th>
            </tr>
          </thead>
        
          <tbody>
               @foreach($medicines as $medicine)


         
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">{{$medicine->id}}</h6>
                    <!-- <p class="text-xs text-secondary mb-0">john@creative-tim.com</p> -->
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">{{$medicine->name}}</p>
                  
              </td>
               <td>
               
                <p class="text-xs text-secondary mb-0">{{$medicine->type}}</p>
              </td>
              <td>
               
                <p class="text-xs text-secondary mb-0">{{$medicine->created_at}}</p>
              </td>
             
             
              
              <td class="align-middle">

                <a  href="{{route('medicine.edit',[$medicine->id])}}" class="btn btn-light">Sửa</a>


                <form action="{{route('medicine.destroy',[$medicine->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa danh mục {{$medicine->medicineName}}?')" class="btn btn-danger">Xóa</button>
                
              </form>


              </td>
            </tr>

            @endforeach


       
    
           
          </tbody>
        </table>
      </div>
      @endsection
