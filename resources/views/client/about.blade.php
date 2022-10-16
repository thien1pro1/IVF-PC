
@extends('layouts.client')
@section('content')
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
<!-- features-4 -->
<section class="w3l-services-6-main">
    <div class="services-6 py-5">
        <div class="container py-md-3">
            <div class="row serv_sec_info">
                <div class="col-lg-6 banner_bottom_grid help">
                    <img src="{{asset('public/frontend/images/about1.jpg')}}" alt=" " class="img-fluid radius-image">
                </div>
                <div class="col-lg-6 banner_bottom_left pl-lg-4 mt-lg-0 mt-md-5 mt-4">
                    <h4><a class="link-hny" href="#">
                            Hệ thống tập đoàn y tế Phương Châu </a></h4>
                    <p>Tập Đoàn Y Tế Phương Châu gồm 3 bệnh viện tại Cần Thơ, Sa Đéc (Đồng Tháp), Sóc Trăng và không ngừng hoàn thiện “sứ mệnh chăm sóc sức khỏe sinh sản toàn diện” cùng các gia đình. Hệ thống y tế Phương Châu hoạt động đầy đủ và kết nối chặt chẽ các chuyên khoa trong tầm soát sớm, chẩn đoán, điều trị bệnh: Sản-Phụ khoa, Nhi-Sơ sinh, Hiếm muộn, Nam khoa, Đa khoa, Thẩm mỹ…</p>
                    <p>Qua chặng đường hơn 10 năm, Phương Châu đã nỗ lực không ngừng trong mọi hoạt động vận hành và chuyên môn, luôn cập nhật, thay đổi và vươn lên thành một Tập Đoàn Y Tế với các dịch vụ tiêu chuẩn quốc tế...
                        pharetra sem, eget pulvinar neque pharetra ac.</p>
                    <a class="btn btn-outline-primary btn-outline-style mt-4" href="#url">Know More</a>
                </div>
            </div>
            <div class="row features-w3pvt-main" id="features">
                <div class="col-lg-4 col-md-6 feature-gird">
                    <div class="row features-hny-inner-gd">
                        <div class="col-md-3 col-2 featured_grid_left">
                            <div class="icon_left_grid">
                                <span class="fa fa-bath" aria-hidden="true"></span>
                            </div>
                        </div>
                        <div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
                            <h4><a class="link-hny" href="#url">Custom Furniture </a></h4>
                            <p>Lorem ipsum dolor sit amet consec tetur adipisi elit. Dolores, rem!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 feature-gird">
                    <div class="row features-hny-inner-gd">
                        <div class="col-md-3 col-2 featured_grid_left">
                            <div class="icon_left_grid">
                                <span class="fa fa-lightbulb-o" aria-hidden="true"></span>
                            </div>
                        </div>
                        <div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
                            <h4><a class="link-hny" href="#url">Lighting Design </a></h4>
                            <p>Lorem ipsum dolor sit amet consec tetur adipisi elit. Dolores, rem!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 feature-gird">
                    <div class="row features-hny-inner-gd">
                        <div class="col-md-3 col-2 featured_grid_left">
                            <div class="icon_left_grid">
                                <span class="fa fa-shower" aria-hidden="true"></span>
                            </div>
                        </div>
                        <div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
                            <h4><a class="link-hny" href="#url">Furniture Sourcing </a></h4>
                            <p>Lorem ipsum dolor sit amet consec tetur adipisi elit. Dolores, rem!</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="content-with-photo-16 py-5">
    <!-- /content-with-photo-16 -->
    <div class="content-with-photo-16-main py-lg-5 py-sm-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 column">
                    <div class="content-with-photo-16-inf">
                        <h3>We are competitive in architecture, interior solutions </h3>
                        <p>Aliquam blandit vel sapien eget aliquam. Phasellus eget volutpat libero. Suspendisse
                            eleifend nibh quis dui placerat fermentum.n molestie nulla felis, vitae feugiat justo
                            pulvinar et. </p>
                        <ul class="content-photo-list">
                            <li>
                                <span>We provide a architectural 3D modeling services.</span>
                            </li>
                            <li>
                                <span>Our specialists are ready to consult you on any topic.</span>
                            </li>
                            <li>
                                <span>We develop and implement better interior design.</span>
                            </li>
                            <li>
                                <span>We provide high-quality interior services for clients.</span>
                            </li>
                        </ul>
                        <a class="btn btn-outline-primary btn-outline-style mt-4" href="#url">Read More</a>
                    </div>
                </div>
                <div class="col-lg-6 column mt-lg-0 mt-md-5 mt-4">
                    <div class="companies-img">
                        <img src="{{asset('public/frontend/images/about1.jpg')}}" class="img-fluid radius-image" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //content-with-photo-16 -->
<!-- team -->
<section class="w3l-team py-5" id="w3l-team">
    <div class="container py-lg-4 py-sm-3">
        <h3 class="title-big mb-md-5 mb-4">Super Team</h3>
        <div class="row text-center">
            <div class="col-md-3 col-6">
                <div class="team-grids text-center">
                    <img src="{{asset('public/frontend/images/team1.jpg')}}" class="img-fluid" alt="">
                    <div class="team-info">
                        <div class="caption">
                            <div class="social-icons-section text-center">
                                <a class="fac" href="#url">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a class="twitter" href="#url">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <h4>John Doe</h4>
                <h6>Founder and CEO</h6>
            </div>
            <div class="col-md-3 col-6">
                <div class="team-grids text-center">
                    <img src="{{asset('public/frontend/images/team2.jpg')}}" class="img-fluid" alt="">
                    <div class="team-info">
                        <div class="caption">
                            <div class="social-icons-section text-center">
                                <a class="fac" href="#url">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a class="twitter" href="#url">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <h4>Alexander</h4>
                <h6>Partner & co-founder</h6>
            </div>
            <div class="col-md-3 col-6">
                <div class="team-grids text-center">
                    <img src="{{asset('public/frontend/images/team3.jpg')}}" class="img-fluid" alt="">
                    <div class="team-info">
                        <div class="caption">
                            <div class="social-icons-section text-center">
                                <a class="fac" href="#url">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a class="twitter" href="#url">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <h4>Martin ker </h4>
                <h6>Chairmen</h6>
            </div>
            <div class="col-md-3 col-6 ">
                <div class="team-grids text-center">
                    <img src="{{asset('public/frontend/images/team4.jpg')}}" class="img-fluid" alt="">
                    <div class="team-info">
                        <div class="caption">
                            <div class="social-icons-section text-center">
                                <a class="fac" href="#url">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a class="twitter" href="#url">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <h4>Elizabeth </h4>
                <h6>Manager</h6>
            </div>
        </div>
    </div>
</section>
<!-- team -->
@endsection