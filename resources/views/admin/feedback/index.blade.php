@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
<h3>
    Phản hồi
</h3>


    <div class="card">
      <div class="table-responsive">
        <table class="table align-items-center mb-0">
          <thead>
            <tr>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">STT</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Email</th>

              <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Phản hồi</th>
              <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Bài viết</th>

              <th class="text-secondary opacity-7"></th>
            </tr>
          </thead>
          <tbody>


            @foreach($feedbacks as $key => $feedback)
            <tr>

              <td>
                <p class="text-xs font-weight-bold mb-0">{{$key+1}}</p>
                  
              </td>
               <td>
               
                <p class="text-xs text-secondary mb-0">{{$feedback->name}}</p>
              </td>
              <td>
               
                <p class="text-xs text-secondary mb-0">{{$feedback->email}}</p>
              </td>
              {{-- <td class="align-middle text-center text-sm">
                <div>
                    <img  width="100px" src="{{asset('uploads/'.$ask->image)}}" class="avatar avatar-sm me-3">
                  </div>
              </td> --}}
              <td >
                <span class="text-secondary text-xs font-weight-bold">{{$feedback->content}}</span>
              </td>
              @foreach($posts as $post)
              @if($post->id == $feedback->post_id)
              <td > 
                <span class="text-secondary text-xs font-weight-bold">{{$post->title}}</span>
              </td>
              @endif
              @endforeach


            </tr>

            @endforeach


       
    
           
          </tbody>
        </table>
      </div>
    </div>








@endsection
