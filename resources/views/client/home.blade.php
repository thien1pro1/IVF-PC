
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
                    <a href="{{url('/client/post/5?_token=VtJ6VduKDxar5uDtMk1yK0HAK0wC7YDNy0iZ4fWz')}}" class="btn btn-style btn-style-2 mt-lg-5 mt-4">Xem thêm</a>
                </div>
                <div class="col-md-5 text-md-center mt-md-0 mt-5">
                    <div class="counter">
                        <div class="timer count-title count-number" data-to="6370" data-speed="1500">31500</div>
                        <p class="count-text mt-sm-2">CẶP GIA ĐÌNH ĐƯỢC TƯ VẤN</p>
                    </div>
                    <div class="counter mt-sm-5 mt-4">
                        <div class="timer count-title count-number" data-to="36" data-speed="1500">54%</div>
                        <p class="count-text mt-sm-2">TỈ LỆ THỤ THAI THÀNH CÔNG</p>
                    </div>
                    <div class="counter mt-sm-5 mt-4">
                        <div class="timer count-title count-number" data-to="7600" data-speed="1500">3000</div>
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
            <h3 class="title-style mb-md-5 mb-4"><span>QUY TRÌNH THĂM KHÁM HIẾM MUỘN</span>
                    </h3>
            <div class="row pb-xl-5 align-items-center">
                <div class="col-lg-6 position-relative home-block-3-left pb-lg-0 pb-5">
                    <div class="position-relative">
                        <img src="{{asset('public/frontend/images/home1.jpg')}}" alt="" class="img-fluid radius-image">
                    </div>
                    <div class="imginfo__box">
                        <h6 class="imginfo__title">ĐẶT LỊCH TƯ VẤN MIỄN PHÍ</h6>
                        <p>Nemo enim ipsam oluptatem quia oluptas<br> sit aspernatur aut odit aut fugit. </p>
                        <a href="tel:http://1900 54 54 66"><i class="fas fa-phone-alt"></i> 1900 54 54 66</a>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 offset-xl-1 mt-lg-0 mt-5 pt-lg-0 pt-5">
                    <h3 class="title-style mb-md-5 mb-4">Bài viết về quy trình thăm khám hiếm muộn
                    </h3>
                    <p class="sub-para">"Our clients are our priority, we offer quality dental services with a team of
                        specialists. More details about our services below".</p>
                    <p class="mt-4 pt-sm-2">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo,
                        ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet consectetur adipisicing
                        elit.</p>
                    <p class="mt-4 pt-sm-2">Sellen tesque libero ut justo,
                        ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet consectetur adipisicing
                        elit.</p>
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
                <div class="col-lg-4 col-md-6">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                            <i class="fas fa-tooth"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a href="about.html">General Dentistry</a></h5>
                            <p>show lên 6 dịch vụ là 6 trang bài viết</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-md-0 mt-3">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                            <i class="fas fa-wheelchair"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a href="about.html">Urgent Surgery</a></h5>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit accusa ntium dolor emque
                                laudan.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-0 mt-3">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                            <i class="fas fa-user-md"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a href="about.html">Dental Implants</a></h5>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit accusa ntium dolor emque
                                laudan.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-4">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                            <i class="fas fa-teeth-open"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a href="about.html">Tooth Whitening</a></h5>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit accusa ntium dolor emque
                                laudan.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-4">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                            <i class="fas fa-crutch"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a href="about.html">Prosthesis</a></h5>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit accusa ntium dolor emque
                                laudan.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-4">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                            <i class="fas fa-teeth"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a href="about.html">Dental Braces</a></h5>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit accusa ntium dolor emque
                                laudan.</p>
                        </div>
                    </div>
                </div>
            </div>
            <a href="services.html" class="btn btn-style mt-5">Xem thêm</a>
        </div>
    </section>
    <!-- //home block 2 -->

    <!-- home block 3 with slider -->
    <section class="w3l-index5 py-5">
        <div class="container py-md-5 py-4">
            <h3 class="title-style text-center mb-5">Kiến thức  <span>Y Khoa</span></h3>
            <div class="inner-sec-w3layouts mt-md-5 mt-4">
                <div class="owl-three owl-carousel owl-theme">
                    @foreach ($posts as $post)
                    <div class="item">
                        <div class="content-left-sec">
                            <a class="blog-link d-block zoom-image" href="#url"><img src="{{asset('public/frontend/images/s1.jpg')}}"
                                    class="img-fluid scale-image" alt=""></a>
                            <div class="blog-info">
                                <a href="#url">
                                    <h4 class="mb-0">{{$post->title}}</h4>
                                </a>
                                <p>{{$post->short_Desc}}</p>
                                <a href="services.html" class="btn btn-style-primary">Learn More<i
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
            <h3 class="title-style text-center mb-5">Thông tin <span>Bác Sĩ</span></h3>
            <div class="row text-center">
                <div class="col-lg-3 col-sm-6">
                    <div class="team-block-single">
                        <div class="team-grids">
                            <a href="#team-single">
                                <img src="{{asset('public/frontend/images/team1.jpg')}}" class="img-fluid" alt="">
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
                            <h5 class="member mb-1"><a href="#team">Olive Yew</a></h5>
                            <small>Dentist</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mt-sm-0 mt-4">
                    <div class="team-block-single">
                        <div class="team-grids">
                            <a href="#team-single">
                                <img src="{{asset('public/frontend/images/team2.jpg')}}" class="img-fluid" alt="">
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
                            <h5 class="member mb-1 active"><a href="#team">Aida Joe</a></h5>
                            <small>Orthodontist</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mt-lg-0 mt-4">
                    <div class="team-block-single">
                        <div class="team-grids">
                            <a href="#team-single">
                                <img src="{{asset('public/frontend/images/team3.jpg')}}" class="img-fluid" alt="">
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
                            <h5 class="member mb-1"><a href="#team">Teri Dac</a></h5>
                            <small>Hygienist</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mt-lg-0 mt-4">
                    <div class="team-block-single">
                        <div class="team-grids">
                            <a href="#team-single">
                                <img src="{{asset('public/frontend/images/team4.jpg')}}" class="img-fluid" alt="">
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
                            <h5 class="member mb-1"><a href="#team">Anton Bne</a></h5>
                            <small>Dentist</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //team setion -->

    <!-- blog section -->
    <div class="w3l-homeblock2 py-5">
        <div class="container py-md-5 py-4">
            <h3 class="title-style text-center mb-5">Góc <span>CẢM XÚC VÀ TRẢI NGHIỆM</span> của khách hàng</h3>
            <div class="row">
                <div class="col-lg-6">
                    <div class="bg-clr-white hover-box">
                        <div class="row align-items-center">
                            <div class="col-sm-6 position-relative">
                                <a href="#blog">
                                    <img class="img-fluid d-block" src="{{asset('public/frontend/images/blog3.jpg')}}" alt="image">
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <div class="card-body blog-details align-self pl-sm-0">
                                    <a href="#blog" class="blog-desc">Denists Against Root Canals
                                    </a>
                                    <p>Lorem ipsum dolor sit amet consectetur ipsum adipisicing elit.</p>
                                    <div class="d-flex align-items-center justify-content-between mt-lg-4 mt-5">
                                        <h5 class="text-blog-e">July 15, 2021</h5>
                                        <a href="#blog" class="blog-icon-e"><i class="fas fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mt-lg-0 mt-4">
                    <div class="bg-clr-white hover-box">
                        <div class="row align-items-center">
                            <div class="col-sm-6 position-relative">
                                <a href="#blog">
                                    <img class="img-fluid d-block" src="{{asset('public/frontend/images/blog2.jpg')}}" alt="Card image cap">
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <div class="card-body blog-details align-self pl-sm-0">
                                    <a href="#blog" class="blog-desc">Treatment with Great Care</a>
                                    <p>Lorem ipsum dolor sit amet consectetur ipsum adipisicing elit.</p>
                                    <div class="d-flex align-items-center justify-content-between mt-lg-4 mt-5">
                                        <h5 class="text-blog-e">July 18, 2021</h5>
                                        <a href="#blog" class="blog-icon-e"><i class="fas fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //blog section -->

    <!-- skills section -->
    <section class="w3l-progress pt-5" id="progress">
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
    </section>
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
                        <li><a href="{{url('/dat-lich-kham')}}" class="btn btn-style btn-style-2 mt-lg-0 mt-3">ĐẶT LỊCH HẸN KHÁM</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- //call section -->
@endsection