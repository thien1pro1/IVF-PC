@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
<h3>
    Tư vấn
</h3>


    <div class="card">
      <div class="table-responsive">
        <table class="table align-items-center mb-0">
          <thead>
            <tr>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">STT</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Email</th>

              <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Câu hỏi</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Quản lí</th>
              <th class="text-secondary opacity-7"></th>
            </tr>
          </thead>
          <tbody>


            @foreach($asks as $key => $ask)
            <tr>

              <td>
                <p class="text-xs font-weight-bold mb-0">{{$key}}</p>
                  
              </td>
               <td>
               
                <p class="text-xs text-secondary mb-0">{{$ask->name}}</p>
              </td>
              <td>
               
                <p class="text-xs text-secondary mb-0">{{$ask->email}}</p>
              </td>
              {{-- <td class="align-middle text-center text-sm">
                <div>
                    <img  width="100px" src="{{asset('uploads/'.$ask->image)}}" class="avatar avatar-sm me-3">
                  </div>
              </td> --}}
              <td >
                <span class="text-secondary text-xs font-weight-bold">{{$ask->content}}</span>
              </td>

              <td class="align-middle">

                <a href="{{route('ask_answer.edit',[$ask->id])}}" class="btn btn-light">Trả lời</a>


  


              </td>
            </tr>

            @endforeach


       
    
           
          </tbody>
        </table>
      </div>
    </div>








@endsection
