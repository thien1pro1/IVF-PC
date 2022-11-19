{{-- @extends('layouts.admin')
@section('content') --}}
<div>
    Ma hoa don la: {{$bill->id}}
</div><br>
<table class="table">
  <thead>
    <tr>
      <th scope="col">STT</th>
      <th scope="col">Ten</th>
      <th scope="col">SL</th>
      <th scope="col">DonGia</th>      
      <th scope="col">Gia</th>

    </tr>
  </thead>
  <tbody>
    @php
        $total = 0;
    @endphp

    @foreach ($bill->medicines()->get() as $key => $medicine)
    <tr>
        <th scope="row">{{$key}}</th>
        <td>
{{$medicine->name}}
        </td>

        <td>{{$medicine->pivot->amount}}</td>
        <td>{{$medicine->pricet}}</td>
        <td>{{$medicine->pivot->amount*$medicine->price}}</td>
      </tr>
      @php
          $total+=$medicine->pivot->amount*$medicine->price;
      @endphp
    @endforeach 
  </tbody>
</table>
<div>tong tien: {{$total}}</div>