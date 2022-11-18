@extends('layouts.admin')
@section('content')

<style>
    .custom-select {
    display: inline-block;
    width: 100%;
    height: calc(2.25rem + 2px);
    padding: 0.375rem 1.75rem 0.375rem 0.75rem;
    line-height: 1.5;
    color: #495057;
    vertical-align: middle;
    background: #fff url(data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E) no-repeat right 0.75rem center;
    background-size: 8px 10px;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
</style>
<div class="container">
    <h2>Cập nhập danh mục</h2>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif


    <form method="POST" action="{{route('medicine.update',[$edit->id])}}">
        @method('PUT')
        @csrf
        <div class="form-group">
          <label for="exampleInputEmail1">Tên thuốc</label>
          <input type="text" class="form-control" id="exampleInputEmail1" name="medicineName" value="{{$edit->name }}" placeholder="...">
          
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Loại</label>
          <input type="text" class="form-control" id="exampleInputPassword1" value="{{$edit->type}}" placeholder="..." name="short_Desc" >
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Đơn giá</label>
            <input type="number" class="form-control" id="exampleInputPassword1" value="{{$edit->price}}"  name="price" >
          </div>
          <div class="form-group">
            
            <input type="number" class="form-control" id="exampleInputPassword1" value="{{$edit->amount}}"  name="amount" >
          </div>
          @php
    use App\Http\Constants\TypeMedicine;
 
@endphp
        {{-- <div class="form-group">
            <label for="exampleInputPassword1">Trạng thái</label>
            <select class="custom-select" name="status">
            	@if($edit->status==TypeMedicine::$ThuocDatTri)
                <option selected value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc đặc trị</option>
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc Hiệu trị</option>
                <option value="{{TypeMedicine::$Khánginh}}" >Kháng sinh</option>
                <option value="{{TypeMedicine::$Vitamin}}" >Vitamin</option>
                <option value="{{TypeMedicine::$DungCuYTe}}" >Dụng cụ y tế</option>

                @elseif($edit->status==TypeMedicine::$ThuocHieuTri)
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc đặc trị</option>
                <option selected value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc Hiệu trị</option>
                <option value="{{TypeMedicine::$Khánginh}}" >Kháng sinh</option>
                <option value="{{TypeMedicine::$Vitamin}}" >Vitamin</option>
                <option value="{{TypeMedicine::$DungCuYTe}}" >Dụng cụ y tế</option>

                @elseif($edit->status==TypeMedicine::$KhangSinh)
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc đặc trị</option>
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc Hiệu trị</option>
                <option selected value="{{TypeMedicine::$Khánginh}}" >Kháng sinh</option>
                <option value="{{TypeMedicine::$Vitamin}}" >Vitamin</option>
                <option value="{{TypeMedicine::$DungCuYTe}}" >Dụng cụ y tế</option>

                @elseif($edit->status==TypeMedicine::$Vitamins)
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc đặc trị</option>
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc Hiệu trị</option>
                <option value="{{TypeMedicine::$Khánginh}}" >Kháng sinh</option>
                <option selected value="{{TypeMedicine::$Vitamin}}" >Vitamin</option>
                <option value="{{TypeMedicine::$DungCuYTe}}" >Dụng cụ y tế</option>
    			
                @elseif($edit->status==TypeMedicine::$DungCuYTe)
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc đặc trị</option>
                <option value="{{TypeMedicine::$ThuocDatTri}}" >Thuốc Hiệu trị</option>
                <option value="{{TypeMedicine::$Khánginh}}" >Kháng sinh</option>
                <option value="{{TypeMedicine::$Vitamin}}" >Vitamin</option>
                <option selected value="{{TypeMedicine::$DungCuYTe}}" >Dụng cụ y tế</option>
    			@endif
              </select>
              
          </div> --}}

        <button type="submit" name="addmedicine" class="btn btn-primary">Thêm</button>
      </form>
</div>
@endsection
