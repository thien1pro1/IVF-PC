{{-- @extends('layouts.admin')
@section('content') --}}
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
        <td>{{$medicine->price}}</td>
        <td>{{$medicine->pivot->amount*$medicine->price}}</td>
      </tr>
      @php
          $total+=$medicine->pivot->amount*$medicine->price;
          
      @endphp
    @endforeach 
  </tbody>
</table>

<div>tong tien: {{$total}}</div>