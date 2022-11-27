@extends('layouts.client')
@section('content')
 
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Blog store - Blog Category Bootstrap Responsive Website Template | Blog single post : W3layouts</title>

  <link href="//fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">

  <!-- Template CSS -->
  <link rel="stylesheet" href="{{asset('css/style-liberty.css')}}">

</head>

<body>


<script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
<script>
(function(){
    if(typeof _bsa !== 'undefined' && _bsa) {
        // format, zoneKey, segment:value, options
        _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
    }
})();
</script>
<script>
(function(){
if(typeof _bsa !== 'undefined' && _bsa) {
    // format, zoneKey, segment:value, options
    _bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
}
})();
</script>
<script>
(function(){
    if(typeof _bsa !== 'undefined' && _bsa) {
        // format, zoneKey, segment:value, options
        _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
    }
})();
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src='https://www.googletagmanager.com/gtag/js?id=G-98H8KRKT85'></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-98H8KRKT85');
</script>

<meta name="robots" content="noindex">
<body><link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
<!-- New toolbar-->
<style>
* {
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
}


#w3lDemoBar.w3l-demo-bar {
  top: 0;
  right: 0;
  bottom: 0;
  z-index: 9999;
  padding: 40px 5px;
  padding-top:70px;
  margin-bottom: 70px;
  background: #0D1326;
  border-top-left-radius: 9px;
  border-bottom-left-radius: 9px;
}

#w3lDemoBar.w3l-demo-bar a {
  display: block;
  color: #e6ebff;
  text-decoration: none;
  line-height: 24px;
  opacity: .6;
  margin-bottom: 20px;
  text-align: center;
}

#w3lDemoBar.w3l-demo-bar span.w3l-icon {
  display: block;
}

#w3lDemoBar.w3l-demo-bar a:hover {
  opacity: 1;
}

#w3lDemoBar.w3l-demo-bar .w3l-icon svg {
  color: #e6ebff;
}
#w3lDemoBar.w3l-demo-bar .responsive-icons {
  margin-top: 30px;
  border-top: 1px solid #41414d;
  padding-top: 40px;
}
#w3lDemoBar.w3l-demo-bar .demo-btns {
  border-top: 1px solid #41414d;
  padding-top: 30px;
}
#w3lDemoBar.w3l-demo-bar .responsive-icons a span.fa {
  font-size: 26px;
}
#w3lDemoBar.w3l-demo-bar .no-margin-bottom{
  margin-bottom:0;
}
.toggle-right-sidebar span {
  background: #0D1326;
  width: 50px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  color: #e6ebff;
  border-radius: 50px;
  font-size: 26px;
  cursor: pointer;
  opacity: .5;
}
.pull-right {
  float: right;
  position: fixed;
  right: 0px;
  top: 70px;
  width: 90px;
  z-index: 99999;
  text-align: center;
}
/* ============================================================
RIGHT SIDEBAR SECTION
============================================================ */

#right-sidebar {
  width: 90px;
  position: fixed;
  height: 100%;
  z-index: 1000;
  right: 0px;
  top: 0;
  margin-top: 60px;
  -webkit-transition: all .5s ease-in-out;
  -moz-transition: all .5s ease-in-out;
  -o-transition: all .5s ease-in-out;
  transition: all .5s ease-in-out;
  overflow-y: auto;
}


/* ============================================================
RIGHT SIDEBAR TOGGLE SECTION
============================================================ */

.hide-right-bar-notifications {
  margin-right: -300px !important;
  -webkit-transition: all .3s ease-in-out;
  -moz-transition: all .3s ease-in-out;
  -o-transition: all .3s ease-in-out;
  transition: all .3s ease-in-out;
}



@media (max-width: 992px) {
  #w3lDemoBar.w3l-demo-bar a.desktop-mode{
      display: none;

  }
}
@media (max-width: 767px) {
  #w3lDemoBar.w3l-demo-bar a.tablet-mode{
      display: none;

  }
}
@media (max-width: 568px) {
  #w3lDemoBar.w3l-demo-bar a.mobile-mode{
      display: none;
  }
  #w3lDemoBar.w3l-demo-bar .responsive-icons {
      margin-top: 0px;
      border-top: none;
      padding-top: 0px;
  }
  #right-sidebar,.pull-right {
      width: 90px;
  }
  #w3lDemoBar.w3l-demo-bar .no-margin-bottom-mobile{
      margin-bottom: 0;
  }
}
</style>


<!-- inner banner -->
<section class="inner-banner py-5">
  <style>
    .inner-banner {
      background-image: url(https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/banner4.jpg);
    }
  </style>
  <div class="w3l-breadcrumb py-lg-5">
    <div class="container pt-4 pb-sm-4 BlogSinglePageBanner">
                  <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
        {{$post->category->categogyName}}</h4>
      
                  <ul class="breadcrumbs-custom-path AllBreadcrumbs">
        <a href="{{url('/client/home')}}" rel="nofollow">Trang chủ</a>&nbsp;&nbsp;&#187;&nbsp;&nbsp;<a href="" rel="category tag">{{$post->category->categogyName}}</a> &nbsp;&nbsp;&#187;&nbsp;&nbsp; {{$post->title}}    </ul>

       
          </div>
  </div>
</section>
<!-- //inner banner -->
             @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif
<div class="w3l-homeblock1 py-5">
    <div class="container py-lg-4 py-md-3">
        <!-- block -->
        <div class="most-recent">
            <div class="row">
                <div class="col-lg-8">
                    <div class="blog-single-post">
                        <div class="blo-singl mb-4">
                            <ul class="blog-single-author-date  d-flex align-items-center">
                                
                              
                                <li>
                                    <h1>{{$post->title}}</h1>
                                    <a href="#reciepe" class="receipe orange"></a>
                                </li>
                            </ul>
                            <ul class="share-post">
                                <li class="facebook">
                                    <a href="#link" title="Facebook">
                                        <span class="fa fa-facebook" aria-hidden="true"></span>
                                    </a>
                                </li>
                                <li class="twitter">
                                    <a href="#link" title="Twitter">
                                        <span class="fa fa-twitter" aria-hidden="true"></span>
                                    </a>
                                </li>
                                <li class="google">
                                    <a href="#link" title="Google">
                                        <span class="fa fa-google" aria-hidden="true"></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- <div class="cooked-recipe-info mb-4">
                            <div class="cook-grid-left">
                                <div class="cook-grid-inner">
                                    <span class="fa fa-cutlery"></span>
                                    <div class="cook-grid-inner-info">
                                        <p>Yields</p>
                                        <h4>8 servings</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="cook-grid-right">
                                <div class="cook-grid-inner">
                                    <span class="fa fa-clock-o"></span>
                                    <div class="cook-grid-inner-info">
                                        <p>Prep time</p>
                                        <h4>30 mins</h4>
                                    </div>
                                </div>
                                <div class="cook-grid-inner">
                                    <span class="fa fa-clock-o"></span>
                                    <div class="cook-grid-inner-info">
                                        <p>Cook time</p>
                                        <h4>3 hrs</h4>
                                    </div>
                                </div>
                                <div class="cook-grid-inner">
                                    <span class="fa fa-clock-o"></span>
                                    <div class="cook-grid-inner-info">
                                        <p>Total time</p>
                                        <h4>3 : 30 mins</h4>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>



               {!!$post->content!!}

                  

                  <!--   <div class="comments mt-5 pt-lg-5">
                        <h3 class="title-left mb-4">Bình luận</h3>
                        <div class="comments-grids">
                            <div class="media-grid">
                                <div class="media">
                                    <a class="com" href="#"><img src="{{asset('images/hoc.jpg')}}" class="img-fluid radius-image" width="100px" alt="placeholder image"></a>
                                    <div class="media-body comments-grid-right">
                                        <h5>Kim Yến</h5>
                                        <ul class="p-0">
                                            <li class="">Oct 4, 2022.
                                            </li>
                                            <li>
                                                <a href="#comment" class="text-primary">Reply</a>
                                            </li>
                                        </ul>
                                        <p>Mattis ut hendrerit non, facilisis eget mauris. Sed ultricies nec purus quis
                                            tempor. Phasellus ipsum bibendum eu nec purus quis tempor dolor set.</p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="media-grid even-grid">
                                <div class="media">
                                    <a class="com" href="#"><img src="{{asset('images/hoc.jpg')}}" class="img-fluid radius-image" width="100px" alt="placeholder image"></a>
                                    <div class="media-body comments-grid-right">
                                        <h5>Hoàng Học</h5>
                                        <ul class="p-0">
                                            <li class="">Oct 5, 2022.
                                            </li>
                                            <li>
                                                <a href="#comment" class="text-primary">Reply</a>
                                            </li>
                                        </ul>
                                        <p>Mattis ut hendrerit non, eget mauris. Sed ultricies nec purus quis
                                            tempor. Phasellus eu nec purus quis tempor.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="media-grid">
                                <div class="media">
                                    <a class="com" href="#"><img src="{{asset('images/hoc.jpg')}}" class="img-fluid radius-image" width="100px" alt="placeholder image"></a>
                                    <div class="media-body comments-grid-right">
                                        <h5>Đăng Thiên</h5>
                                        <ul class="p-0">
                                            <li class="">Oct 7, 2022.
                                            </li>
                                            <li>
                                                <a href="#comment" class="text-primary">Reply</a>
                                            </li>
                                        </ul>
                                        <p>Mattis ut hendrerit non, facilisis eget mauris. Sed ultricies nec purus quis
                                            tempor. Phasellus ipsum bibendum eu nec purus quis tempor.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->

                    <div class="reply mt-5 pt-lg-5" id="reply">
                        <h3 class="title-left py-3">Để lại phản hồi</h3>
                        <form action="{{route('feedback.store')}} " method="POST">
                          @csrf
                          <input type="hidden" name="post_id" value="{{$post->id}}">
                            <div class="form-group reply">
                                <textarea class="form-control" placeholder="Phản hồi của bạn"
                                    id="exampleFormControlTextarea1" rows="4" name = "content"></textarea>
                                <div class="input-grids row mt-sm-4 mt-3">

                                    <div class="form-group col-lg-6 mb-sm-4 mb-3">
                                        <input type="text" name="name" class="form-control" placeholder="Tên của bạn*"
                                            required="">
                                    </div>
                                    <div class="form-group col-lg-6 mb-sm-4 mb-3">
                                        <input type="email" name="email" class="form-control" placeholder="Email*"
                                            required="">
                                    </div>
                                </div>
                                <div class="text-right">
                                    <button class="btn btn-primary btn-style" type="submit">Gửi</button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>

                <div class="col-lg-4 item mt-lg-0 mt-4">
                    <div class="sticky">
                        <div class="sidebar-widget sidebar-blog-category">
                            <div class="author">
                                <div class="sidebar-title mb-4">
                                    <h3 class="title-left">Về chúng tôi</h3>
                                </div>
                                <div class="author-detalis">
                                    <a href="#author" class="author-image"><img src="{{asset('frontend/images/about4.png')}}"
                                            alt="author image" class="img-fluid"></a>
                                    <div class="author-info">
                                        <a href="#author-name" class="author-name">Tập Đoàn Y Tế Phương Châu</a>
                                        <a href="http://www.facebook.com/bvqtphuongchau" target="_blank" class="btn btn-outline-primary">Truy cập Fanpage </a>
                                    </div>
                                </div>
                                <p class="mt-2">Tập Đoàn Y Tế Phương Châu gồm 3 bệnh viện tại Cần Thơ, Sa Đéc (Đồng Tháp), Sóc Trăng và không ngừng hoàn thiện “sứ mệnh chăm sóc sức khỏe sinh sản toàn diện” cùng các gia đình. Hệ thống y tế Phương Châu hoạt động đầy đủ và kết nối chặt chẽ các chuyên khoa trong tầm soát sớm, chẩn đoán, điều trị bệnh: Sản-Phụ khoa, Nhi-Sơ sinh, Hiếm muộn, Nam khoa, Đa khoa, Thẩm mỹ…</p>
                                <div class="social text-center mt-3">
                                    <ul class="d-flex">
                                        <li class="mr-2">
                                            <a href="http://www.facebook.com/bvqtphuongchau" target="_blank" class="facebook"><span class="fab fa-facebook-f"
                                                    aria-hidden="true"></span></a>
                                        </li>
                                        <li class="mr-2">
                                            <a href="#" class="twitter"><span class="fab fa-twitter"
                                                    aria-hidden="true"></span></a>
                                        </li>
                                        <li class="mr-2">
                                            <a href="#" class="rss"><span class="fas fa-rss"
                                                    aria-hidden="true"></span></a>
                                        </li>
                                        <li class="">
                                            <a href="#" class="linkedin"><span class="fab fa-linkedin-in"
                                                    aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                     

                       
                       <!--  <div class="tweets mt-5">
                            <h3 class="title-left mb-3"></h3>
                            <ul class="blog-cat twitter-feed">
                                <li>
                                    <a href="#url"> @W3layouts help Developers, Designers, Website owners create
                                        Stunning Websites #design…
                                        <br><em class="twitter-date">Oct 4, 2020</em></a>
                                </li>
                                <li>
                                    <a href="#url">@W3layouts Delog starter just evolved. has acquired the
                                        ability to generate sitemaps in production… @gatsbyjs @NetlifyCMS
                                        <br><em class="twitter-date">Oct 4, 2020</em></a>
                                </li>
                                <li>
                                    <a href="#url"> @W3layouts help Developers, Designers, Website owners create
                                        Stunning Websites #design…
                                        <br><em class="twitter-date">Oct 4, 2020</em></a>
                                </li>
                            </ul>
                        </div> -->

                        <div class="sidebar-widget popular-posts">
                            <div class="sidebar-title mb-4">
                                <h3 class="title-left">Có thể bạn quan tâm</h3>
                            </div>
                             @foreach($post_related as $key => $new)

                            <article class="post">
                                <figure class="post-thumb"><img src="{{asset('uploads/'.$new->image)}}" class="img-fluid" alt="">
                                </figure>
                                <div class="text"><a href="{{route('page.post',[$new->id])}}"> {{$new->title}} </a>
                                    <div class="post-info">{{$new->updated_at}}</div>
                                </div>
                            </article>

                            @endforeach

                        </div>
                        
                        <div class="sidebar-widget sidebar-blog-category">
                            <div class="sidebar-title">
                                <h3 class="title-left mb-4">Chủ đề</h3>
                            </div>
                              @foreach($show_cate as $key => $showcate)
                            <ul class="blog-cat">
                                <li><a href="{{route('page.category',[$showcate->id])}}">{{$showcate->categogyName}}</a></li>
                                
                            </ul>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
            <!-- //block-->
        </div>
    </div>
</div>



  <!-- footer -->
  
  <!-- footer -->

  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
    &#10548;
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
  <!-- /move top -->

  <script src="assets/js/theme-change.js"></script><!-- theme switch js (light and dark)-->

  <script src="assets/js/jquery-3.3.1.min.js"></script><!-- default jQuery -->

  <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>

  <!-- libhtbox -->
  <script src="assets/js/lightbox-plus-jquery.min.js"></script>

  <!-- owlcarousel -->
  <script src="assets/js/owl.carousel.js"></script>
  <!-- script for banner typing text -->
  <script>
    function autoType(elementClass, typingSpeed) {
      var thhis = $(elementClass);
      thhis.css({
        "position": "relative",
        "display": "inline-block"
      });
      thhis.prepend('<div class="cursor" style="right: initial; left:0;"></div>');
      thhis = thhis.find(".text-js");
      var text = thhis.text().trim().split('');
      var amntOfChars = text.length;
      var newString = "";
      thhis.text("|");
      setTimeout(function () {
        thhis.css("opacity", 1);
        thhis.prev().removeAttr("style");
        thhis.text("");
        for (var i = 0; i < amntOfChars; i++) {
          (function (i, char) {
            setTimeout(function () {
              newString += char;
              thhis.text(newString);
            }, i * typingSpeed);
          })(i + 1, text[i]);
        }
      }, 1500);
    }

    $(document).ready(function () {
      // Now to start autoTyping just call the autoType function with the 
      // class of outer div
      // The second paramter is the speed between each letter is typed.   
      autoType(".type-js", 200);
    });
  </script>
  <!-- //script for banner typing text -->

  <!-- script for carousel slider -->
  <script>
    $(document).ready(function () {
      $("#owl-demo1").owlCarousel({
        loop: true,
        nav: false,
        margin: 30,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          767: {
            items: 2,
            nav: false
          },
          992: {
            items: 4,
            nav: false
          }
        }
      })
    })
  </script>
  <!-- //script for carousel slider -->

  <!-- disable body scroll which navbar is in active -->
  <script>
    $(function () {
      $('.navbar-toggler').click(function () {
        $('body').toggleClass('noscroll');
      })
    });
  </script>
  <!-- disable body scroll which navbar is in active -->

  <!--/MENU-JS-->
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
  <!--//MENU-JS-->

  <!-- bootstrap js -->
  <script src="assets/js/bootstrap.min.js"></script>

  
</body>

  </html>








@endsection
