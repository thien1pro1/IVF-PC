@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    

<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>Danh sách đặt lịch</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center justify-content-center mb-0">
<thead>
<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Ngày hẹn khám</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Họ tên chồng</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Họ tên vợ</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Phòng khám</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Barcode</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Trạng thái</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">Quản lý</th>
<th></th>
</tr>
</thead>
<tbody>

@foreach($books as $book)
<tr>
<td>
<div class="d-flex px-2">

<div class="my-auto">
 <h6 class="mb-0 text-sm">{{$book->register_time}} | {{$book->register_date}}</h6>
</div>
</div>
</td>
<td>
<span class="text-xs font-weight-bold">{{$book->hus_name}}</span>
</td><td>
<span class="text-xs font-weight-bold">{{$book->wife_name}}</span>
</td>
@if($book->room_id != null)
<td>
<span class="text-xs font-weight-bold">{{$book->room->name}}</span>
</td>
@else
            <td> <span class="text-xs font-weight-bold">Chưa có phòng</span>
</td>
            @endif
            @php
              $barcode = new Picqer\Barcode\BarcodeGeneratorPNG();
              $xx = 'data:image/png;base64,'.base64_encode($barcode->getBarcode($book->id,$barcode::TYPE_CODE_128,3,30)) ;
            @endphp
            <td>
              <img src="{{$xx}}">
              
              

            </td>

   


<!-- <td class="align-middle text-center">
<div class="d-flex align-items-center justify-content-center">
<span class="me-2 text-xs font-weight-bold">60%</span>
<div>
<div class="progress">
<div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
</div>
</div>
</div>
</td> -->

<td>

@if($book->status==1)
                <span class="text text-success">Đã duyệt</span>
              @elseif($book->status==0)
                <span class="text text-primary">Chờ duyệt</span>
                @elseif($book->status==2)
                <span class="text text-muted">Đã khám</span>
              @else
                <span class="text text-danger">Đã hủy</span>
              @endif
</td>
<td class="align-middle">
   @if($book->status<=2)
<a href="{{route('book.edit',[$book->id])}}" class="btn btn-light">Duyệt</a>
 @else

              @endif
</td>
</tr>

 @endforeach

</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
@endsection
