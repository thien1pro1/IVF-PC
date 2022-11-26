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
    <h2>Cập nhập bài viết</h2>
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







<form autocomplete="off" method="POST" action="{{route('post.update',[$edit->id])}}" enctype="multipart/form-data">
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                            <label for="title">Tiêu đề bài viết</label>
                            <input type="text" value="{{$edit->title}}" class="form-control" name="title">

                             <label for="title">Lượt xem</label>
                            <input type="text" value="{{$edit->views}}" class="form-control" name="views">

                            <!-- <label for="title">Lượt xem tháng</label>
                            <input type="text" value="{{$edit->viewsm}}" class="form-control" name="viewsm">
 -->


                            <label for="title">Hình ảnh</label>
                            <input type="file"class="form-control" name="image">
                            <p><img width="200px" src="{{asset('/uploads/'.$edit->image)}}"></p>


                            <label for="title">Mô tả ngắn</label>
                            <textarea name="short_desc" id="ckeditor_shortdesc" rows="5" class="form-control" style="resize: none;">  {{$edit->short_Desc}}  </textarea>

                            <label for="title">Nội dung </label>
                            <textarea name="content" id="ckeditor_desc"  rows="5" class="form-control" style="resize: none;"> {{$edit->content}}   </textarea>

                            <label for="title">Danh mục bài viết </label>
                            <select name="categogy_id" class="form-control">
                                 @foreach($category as $key => $cate)
                                <option  {{$cate->id==$edit->category_id ?  'selected' : ''}} value="{{$cate->id}}">{{$cate->categogyName}}</option>
                                @endforeach

                               
                            </select>




                            <input type="submit" name="capnhatdanhmuc" class="btn btn-primary mt-2" value="Cập nhật bài viết">
                        </div>
                    </form>
@endsection