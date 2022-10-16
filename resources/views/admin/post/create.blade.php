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
    <h2>Thêm bài đăng</h2>
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


                        <form autocomplete="off" method="POST" action="{{route('post.store')}}" enctype="multipart/form-data">
                        @method('POST')
                        @csrf
                        <div class="form-group">
                            <label for="title">Tiêu đề bài viết</label>
                            <input type="text" placeholder="" class="form-control" name="title">
                            <label for="title">Lượt xem</label>
                            <input type="text" placeholder="" class="form-control" name="views">
                            
                            <!-- <label for="title">Lượt xem tháng</label>
                            <input type="text" placeholder="Thêm lượt xem tháng..." class="form-control" name="viewsm"> -->

                            <label for="title">Hình ảnh</label>
                            <input type="file"class="form-control" name="image">


                            <label for="title">Mô tả ngắn</label>
                            <textarea name="short_desc" id="ckeditor_shortdesc" placeholder="Mô tả ngắn..." rows="5" class="form-control" style="resize: none;"></textarea>

                            <label for="title">Nội dung </label>
                            <textarea name="content" id="ckeditor_desc" placeholder="Nội dung..." rows="5" class="form-control" style="resize: none;"></textarea>

                            <label for="title">Danh mục bài viết </label>
                            <select name="categogy_id" class="form-control">
                                @foreach($categogy as $cate)
                                <option value="{{$cate->id}}"> {{$cate->categogyName}}</option>
                                @endforeach
                
                            </select>




                            <input type="submit" name="themdanhmuc" class="btn btn-primary mt-2" value="Thêm bài viết">
                        </div>
                    </form>


    
</div>
@endsection
