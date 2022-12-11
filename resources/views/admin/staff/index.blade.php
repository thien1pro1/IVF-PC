@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('staff.create')}}">Thêm Nhân viên</a>
    
</div>

<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>Danh sách nhân viên</h6>
</div>
<div class="form-group col-12">
  <form action="{{ route('staff.index') }}" method="GET" class="d-flex search-header">
      <input style="height: 50px ;width: 300px; margin-right: 10px; margin-left: 10px;" name="search"
          class="form-control" type="search" placeholder="Bạn muốn tìm..." aria-label="Search">
      <select style="height: 50px ;width: 150px; margin-right: 10px;" class="form-select"
          name="position_s" aria-label="Default select example">
          <option value="9">Tất cả</option>
          @foreach($position as $p)
          
          <option value="{{$p->id}}">{{$p->name}}</option>
          @endforeach

      </select>

      <button style="height: 50px ;width: 100px; margin-right: 10px;" class="form-control"
          type="submit" aria-label="Search" required> Tìm kiếm
      </button>




</div>
</form>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID PC</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên nhân viên</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Thuộc khoa phòng</th>

<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Chức vụ</th>

<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Quản lý</th>

<th class="text-secondary opacity-7"></th>

</tr>
</thead>
<tbody>
  @foreach($allStaff as $key => $staff)
<tr>
 <td class="align-middle text-center">
<span class="text-secondary text-xs font-weight-bold">{{$key+1}}</span>
</td>
<td>
<div class="d-flex px-2 py-1">
<div>
<img src="{{asset('uploads/'.$staff->image)}}" class="avatar avatar-sm me-3" alt="user1">
</div>
<div class="d-flex flex-column justify-content-center">
<h6 class="mb-0 text-sm">{{$staff->name}}</h6>
<p class="text-xs text-secondary mb-0"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="c8a2a7a0a688abbaada9bca1beade5bca1a5e6aba7a5">{{$staff->email}}</a></p> <!-- gui mail -->

</div>
</div>
</td>
<td class="align-middle text-center">
<span class="text-secondary text-xs font-weight-bold">IVF</span>
</td>





@if($staff->position_id==0)
            <td class="align-middle text-center text-sm"> <span class="badge badge-sm bg-gradient-success">Admin</td>
            @elseif($staff->position_id != null)
            <td class="align-middle text-center text-sm"> <span class="badge badge-sm bg-gradient-success">{{$staff->position->name}}</td>
            
            @else
            <td class="align-middle text-center text-sm">
<span class="badge badge-sm bg-gradient-success"></span>
</td>
            @endif

             <td class="align-middle">

                <a  href="{{route('staff.edit',[$staff->id])}}" class="btn btn-light">Sửa</a>


                <form action="{{route('staff.destroy',[$staff->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa nhân viên {{$staff->name}}?')" class="btn btn-danger">Xóa</button>
                
              </form>


              </td>




</tr>
@endforeach

</tbody>
</table>
</div>
</div>
</div>

@endsection
