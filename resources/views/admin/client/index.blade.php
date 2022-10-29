@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    
    <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">Tên vợ</th>
            <th scope="col">Tên chồng</th>
            <th scope="col">Phòng</th>
            <th>Code
            </th>
            <th scope="col">Trạng thái</th>

            <th scope="col">Quản lý</th>
            
          </tr>
        </thead>
        {{-- @dd($books); --}}
        @foreach($books as $book)
        <tbody>
          <tr>
            <th scope="row">{{$book->id}}</th>
            <td>{{$book->wife_name}}</td>
            <td>{{$book->hus_name}}</td>
            @if($book->room_id != null)
            <td>{{$book->room->name}}</td>
            @else
            <td></td>
            @endif
            @php
              $barcode = new Picqer\Barcode\BarcodeGeneratorHTML();
            @endphp
            
            <td>
              {!! $barcode->getBarcode($book->id,$barcode::TYPE_CODE_128,3,30); !!}
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
              <a href="{{route('book.edit',[$book->id])}}" class="btn btn-primary" style="float:right">Duyệt</a>
              @else

              @endif
            </td>
          </tr>
          @endforeach
          
        </tbody>
      </table>
</div>
@endsection
