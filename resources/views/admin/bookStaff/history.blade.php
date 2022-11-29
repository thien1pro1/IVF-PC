
@extends('layouts.admin')
@section('content')
<section class="inner-banner py-5">
  <style>
    .inner-banner {
      background-image: url(https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/banner4.jpg);
    }
  </style>
  <div class="w3l-breadcrumb py-lg-5">
    <div class="container pt-4 pb-sm-4 AboutPageBanner">
                  <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
        History</h4>
      
                  <ul class="breadcrumbs-custom-path AllBreadcrumbs">
        <a href="https://wp.w3layouts.com/dentition" rel="nofollow">Home</a>&nbsp;&nbsp;&#187;&nbsp;&nbsp;History      </ul>
          </div>
  </div>
</section>


<div class="container">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">Ngày khám</th>
        <th scope="col">Phòng</th>
        <th scope="col">Nội dung khám</th>
        <th scope="col">Kết quả</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($books as $book )
        <tr>
          <th scope="row">{{$book->register_date}}</th>
          <td>{{$book->room_id}}</td>
          <td>{{$book->message}}</td>
          <td>
            <a href="{{route('book.detailHistory',['id'=>$book->id])}}">
              <button type="button" class="btn btn-info">Chi tiết</button>
            </a>
              
          </td>
        </tr>
        @endforeach


    </tbody>
  </table>
</div>

@endsection