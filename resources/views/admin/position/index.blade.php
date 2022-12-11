@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('position.create')}}">Thêm chức vụ</a>
    </div>




<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>Authors table</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>
  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Mã Chức vụ</th>
  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Chức vụ</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Quản lý</th>
<th class="text-secondary opacity-7"></th>
</tr>
</thead>
<tbody>
   @foreach($allPosition as $position)
<tr>

  <td class="align-middle text-center">
<span class="text-secondary text-xs font-weight-bold">{{$position->id+1}}</span>
</td>


  <td class="align-middle text-center">
<span class="text-secondary text-xs font-weight-bold">{{$position->name}}</span>
</td>



 <td class="align-middle text-center">

                <a style=" " href="{{route('position.edit',[$position->id])}}" class="btn btn-light">Sửa</a>


                <form action="{{route('position.destroy',[$position->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button style="margin-left = -50px " onclick="return confirm('Bạn muốn xóa chức vụ {{$position->name}}?')" class="btn btn-danger">Xóa</button>
                
              </form>


              </td>



</tr>
 @endforeach

</tbody>
</table>
</div>
</div>
</div>
</div>
@endsection
