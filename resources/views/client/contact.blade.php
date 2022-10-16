
@extends('layouts.client')
@section('content')
<!-- //w3l-header -->
<section class="w3l-about-breadcrumb">
    <div class="breadcrumb-bg breadcrumb-bg-contact py-5">
        <div class="container py-lg-5 py-md-3">
            <h2 class="title">Liên hệ</h2>
        </div>
    </div>
</section>
<section class="w3l-breadcrumb">
    <div class="container">
        <ul class="breadcrumbs-custom-path">
            <li><a href="#url">Trang chủ</a></li>
            <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Liên hệ</li>
        </ul>
    </div>
</section>
<!-- contact-form 2 -->
<section class="w3l-contact-2 py-5">
    <div class="contact-infubd section-gap py-lg-5 py-md-4">
        <div class="container">
            <div class="contact-grids d-grid">
                <div class="contact-left">
                    <h4>Liên hệ</h4>
                    <h6>Mọi góp ý của bạn chính là một phần cho sự hoàn thiện của chúng tôi</h6>
                    <div class="hours">
                        <h6 class="info mt-3">Email:</h6>
                        <p> <a href="mailto:info@example.com">
                            phuongchauvietnam@gmail.com</a></p>
                        <h6 class="info mt-3">Địa chỉ</h6>
                        <p> Bệnh viện QT Phuong Châu 01, Nguyễn Văn Cừ, An Khánh, Ninh Kiều, TPCT </p>
                        <p> Bệnh viện QT Phuong Châu 02, Phú Lợi, P2, TP Sóc Trăng, Sóc Trăng </p>
                        <p> Bệnh viện QT Phuong Châu 03, Nguyễn Sinh Trắc, P2, TP Sa Đét, Đồng Tháp </p>
                        <h6 class="info mt-3">Contact:</h6>
                        <p class="margin-top"><a href="tel:+(121-345-6789">0939 002 933</a></p>
                    </div>
                </div>
                <div class="contact-right">
                    <form action="https://sendmail.w3layouts.com/submitForm" method="post" class="signin-form">
                        <div class="input-grids">
                            <input type="text" name="w3lName" id="w3lName" placeholder="Tên*"
                                class="contact-input" />
                            <input type="email" name="w3lSender" id="w3lSender" placeholder="Email của bạn*"
                                class="contact-input" required="" />
                            <input type="text" name="w3lSubect" id="w3lSubect" placeholder="Nghề nghiệp*"
                                class="contact-input" />
                        </div>
                        <div class="form-input">
                            <textarea name="w3lMessage" id="w3lMessage" placeholder="Vấn đề của bạn*"
                                required=""></textarea>
                        </div>
                        <button class="btn btn-style btn-primary submit">Send Message</button>
                    </form>
                </div>

            </div>
        </div>
</section>
<!-- /contact-form-2 -->
<div class="map-iframe">
    <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317718.69319292053!2d-0.3817765050863085!3d51.528307984912544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2spl!4v1562654563739!5m2!1sen!2spl"
        width="100%" height="400" frameborder="0" style="border: 0px; pointer-events: none;"
        allowfullscreen=""></iframe>
</div>
@endsection