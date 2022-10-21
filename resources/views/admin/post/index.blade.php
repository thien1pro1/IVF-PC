@extends('layouts.admin')
@section('content')
<div class="container">
      @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
    <a class="btn btn-success  " href="{{route('post.create')}}">Thêm bài đăng</a>

<table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Tiêu đề</th>
         <th scope="col">Lượt xem</th>
      <!--    <th scope="col">Lượt xem tháng</th> -->
        <th scope="col">Hình ảnh</th>
        <th scope="col">Mô tả ngắn</th>
        <th scope="col">Thuộc danh mục</th>
        <th scope="col">Quản lý</th>
        
      </tr>
    </thead>
    <tbody>





        @foreach($allPost as $post)

      <tr>
        <td scope="row">{{$post->id}}</td>
         <td scope="row">{{$post->title}}</td>
          <td scope="row">{{$post->views}}</td>

         <td scope="row"><img width="200px" src="{{asset('uploads/'.$post->image)}}"></td>
         <td scope="row">{!!$post->short_Desc!!}</td>
         <td scope="row">{{$post->category->categogyName}}</td>
        
            <td>
              <a href="{{route('post.edit',[$post->id])}}" class="btn btn-primary" style="float:right">Sửa</a>
              <form action="{{route('post.destroy',[$post->id])}}" method="POST">
                @method('DELETE')
                @csrf
                <button onclick="return confirm('Bạn muốn xóa danh mục {{$post->title}}?')" class="btn btn-danger">Xóa</button>
                
              </form>
            </td>

      </tr>
      @endforeach
    </tbody>


    <div class="card">
      <div class="table-responsive">
        <table class="table align-items-center mb-0">
          <thead>
            <tr>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Author</th>
              <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Function</th>
              <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Technology</th>
              <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Employed</th>
              <th class="text-secondary opacity-7"></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                  <div>
                    <img src="https://demos.creative-tim.com/soft-ui-design-system-pro/assets/img/team-2.jpg" class="avatar avatar-sm me-3">
                  </div>
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">John Michael</h6>
                    <p class="text-xs text-secondary mb-0">john@creative-tim.com</p>
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">Manager</p>
                <p class="text-xs text-secondary mb-0">Organization</p>
              </td>
              <td class="align-middle text-center text-sm">
                <span class="badge badge-sm badge-success">Online</span>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
              </td>
              <td class="align-middle">
                <a href="javascript:;" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                  Edit
                </a>
              </td>
            </tr>
    
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                  <div>
                    <img src="https://demos.creative-tim.com/soft-ui-design-system-pro/assets/img/team-3.jpg" class="avatar avatar-sm me-3">
                  </div>
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">Alexa Liras</h6>
                    <p class="text-xs text-secondary mb-0">alexa@creative-tim.com</p>
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">Programator</p>
                <p class="text-xs text-secondary mb-0">Developer</p>
              </td>
              <td class="align-middle text-center text-sm">
                <span class="badge badge-sm badge-secondary">Offline</span>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">11/01/19</span>
              </td>
              <td class="align-middle">
                <a href="#!" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                  Edit
                </a>
              </td>
            </tr>
    
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                  <div>
                    <img src="https://demos.creative-tim.com/soft-ui-design-system-pro/assets/img/team-4.jpg" class="avatar avatar-sm me-3">
                  </div>
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">Laurent Perrier</h6>
                    <p class="text-xs text-secondary mb-0">laurent@creative-tim.com</p>
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">Executive</p>
                <p class="text-xs text-secondary mb-0">Projects</p>
              </td>
              <td class="align-middle text-center text-sm">
                <span class="badge badge-sm badge-success">Online</span>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">19/09/17</span>
              </td>
              <td class="align-middle">
                <a href="#!" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                  Edit
                </a>
              </td>
            </tr>
    
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                  <div>
                    <img src="https://demos.creative-tim.com/soft-ui-design-system-pro/assets/img/team-3.jpg" class="avatar avatar-sm me-3">
                  </div>
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">Michael Levi</h6>
                    <p class="text-xs text-secondary mb-0">michael@creative-tim.com</p>
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">Programator</p>
                <p class="text-xs text-secondary mb-0">Developer</p>
              </td>
              <td class="align-middle text-center text-sm">
                <span class="badge badge-sm badge-success">Online</span>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">24/12/08</span>
              </td>
              <td class="align-middle">
                <a href="#!" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                  Edit
                </a>
              </td>
            </tr>
    
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                  <div>
                    <img src="https://demos.creative-tim.com/soft-ui-design-system-pro/assets/img/team-2.jpg" class="avatar avatar-sm me-3">
                  </div>
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">Richard Gran</h6>
                    <p class="text-xs text-secondary mb-0">richard@creative-tim.com</p>
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">Manager</p>
                <p class="text-xs text-secondary mb-0">Executive</p>
              </td>
              <td class="align-middle text-center text-sm">
                <span class="badge badge-sm badge-secondary">Offline</span>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">04/10/21</span>
              </td>
              <td class="align-middle">
                <a href="#!" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                  Edit
                </a>
              </td>
            </tr>
    
            <tr>
              <td>
                <div class="d-flex px-2 py-1">
                  <div>
                    <img src="https://demos.creative-tim.com/soft-ui-design-system-pro/assets/img/team-4.jpg" class="avatar avatar-sm me-3">
                  </div>
                  <div class="d-flex flex-column justify-content-center">
                    <h6 class="mb-0 text-xs">Miriam Eric</h6>
                    <p class="text-xs text-secondary mb-0">miriam@creative-tim.com</p>
                  </div>
                </div>
              </td>
              <td>
                <p class="text-xs font-weight-bold mb-0">Programtor</p>
                <p class="text-xs text-secondary mb-0">Developer</p>
              </td>
              <td class="align-middle text-center text-sm">
                <span class="badge badge-sm badge-secondary">Offline</span>
              </td>
              <td class="align-middle text-center">
                <span class="text-secondary text-xs font-weight-bold">14/09/20</span>
              </td>
              <td class="align-middle">
                <a href="#!" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                  Edit
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>






    <div class="row mt-4">
      <div class="col-12">
      <div class="card mb-4">
      <div class="card-header pb-0 p-3">
      <h6 class="mb-1">Projects</h6>
      <p class="text-sm">Architects design houses</p>
      </div>
      <div class="card-body p-3">
      <div class="row">
      <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
      <div class="card card-blog card-plain">
      <div class="position-relative">
      <a class="d-block shadow-xl border-radius-xl">
      <img src="../../../assets/img/home-decor-1.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
      </a>
      </div>
      <div class="card-body px-1 pb-0">
      <p class="text-gradient text-dark mb-2 text-sm">Project #2</p>
      <a href="javascript:;">
      <h5>
      Modern
      </h5>
      </a>
      <p class="mb-4 text-sm">
      As Uber works through a huge amount of internal management turmoil.
      </p>
      <div class="d-flex align-items-center justify-content-between">
      <button type="button" class="btn btn-outline-primary btn-sm mb-0">View Project</button>
      <div class="avatar-group mt-2">
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
      <img alt="Image placeholder" src="../../../assets/img/team-1.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
      <img alt="Image placeholder" src="../../../assets/img/team-2.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
      <img alt="Image placeholder" src="../../../assets/img/team-3.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
      <img alt="Image placeholder" src="../../../assets/img/team-4.jpg">
      </a>
      </div>
      </div>   
      </div>
      </div>
      </div>
      <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
      <div class="card card-blog card-plain">
      <div class="position-relative">
      <a class="d-block shadow-xl border-radius-xl">
      <img src="../../../assets/img/home-decor-2.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-lg">
      </a>
      </div>
      <div class="card-body px-1 pb-0">
      <p class="text-gradient text-dark mb-2 text-sm">Project #1</p>
      <a href="javascript:;">
      <h5>
      Scandinavian
       </h5>
      </a>
      <p class="mb-4 text-sm">
      Music is something that every person has his or her own specific opinion about.
      </p>
      <div class="d-flex align-items-center justify-content-between">
      <button type="button" class="btn btn-outline-primary btn-sm mb-0">View Project</button>
      <div class="avatar-group mt-2">
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
      <img alt="Image placeholder" src="../../../assets/img/team-3.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
      <img alt="Image placeholder" src="../../../assets/img/team-4.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
      <img alt="Image placeholder" src="../../../assets/img/team-1.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
      <img alt="Image placeholder" src="../../../assets/img/team-2.jpg">
      </a>
      </div>
      </div>
      </div>
      </div>
      </div>
      <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
      <div class="card card-blog card-plain">
      <div class="position-relative">
      <a class="d-block shadow-xl border-radius-xl">
      <img src="../../../assets/img/home-decor-3.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
      </a>
      </div>
      <div class="card-body px-1 pb-0">
      <p class="text-gradient text-dark mb-2 text-sm">Project #3</p>
      <a href="javascript:;">
      <h5>
      Minimalist
      </h5>
      </a>
      <p class="mb-4 text-sm">
      Different people have different taste, and various types of music.
      </p>
      <div class="d-flex align-items-center justify-content-between">
      <button type="button" class="btn btn-outline-primary btn-sm mb-0">View Project</button>
      <div class="avatar-group mt-2">
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
      <img alt="Image placeholder" src="../../../assets/img/team-4.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
      <img alt="Image placeholder" src="../../../assets/img/team-3.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
      <img alt="Image placeholder" src="../../../assets/img/team-2.jpg">
      </a>
      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
      <img alt="Image placeholder" src="../../../assets/img/team-1.jpg">
      </a>
       </div>
      </div>
      </div>
      </div>
      </div>
      <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
      <div class="card h-100 card-plain border">
      <div class="card-body d-flex flex-column justify-content-center text-center">
      <a href="javascript:;">
      <i class="fa fa-plus text-secondary mb-3"></i>
      <h5 class=" text-secondary"> New project </h5>
      </a>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
@endsection
