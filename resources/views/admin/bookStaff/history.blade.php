
@extends('layouts.admin')
@section('content')

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
            <a href="{{route('bookStaff.detailHistory',['id'=>$book->id])}}">
              <button type="button" class="btn btn-info">Chi tiết</button>
            </a>
              
          </td>
        </tr>
        @endforeach


    </tbody>
  </table>
</div>

@endsection