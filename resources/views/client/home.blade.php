
@extends('layouts.client')

@section('content')

<!-- banner section -->
    <section class="w3l-main-slider" id="home">
        <div class="banner-content">
            <div id="demo-1">
                <div class="demo-inner-content">
                    <div class="container">

        
                        <div class="banner-info">
                            <p class="mb-1">Hạnh phúc của IVF Phương Châu</p>
                            <h3>MONG ƯỚC GẦN HƠN</h3>
                            <a class="btn btn-style btn-style-2 mt-sm-5 mt-4" href="{{route('book.create')}}">ĐẶT LỊCH HẸN KHÁM</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner section -->

    <!-- stats section -->
    <section class="w3-bottom-stats py-5">
        <div class="container py-md-5 py-4">
            <div class="row py-4">
                <div class="col-md-7 pe-lg-5">
                    <h5 class="text-new mb-4">Câu chuyện về Khoa Hiếm Muộn IVF Phương Châu
                    </h5>
                    <p class="mb-3">Cách nay gần 10 năm, Khoa Hiếm Muộn (IVF) Phương Châu ra đời trong bối cảnh BVQT Phương Châu trở thành BV tư nhân đầu tiên tại ĐBSCL được công nhận là cơ sở có đủ điều kiện thực hiện kỹ thuật Thụ tinh trong ống nghiệm vào tháng 6/2011
                    </p>
                    <p>IVF Phương Châu đã được trang bị cơ sở vật chất thuộc loại hiện đại bậc nhất Việt Nam và khu vực Đông Nam Á, trong đó có:</p>
                    <a href="{{url('/client/post/9')}}" class="btn btn-style btn-style-2 mt-lg-5 mt-4">Xem thêm</a>
                </div>
                <div class="col-md-5 text-md-center mt-md-0 mt-5">
                    <div class="counter">
                        <div class="timer count-title count-number" data-to="31500" data-speed="1500">31500</div>
                        <p class="count-text mt-sm-2">CẶP GIA ĐÌNH ĐƯỢC TƯ VẤN</p>
                    </div>
                    <div class="counter mt-sm-5 mt-4">
                        <div class="timer count-title count-number" data-to="54" data-speed="1500">54%</div>
                        <p class="count-text mt-sm-2">TỈ LỆ THỤ THAI THÀNH CÔNG</p>
                    </div>
                    <div class="counter mt-sm-5 mt-4">
                        <div class="timer count-title count-number" data-to="3000" data-speed="1500">3000</div>
                        <p class="count-text mt-sm-2">EM BÉ ĐƯỢC CHÀO ĐỜI</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //stats section -->


    <!-- home block 1 -->
    <section class="w3l-servicesblock py-5">
        <div class="container py-md-5 py-4">
            <h3 class="title-style mb-md-5 mb-4"><span>KHỞI ĐẦU.. CHO MỘT HÀNH TRÌNH LÀM MẸ</span>
                    </h3>
            <div class="row pb-xl-5 align-items-center">
                <div class="col-lg-6 position-relative home-block-3-left pb-lg-0 pb-5">
                    <div class="position-relative">
                        <img src="{{asset('frontend/images/1.jpg')}}" alt="" class="img-fluid radius-image">
                    </div>
                    <div class="imginfo__box">
                        <h6 class="imginfo__title">TƯ VẤN MIỄN PHÍ  </h6>
                        <p>Phương Châu xin chào!<br> Chúng tôi sẽ luôn ở đây, bên cạnh và đồng hành <br> cùng thai kỳ của bạn. </p>
                        <a href="tel:http://1900 54 54 66"><i class="fas fa-phone-alt"></i> 1900 54 54 66</a>

                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 offset-xl-1 mt-lg-0 mt-5 pt-lg-0 pt-5">
                    <h3 class="title-style mb-md-5 mb-4">ĐẶC TRƯNG SẢN KHOA PHƯƠNG CHÂU
                    </h3>
                    <p class="sub-para">"Sứ mệnh lớn của Phương Châu là tập trung vào an toàn Sản Khoa theo tiêu chuẩn Nhật Bản, luôn nâng niu và đề cao thiên chức người phụ nữ.".</p>
                    <p class="mt-4 pt-sm-2">Chúng tôi sẽ luôn ở đây, bên cạnh và đồng hành cùng thai kỳ của bạn. Từ những ngày đầu mang thai, chuyển dạ sinh đến giai đoạn phục hồi sau sinh, mẹ và bé sẽ được chăm sóc sức khỏe toàn diện, chu đáo theo tiêu chuẩn Nhật Bản.</p>
                    <p class="mt-4 pt-sm-2">Bên cạnh chăm lo về y tế, các gia đình còn được trải nghiệm những dịch vụ và tiện ích đặc trưng chỉ có tại các bệnh viện thuộc Tập đoàn Y tế Phương Châu.</p>
                        <a href="{{url('/client/post/14')}}" class="btn btn-style mt-5">Xem thêm</a>
                </div>

            </div>
        </div>
    </section>
    <!-- //home block 1 -->
    
   
    <!-- home block 2 -->

    <section class="about-section text-center pt-lg-5 pb-5">
        <div class="container pt-lg-5 pb-lg-5 pb-4">
            <h3 class="title-style text-center mb-5">CÁC GÓI <span>DỊCH VỤ</span> CỦA CHÚNG TÔI</h3>
            <div class="row justify-content-center">
                @foreach($services as $key => $service )
                <div class="col-lg-4 col-md-6">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                          <a href="{{route('page.post',[$service->id])}}">
                            <img  style=" border-radius: 10px;box-shadow: 5px 5px 5px silver" width="240" height="180" src="{{asset('uploads/'.$service->image)}}" />
                        </a>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a href="{{route('page.post',[$service->id])}}">{{$service->title}}</a></h5>
                            <!-- <p>{{substr($service->short_Desc,0,50)}}</p> -->



                           
                        </div>
                    </div>
                </div>
                @endforeach
               
            </div>
            <a href="{{route('page.service')}}" class="btn btn-style mt-5">Xem thêm</a>
        </div>
    </section>
    <!-- //home block 2 -->

    <!-- home block 3 with slider -->
    <section class="w3l-index5 py-5">
        <div class="container py-md-5 py-4">
            <h3 class="title-style text-center mb-5">Kiến thức  <span>Y Khoa</span></h3>
            <div class="inner-sec-w3layouts mt-md-5 mt-4">
                <div class="owl-three owl-carousel owl-theme">
                    @foreach ($new_post as $post)
                    <div class="item">
                        <div class="content-left-sec">
                            <a style="width: 240px ;height: 180px;" class="blog-link d-block zoom-image" href="{{route('page.post',[$post->id])}}"><img src="{{asset('uploads/'.$post->image)}}"
                                    class="img-fluid scale-image" alt=""></a>
                            <div class="blog-info">
                                <a href="{{route('page.post',[$post->id])}}">
                                    <h4 class="mb-0">{{$post->title}}</h4>
                                </a>
                                <p>{{substr($post->short_Desc,0,100)}}</p>
                            
                                <a href="{{route('page.post',[$post->id])}}" class="btn btn-style-primary">Xem thêm<i
                                        class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>

                    @endforeach
                    
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //home block 3 with slider -->

 

    <!-- team section -->
    <section class="w3l-team py-5">
        <div class="container py-md-5 py-4">
            <h3 class="title-style text-center mb-5">Đội ngũ <span>Bác Sĩ</span></h3>
            <div class="row text-center">

                @foreach ($doctors as $doctor)
                <div class="col-lg-3 col-sm-6">
                    <div class="team-block-single">
                        <div class="team-grids">
                            <a href="#team-single">
                                <img  src="{{asset('uploads/'.$doctor->image)}}" class="img-fluid" alt="">
                                <div class="team-info">
                                    <div class="social-icons-section">
                                        <a class="fac" href="#facebook">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                        <a class="twitter mx-2" href="#twitter">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                        <a class="google" href="#google-plus">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="team-bottom-block p-4">
                            <h5 class="member mb-1"><a href="#team">{{$doctor->name}}</a></h5>
                            <small>{{$doctor->position->name}}</small>
                        </div>
                    </div>
                </div>
              @endforeach
            </div>
        </div>
    </section>
    <!-- //team setion -->


<!-- AboutPage Testimonials -->

<section>
  </section>

<section class="w3l-testimonials pb-5" id="testimonials">
  <div class="container py-md-5 py-4 AboutPageTestimonials">
    <h3 class="title-style text-center mb-5">
      CẢM XÚC VÀ TRẢI NGHIỆM<span> KHÁCH HÀNG</span>
      </h3>
    <div class="owl-testimonial owl-carousel owl-theme mx-auto" style="max-width:1000px">

        @foreach ($feedbacks as $feedback)
      

                  <div class="item">
        <div class="slider-info">
          <div class="img-circle">
            <img
              src="{{asset('frontend/images/customer.webp')}}"
              class="img-fluid rounded" alt="client image">
          </div>
          <div class="message-info">
            <span class="fa fa-quote-left mr-2"></span>
            <div class="message">{{$feedback->content}}</div>
            <div class="name">
              Khách hàng "{{$feedback->name}}"</div>
            <div class="desp ms-2">
              {{$feedback->updated_at}}</div>
          </div>
        </div>
      </div>
      @endforeach
        
    </div>
  </div>
</section>

<section>
  </section>

<!-- //AboutPage Testimonials -->

    <!-- skills section -->
    <!-- <section class="w3l-progress pt-5" id="progress">
        <div class="container pt-md-5 pt-4">
            <div class="row align-items-center">
                <div class="col-lg-6 pe-lg-5">
                    <div class="progress-info info1">
                        <h6 class="progress-tittle">Orthodontics <span class="">80%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-1" role="progressbar"
                                style="width: 80%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info2">
                        <h6 class="progress-tittle">Cosmetic Work <span class="">95%</span>
                        </h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-2" role="progressbar"
                                style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info3">
                        <h6 class="progress-tittle">Implants <span class="">60%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-3" role="progressbar"
                                style="width: 60%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info4">
                        <h6 class="progress-tittle">React JS <span class="">85%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-4" role="progressbar"
                                style="width: 85%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 text-center">
                    <img src="{{asset('public/frontend/images/img1.png')}}" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section> -->
    <!-- //skills section -->

    <!-- call section -->
    <section class="w3l-call-to-action-6">
        <div class="container py-md-5 py-sm-4 py-5">
            <div class="d-sm-flex align-items-center justify-content-between">
                <div class="left-content-call">
                    <h3 class="title-big">IVF PHƯƠNG CHÂU</h3>
                    <p class="text-white mt-1">"mong ước gần hơn"</p>
                </div>
                <div class="right-content-call mt-sm-0 mt-4">
                    <ul class="buttons">
                        <li class="phone-sec me-lg-4"><i class="fas fa-phone-volume"></i>
                            <a class="call-style-w3" href="tel:1900 54 54 66">1900 5454 66</a>
                        </li>
                        <li><a href="{{route('book.create')}}" class="btn btn-style btn-style-2 mt-lg-0 mt-3">ĐẶT LỊCH HẸN KHÁM</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- //call section -->
<!-- Messenger Plugin chat Code -->
<div id="fb-root"></div>

<!-- Your Plugin chat code -->



<!-- common jquery plugin -->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/jquery-3.3.1.min.js"></script>
<!-- //common jquery plugin -->

<!-- banner slider -->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/jquery.min.js"></script>
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/modernizr-2.6.2.min.js"></script>
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/jquery.zoomslider.min.js"></script>
<!-- //banner slider -->

<!-- for services carousel slider -->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/owl.carousel.js"></script>
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

    <!-- script for testimonials -->
    <script>
        $(document).ready(function () {
            $('.owl-testimonial').owlCarousel({
                loop: true,
                margin: 0,
                nav: true,
                responsiveClass: true,
                autoplay: true,
                autoplayTimeout: 5000,
                autoplaySpeed: 1000,
                autoplayHoverPause: false,
                responsive: {
                    0: {
                        items: 1,
                        nav: false
                    },
                    480: {
                        items: 1,
                        nav: false
                    },
                    667: {
                        items: 1,
                        nav: true
                    },
                    1000: {
                        items: 1,
                        nav: true
                    }
                }
            })
        })
    </script>
    <!-- //script for testimonials -->

    
<!-- counter for stats -->
<script >
    (function ($) {
    $.fn.countTo = function (options) {
        options = options || {};
        
        return $(this).each(function () {
            // set options for current element
            var settings = $.extend({}, $.fn.countTo.defaults, {
                from:            $(this).data('from'),
                to:              $(this).data('to'),
                speed:           $(this).data('speed'),
                refreshInterval: $(this).data('refresh-interval'),
                decimals:        $(this).data('decimals')
            }, options);
            
            // how many times to update the value, and how much to increment the value on each update
            var loops = Math.ceil(settings.speed / settings.refreshInterval),
                increment = (settings.to - settings.from) / loops;
            
            // references & variables that will change with each update
            var self = this,
                $self = $(this),
                loopCount = 0,
                value = settings.from,
                data = $self.data('countTo') || {};
            
            $self.data('countTo', data);
            
            // if an existing interval can be found, clear it first
            if (data.interval) {
                clearInterval(data.interval);
            }
            data.interval = setInterval(updateTimer, settings.refreshInterval);
            
            // initialize the element with the starting value
            render(value);
            
            function updateTimer() {
                value += increment;
                loopCount++;
                
                render(value);
                
                if (typeof(settings.onUpdate) == 'function') {
                    settings.onUpdate.call(self, value);
                }
                
                if (loopCount >= loops) {
                    // remove the interval
                    $self.removeData('countTo');
                    clearInterval(data.interval);
                    value = settings.to;
                    
                    if (typeof(settings.onComplete) == 'function') {
                        settings.onComplete.call(self, value);
                    }
                }
            }
            
            function render(value) {
                var formattedValue = settings.formatter.call(self, value, settings);
                $self.html(formattedValue);
            }
        });
    };
    
    $.fn.countTo.defaults = {
        from: 0,               // the number the element should start at
        to: 0,                 // the number the element should end at
        speed: 2000,           // how long it should take to count between the target numbers
        refreshInterval: 1,  // how often the element should be updated
        decimals: 0,           // the number of decimal places to show
        formatter: formatter,  // handler for formatting the value before rendering
        onUpdate: null,        // callback method for every time the element is updated
        onComplete: null       // callback method for when the element finishes updating
    };
    
    function formatter(value, settings) {
        return value.toFixed(settings.decimals);
    }
}(jQuery));

jQuery(function ($) {
  // custom formatting example
  $('.count-number').data('countToOptions', {
    formatter: function (value, options) {
      return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
    }
  });
  
  // start all the timers
  $('.timer').each(count);  
  
  function count(options) {
    var $this = $(this);
    options = $.extend({}, options || {}, $this.data('countToOptions') || {});
    $this.countTo(options);
  }
});
</script>
<!-- //counter for stats -->

<!-- theme switch js (light and dark)-->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/theme-change.js"></script>
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



    
@endsection