<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IVF</title>
    <!-- google font -->
    <link href="//fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <!-- Template CSS Style link -->
    
    <link rel="stylesheet" href="{{asset('frontend/css/style.css')}}">
    <link href="//fonts.googleapis.com/css2?family=Hind:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css2?family=Libre+Baskerville:wght@400;700&display=swap" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

</head>
<body>
<style>
  th,td{
    padding: 5px;
  }
  .table{
    width: 100%;
  }
</style>
<div>
  <div style="float:left">
    BENH VIEN QUOC TE PHUONG CHAU
    </div>
    <div style="float:right">
      IVF
      </div>
</div>
<br>
<div>Don Thuoc</div><br>
<div>Bac si: {{Auth::user()->name}}</div>
<table class="table">
  <thead>
    <tr>
      <th scope="col">STT</th>
      <th scope="col">Ten</th>
      <th scope="col">SL</th>
      <th scope="col">DonGia</th>      
      <th scope="col">Thanh Tien</th>

    </tr>
  </thead>
  <tbody>
    @php
        $total = 0;
    @endphp

    @foreach ($bill->medicines()->get() as $key => $medicine)
    <tr>
        <th scope="row">{{$key}}</th>
        <td>{{$medicine->name}}</td>

        <th scope="col">{{$medicine->pivot->amount}}</th>
        <td  scope="col">{{$medicine->price}}</td>
        <td scope="col">{{$medicine->pivot->amount*$medicine->price}}</td>
      </tr>
      @php
          $total+=$medicine->pivot->amount*$medicine->price;
          
      @endphp
    @endforeach 
  </tbody>
</table>

<div>tong tien: {{$total}}</div>
</body>
</html>
