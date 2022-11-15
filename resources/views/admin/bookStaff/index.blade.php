@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <div class="form-group col-6" style="float: right">
      <label for="c3">Ngày</label>
      <input type="date" class="form-control" id="c3" name="hus_birthday" value="{{$edit->hus_birthday}}"  >
  </div>
    <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">Giờ</th>
            <th scope="col">Tên vợ</th>
            <th scope="col">Tên chồng</th>
            <th scope="col">Phòng</th>
            <th>Code
            </th>
            <th scope="col">Trạng thái</th>

            <th scope="col">Quản lý</th>
            
          </tr>
        </thead>
        <tbody>
        {{-- @dd($books); --}}
        @php
use App\Http\Constants\BookingTime;

$time = BookingTime::$bookingTime ;

@endphp
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
                <a href="{{route('bookStaff.edit',[$book->id])}}" class="btn btn-primary" style="float:right">Duyệt</a>
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
@endsection
