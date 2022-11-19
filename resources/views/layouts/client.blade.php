<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IVF</title>
    <!-- google font -->
    <link href="//fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="{{asset('frontend/css/style.css')}}">
    <link href="//fonts.googleapis.com/css2?family=Hind:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css2?family=Libre+Baskerville:wght@400;700&display=swap" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

</head>
<body>
     <!-- header -->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="{{url('/')}}">
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
                            <a class="nav-link" aria-current="page" href="{{url('/client/home')}}">Trang chủ</a>
                        </li>
                           <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="" id="navbarScrollingDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Về chúng tôi <i class="fas fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                 <li>
                                    <a class="dropdown-item" href="{{url('/client/post/5?_token=VtJ6VduKDxar5uDtMk1yK0HAK0wC7YDNy0iZ4fWz')}}">Câu chuyện về Khoa Hiếm Muộn IVF Phương Châu</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{url('/client/post/6?_token=VtJ6VduKDxar5uDtMk1yK0HAK0wC7YDNy0iZ4fWz')}}">Thông điệp từ nhà sáng lập</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/7?_token=VtJ6VduKDxar5uDtMk1yK0HAK0wC7YDNy0iZ4fWz')}}">Hệ thống tập đoàn y tế Phương Châu</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/8?_token=VtJ6VduKDxar5uDtMk1yK0HAK0wC7YDNy0iZ4fWz')}}">Sứ mệnh - Tầm nhìn - Giá trị cốt lõi - Slogan Mẹ Tròn Con Vuông</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/9?_token=VtJ6VduKDxar5uDtMk1yK0HAK0wC7YDNy0iZ4fWz')}}">Sơ đồ tổ chức</a>
                                </li>

                                  <li>
                                    <a class="dropdown-item" href="{{url('/client/post/10?_token=VtJ6VduKDxar5uDtMk1yK0HAK0wC7YDNy0iZ4fWz')}}">Trách nhiệm với xã hội của Phương Châu</a>
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
                                    <a class="dropdown-item" href="{{url('/ve-chung-toi')}}">Câu chuyện về Khoa Hiếm Muộn IVF Phương Châu</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{url('/ve-chung-toi')}}">Thông điệp từ nhà sáng lập</a>
                                </li>

                                  <li>
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
                                </li>

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

                       <!--  <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
                        </li> -->
                    </ul>
                    <form action="error.html" method="GET" class="d-flex search-header">
                        <input class="form-control" type="search" placeholder="Bạn muốn tìm..." aria-label="Search"
                            required>
                        <button class="btn btn-style" type="submit"><i class="fas fa-search"></i></button>
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
                            <h6 class="footer-title-29">About</h6>
                            <li><a href="services.html">Services</a></li>
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
                            <h6 class="footer-title-29">Dentition</h6>
                            <li><a href="#doctor">Dr. John Doe</a></li>
                            <li><a href="#doctor">Dr. Martin Ker</a></li>
                            <li><a href="#doctor">Dr. Alexander</a></li>
                            <li><a href="#doctor">Dr. Eliz Wilson</a></li>
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