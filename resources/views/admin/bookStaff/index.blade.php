@extends('layouts.admin')
@section('content')
@php
use App\Http\Constants\BookingStatus;

use App\Http\Constants\BookingTime;

$time = BookingTime::$bookingTime ;

@endphp
    <div class="container">
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
        @endif


        <div class="row">
            <div class="col-12">
                <div class="card mb-4">
                    <div class="card-header pb-0">
                        <h4>Lịch khám</h4>
                    </div>
                    <div class="card-body px-0 pt-0 pb-2">
                        <div class="table-responsive p-0">
                            <table class="table align-items-center justify-content-center mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Giờ</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Họ tên chồng</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Họ tên vợ</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Phòng khám</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Barcode</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Trạng thái</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">
                                            Quản lý</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>



                                  
        @foreach ($time as $t)
        @php
          $cx = 0;
        @endphp
          @foreach($books as $book)
            @if ($t == substr($book->register_time,0,5))
              @php
                $cx = 1;
              @endphp
                <tr>
              <td scope="row">{{$t}}</td>
              <td>{{$book->wife_name}}</td>
              <td>{{$book->hus_name}}</td>
              @if($book->room_id != null)
              <td>{{$book->room->name}}</td>
              @else
              <td></td>
              @endif
              @php
                $barcode = new Picqer\Barcode\BarcodeGeneratorPNG();
                $xx = 'data:image/png;base64,'.base64_encode($barcode->getBarcode($book->id,$barcode::TYPE_CODE_128,3,30)) ;
              @endphp
              
              <td>
                <img src="{{$xx}}">
                
                {{-- {!! $barcode->getBarcode($book->id,$barcode::TYPE_CODE_128,3,30); !!} --}}
                {{-- <div>{!! DNS1D::getBarcodeHTML($book->id, 'POSTNET') !!}</div></br>
                <div>{!! DNS2D::getBarcodeHTML($book->id, 'QRCODE') !!}</div></br --}}
  
              </td>
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
  
              <td>
                @if($book->status==0 || $book->status==1)
                <a href="{{route('bookStaff.edit',[$book->id])}}" class="btn btn-secondary" style="float:right">Khám</a>
                @else

                @endif
              </td>
            </tr>

            @endif
          @endforeach
          @if($cx == 0)
          <tr>
            
            <td scope="row">{{$t}}</td>

          </tr>
          @endif
        @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection
