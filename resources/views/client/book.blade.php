
@extends('layouts.client')
@section('content')
<!-- //w3l-header -->

<section class="w3l-about-breadcrumb">
    <div class="breadcrumb-bg breadcrumb-bg-about py-5">
        <div class="container py-lg-5 py-md-3">
            <h2 class="title">Chúng tôi</h2>
        </div>
    </div>
</section>
<section class="w3l-breadcrumb">
    <div class="container">
        <ul class="breadcrumbs-custom-path">
            <li><a href="#url">Trang chủ</a></li>
            <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Chúng tôi</li>
        </ul>
    </div>
</section>
<section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Đặt lịch khám</h2>

              <form autocomplete="off" method="POST" action="{{route('post.store')}}" enctype="multipart/form-data">
                        @method('POST')
                        @csrf
                        <div class="form-group">
                            <label for="title">Họ và tên</label>
                            <input type="text" placeholder="" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <label for="title">Năm sinh</label>
                                <section class="w-100 p-4 d-flex justify-content-center pb-4">
      <div class="form-outline datepicker" style="width: 22rem;">
        <input type="text" class="form-control" id="exampleDatepicker1" />
        <label for="exampleDatepicker1" class="form-label">Select a date</label>
      </div>
    </section>
                        </div>
                        <div class="form-group">
                            <label for="title">Địa chỉ</label>
                            <input type="text" placeholder="" class="form-control" name="address">
                        </div>
                        <div class="form-group">
                            <label for="title">Số điện thoại</label>
                            <input type="text" placeholder="Tiêu đề bài viết..." class="form-control" name="title">
                        </div>
                        <div class="form-group">
                            <label for="title">Họ và tên</label>
                            <input type="text" placeholder="Tiêu đề bài viết..." class="form-control" name="title">
                        </div>


                            <label for="title">năm sinh</label>
                            <input type="text" placeholder="Tiêu đề bài viết..." class="form-control" name="title">
                            <label for="title">Họ và tên</label>
                            <input type="text" placeholder="Tiêu đề bài viết..." class="form-control" name="title">
                            <label for="title">Họ và tên</label>
                            <input type="text" placeholder="Tiêu đề bài viết..." class="form-control" name="title">
                            <label for="title">Lượt xem</label>
                            <input type="text" placeholder="Thêm lượt xem..." class="form-control" name="views">
                            
                            <!-- <label for="title">Lượt xem tháng</label>
                            <input type="text" placeholder="Thêm lượt xem tháng..." class="form-control" name="viewsm"> -->

                            <label for="title">Hình ảnh</label>
                            <input type="file"class="form-control" name="image">


                            <label for="title">Mô tả ngắn</label>
                            <textarea name="short_desc" id="ckeditor_shortdesc" placeholder="Mô tả ngắn..." rows="5" class="form-control" style="resize: none;"></textarea>

                            <label for="title">Nội dung </label>
                            <textarea name="content" id="ckeditor_desc" placeholder="Nội dung..." rows="5" class="form-control" style="resize: none;"></textarea>

                            <label for="title">Danh mục bài viết </label>
                            <select name="post_category_id" class="form-control">

                
                            </select>




                            <input type="submit" name="themdanhmuc" class="btn btn-primary mt-2" value="Thêm bài viết">
                        </div>
                    </form>

            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection