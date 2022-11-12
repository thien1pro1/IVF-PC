<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" >
</head>
<body>
    <h3>Xác nhận đăng kí khám</h3>
    <p>{{$data['body']}}</p>
    @php
    $barcode = new Picqer\Barcode\BarcodeGeneratorPNG();
  @endphp
  <table>
    <tr>
            @php
              $barcode = new Picqer\Barcode\BarcodeGeneratorPNG();
              $xx = 'data:image/png;base64,'.base64_encode($barcode->getBarcode($data['id'],$barcode::TYPE_CODE_128,3,30)) ;
            @endphp
            <a href="{{route('book.history',['email'=>$data['email']])}}" style="background-color: red" style="float:right">Duyệt</a>
            <td>
             
              <img src="{{ $message->embed($xx) }}" style="width:300px; height:100px;">


              {{-- {!! $barcode->getBarcode($book->id,$barcode::TYPE_CODE_128,3,30); !!} --}}
              {{-- <div>{!! DNS1D::getBarcodeHTML($book->id, 'POSTNET') !!}</div></br>
              <div>{!! DNS2D::getBarcodeHTML($book->id, 'QRCODE') !!}</div></br --}}

            </td>
    </tr>

  </table>
  
 
    
</body>
</html>
