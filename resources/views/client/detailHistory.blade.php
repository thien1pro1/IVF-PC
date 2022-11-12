
@extends('layouts.client')
@section('content')
<section class="inner-banner py-5">
  <style>
    .inner-banner {
      background-image: url(https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/banner4.jpg);
    }
  </style>
  <div class="w3l-breadcrumb py-lg-5">
    <div class="container pt-4 pb-sm-4 AboutPageBanner">
                  <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
        Detail history</h4>
      
                  <ul class="breadcrumbs-custom-path AllBreadcrumbs">
        <a href="https://wp.w3layouts.com/dentition" rel="nofollow">Home</a>&nbsp;&nbsp;&#187;&nbsp;&nbsp;History      </ul>
          </div>
  </div>
</section>


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
    <h2>Chi tiết ngày {{$book->register_date}}</h2>





        <div class="form-group col-6" style="float: right">
          <label for="c1">Anh</label>
          <input type="text" class="form-control" id="c1" readonly name="hus_name" value="{{$book->hus_name}}" >
          
        </div>
        <div class="form-group col-6">
          <label for="c2">Chị</label>
          <input type="text" class="form-control" id="c2" readonly name="wife_name" value="{{$book->wife_name}}" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c3">Ngày sinh chồng</label>
            <input type="date" class="form-control" id="c3" readonly name="hus_birthday" value="{{$book->hus_birthday}}"  >
        </div>
        <div class="form-group col-6">
            <label for="c4">Ngày sinh vợ</label>
            <input type="date" class="form-control" id="c4" readonly value="{{$book->wife_birthday}}"  name="wife_birthday" >
        </div>
        <div class="form-group col-6" style="float: right">
            <label for="c5">Email</label>
            <input type="email" class="form-control" id="c5" readonly value="{{$book->email}}"  name="email" >
        </div>
        <div class="form-group col-6">
            <label for="c6">Số điện thoại</label>
            <input type="text" class="form-control" id="c6" readonly value="{{$book->phone}}"  name="phone" >
        </div>

        <div class="form-group ">
            <label for="c9">Ghi chú</label>
            <textarea rows="5" resize="none" type="date" readonly class="form-control" id="c9" value="{{$book->message}}"  name="message" ></textarea>
        </div>

        <div class="form-group">
            <label for="c12">Kết quả</label>
            <textarea class="form-control" id="c12" readonly value="{{$book->result}}"  name="result" ></textarea>
        </div>

 
    
</div>
@endsection