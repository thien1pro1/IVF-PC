<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IVF</title>
    <!-- google font -->
    <link href="{{asset('frontend/css/css1.css')}}"
        rel="stylesheet">
    <!-- Template CSS Style link -->
    
    <link rel="stylesheet" href="{{asset('frontend/css/style.css')}}">
    <link href="{{asset('frontend/css/css2.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/css3.css')}}" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="{{asset('frontend/css/css5.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

</head>
<body>

     <!-- header -->

    <header id="site-header" class="fixed-top">
        
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="{{url('/client/home')}}">
                    <i ></i>IVF PHƯƠNG CHÂU
                </a>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav ms-auto me-2 my-2 my-lg-0 navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="{{url('/client/home')}}">Home</a>
                        </li>
                        <!-- Button trigger modal -->

                         <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" aria-current="page"  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">HỎI ĐÁP BÁC SĨ</a>
                        </li>



                           <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="" id="navbarScrollingDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Về chúng tôi <i class="fas fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                 <li>
                                    <a class="dropdown-item" href="{{url('/client/post/9')}}">Câu chuyện về Khoa Hiếm Muộn IVF Phương Châu</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{url('/client/post/8')}}">Thông điệp từ nhà sáng lập</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/10')}}">Hệ thống tập đoàn y tế Phương Châu</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/11')}}">Sứ mệnh - Tầm nhìn - Giá trị cốt lõi - Slogan Mẹ Tròn Con Vuông</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/12')}}">Sơ đồ tổ chức</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/13')}}">Trách nhiệm với xã hội của Phương Châu</a>
                                </li>

                            </ul>
                        </li>
                          <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Hướng dẫn <i class="fas fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                 <li>
                                    <a data-bs-toggle="modal"  data-bs-target="#staticBackdrop" class="dropdown-item" href="{{url('/ve-chung-toi')}}">Tra cứu hồ sơ và lịch sử khám</a>
                                </li>


                                   <!-- Button trigger modal -->

                                <li>
                                    <a class="dropdown-item" href="{{route('page.service')}}">Dịch vụ</a>
                                </li>

                                 <!--  <li>
                                    <a class="dropdown-item" href="{{url('/ve-chung-toi')}}">Hệ thống tập đoàn y tế Phương Châu</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/ve-chung-toi')}}">Sứ mệnh - Tầm nhìn - Giá trị cốt lõi - Slogan Mẹ Tròn Con Vuông</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/ve-chung-toi')}}">Sơ đồ tổ chức</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/ve-chung-toi')}}">Hồ sơ bệnh án</a>
                                </li> -->

                            </ul>
                        </li>
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Thông tin <i class="fas fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                             
                                
                                @foreach($all_category_client as $cate)
                                    <li>
                                        {{-- @php
                                        var_dump($cate)->id;
                                        return;
                                @endphp  --}}
                                    <form method="GET" action="{{route('page.category',[$cate->id])}}">
                                        @csrf
                                        <button class="dropdown-item" type="submit">{{$cate->categogyName}}</button>
                                        
                                        {{-- <a class="dropdown-item" href="{{route('page.category',[$cate->id])}}">{{$cate->categogyName}}</a> --}}
                                    </form>
                                        
                                    </li>
                                @endforeach
                                
                            </ul>
                        </li>

                    
                    </ul>
                    <form action="{{('/client/search')}}" method="GET" class="d-flex search-header">
                        <input name="keywords" class="form-control" type="search" placeholder="Bạn muốn tìm..." aria-label="Search"
                            required>
                        <button name="timkiem" class="btn btn-style" type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>

                <!-- toggle switch for light and dark theme -->
                <div class="cont-ser-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
    <!-- //header -->
{{-- @foreach($all_category_client as $cate)
<li>

    {{$cate->categoryName}}
</li>

     
@endforeach --}}
     @yield('content')

    <!-- footer -->
     <!-- footer -->

    <footer class="w3l-footer-29-main">
        <div class="footer-29 pt-5 pb-4">
            <div class="container pt-md-4">
                <div class="row footer-top-29">
                    <div class="col-md-5 footer-list-29 pe-xl-5">
                        <h6 class="footer-title-29">Contact Info </h6>
                        <p class="mb-2 pe-xl-5">Address : 300 Nguyễn Văn Cừ nối dài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ
                        </p>
                        <p class="mb-2">Phone Number : <a href="tel:+1(21) 234 4567">1900 5454 66</a></p>
                        <p class="mb-2">Email : <a href="mailto:phoanghoc.work@gmail.com">info@phuongchau.com</a></p>
                    </div>
                    <div class="col-md-2 col-4 footer-list-29 mt-md-0 mt-4">
                        <ul>
                            <h6 class="footer-title-29">Trang</h6>
                            <li><a href="services.html">Dịch vụ</a></li>
                            <li><a href="about.html">Special Offers</a></li>
                            <li><a href="about.html">Orthodontics</a></li>
                            <li><a href="about.html">About Us</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-3 col-4 ps-lg-5 ps-md-4 footer-list-29 mt-md-0 mt-4">
                        <ul>
                            <h6 class="footer-title-29">Explore</h6>
                            <li><a href="blog.html">Blog Posts</a></li>
                            <li><a href="#privacy">Privacy policy</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li><a href="#license">License & uses</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-2 col-4 footer-list-29 mt-md-0 mt-4">
                        <ul>
                            <h6 class="footer-title-29">Bác sĩ</h6>
                            <li><a href="#doctor">BS. Võ Huỳnh Tiến</a></li>
                            <li><a href="#doctor">BS. CKII. Dư Huỳnh Hồng Ngọc</a></li>
                            <li><a href="#doctor">BS. Quách Văn Thanh</a></li>
                            <li><a href="#doctor">BS. Phạm Hoàng Học</a></li>
                        </ul>
                    </div>
                </div>
                <!-- copyright -->
                <p class="copy-footer-29 text-center pt-lg-2 mt-5 pb-2">© 2022 Dentition. All rights reserved. Design by
                    <a href="#" target="_blank">
                        Hoc</a></p>
                <!-- //copyright -->
            </div>
        </div>

        <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>





<!-- Modal tra cuu ho so benh an -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
   
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <section class="w3l-content-sec py-5">
  <div class="container py-md-5 py-4 AppointmentPageAppointmentForm">
    <div class="form-content ml-sm-left mx-auto">
      <h3 class="title-style text-center mb-5">
        <span>Tra cứu</span> Hồ sơ & Lịch sử khám
      </h3>

      
      <form  method="GET" action="{{route('sendHistory')}}" >
        @method('GET')
                        @csrf
        <div class="row mb-1">

       

          

          <div class="col-md-12 mb-4">
            <label for="inputtextnumber"
              class="form-label">Số điện thoại</label>
            <input type="phone" name="phone" id="inputtextnumber"
              placeholder="Nhập số điện thoại..." required="">
          </div>
          <div class="col-md-12 mb-4">
            <label for="inputtextnumber"
              class="form-label">Email</label>
            <input type="email" name="email" id="inputtextnumber"
              placeholder="Nhập email" required="">
          </div>



        </div>
        <div class="text-end">
          <button type="submit" name="datlich" class="btn btn-style mt-sm-3">Tra cứu</button>
        </div>
        </div>



      </form>

    </div>
  </div>
</section>
      </div>
     
    </div>
  </div>
</div>










<!-- Modal cau hoi -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
         
<section class="w3l-content-sec py-5">
  <div class="container py-md-5 py-4 AppointmentPageAppointmentForm">
    <div class="form-content ml-sm-left mx-auto">
      <h3 class="title-style text-center mb-5">
        Hỏi đáp Bác sĩ <span>IVF PC</span>
      </h3>

      
      <form autocomplete="off" method="POST" action="{{route('ask.store')}}" enctype="multipart/form-data">
        @method('POST')
                        @csrf
        <div class="row mb-1">

          <div class="col-md-12 mb-4">
            <label for="inputtextname" class="form-label">Họ và tên</label>
            <input type="text" name="name" id="inputtextname"
               required="">
          </div>
          <div class="col-md-12 mb-4">
            <label for="inputtextnumber" class="form-label">Năm sinh</label>
            <input type="text" name="years" id="dateofbirth" required="">
          </div>
          <div class="col-md-12 mb-4">
            <label for="inputtextnumber"
              class="form-label">Giới tính</label>
              <select name="gender">
                <option value="0">Nam</option>
                <option value="1">Nữ</option>

              </select>
          </div>

          

          <div class="col-md-12 mb-4">
            <label for="inputtextnumber"
              class="form-label">Số điện thoại</label>
            <input type="phone" name="phone" id="inputtextnumber"
              placeholder="Nhập số điện thoại..." required="">
          </div>
          <div class="col-md-12 mb-4">
            <label for="inputtextnumber"
              class="form-label">Email</label>
            <input type="email" name="email" id="inputtextnumber"
              placeholder="Nhập email" required="">
          </div>





        

       

          <div  class="col-md-12 mb-12">
            <label for="inputtextname" class="form-label">Câu hỏi dành cho bác sĩ</label>
            <textarea  rows="5" style= "width: 100%;border: 2px solid var(--border-color-light) ;    border-radius: 4px; " type="text" name="content" id="inputtextname"
               required=""></textarea>
          </div>


        </div>
        <div class="text-end">
          <button type="submit" name="datlich" class="btn btn-style mt-sm-3">Gửi câu hỏi</button>
        </div>



          

      
        </div>



      </form>

    </div>
  </div>
</section>


     
    
    </div>
  </div>
</div>
    {{-- <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "102855539327882");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v15.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script> --}}
    </footer>
    <!-- //footer -->
    <!-- //footer -->

    <!-- Js scripts -->
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fas fa-level-up-alt" aria-hidden="true"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- //move top -->

    <!-- common jquery plugin -->
    <script src="{{asset('frontend/js/jquery-3.3.1.min.js')}}"></script>
    <!-- //common jquery plugin -->

    <!-- for services carousel slider -->
    <script src="{{asset('frontend/js/owl.carousel.js')}}"></script>
    <script>
        $(document).ready(function () {
            $('.owl-three').owlCarousel({
                loop: true,
                stagePadding: 20,
                margin: 20,
                autoplay: true,
                autoplayTimeout: 5000,
                autoplaySpeed: 1000,
                autoplayHoverPause: false,
                nav: false,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 2
                    },
                    991: {
                        items: 3
                    },
                    1200: {
                        items: 4
                    }
                }
            })
        })
    </script>
    <!-- //for services carousel slider -->

    <!-- theme switch js (light and dark)-->
    <script src="{{asset('frontend/js/theme-change.js')}}"></script>
    <!-- //theme switch js (light and dark)-->

    <!-- MENU-JS -->
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!-- bootstrap -->
    <script src="{{asset('frontend/js/bootstrap.min.js')}}"></script>
    <!-- //bootstrap -->
    <!-- //Js scripts -->
</body>


</html>