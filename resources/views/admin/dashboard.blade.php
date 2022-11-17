@extends('layouts.admin')
@section('content')
    <div id="page-wrapper">
        <!DOCTYPE html>
        <html>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

        <body>

            <canvas id="myChart" style="width:100%;max-width:600px"></canvas>

            <script>
                var xValues = ["Lịch chưa duyệt", "lịch đã duyệt", "lịch đã khám", "Lịch đã hủy"];
                var yValues = [{{ $waiting_book }}, {{ $accept_book }}, {{ $finish_book }}, {{ $cancel_book }}];
                var barColors = [
                    "#b91d47",
                    "#00aba9",
                    "#2b5797",
                    "#e8c3b9",
                    "#1e7145"
                ];

                new Chart("myChart", {
                    type: "pie",
                    data: {
                        labels: xValues,
                        datasets: [{
                            backgroundColor: barColors,
                            data: yValues
                        }]
                    },
                    options: {
                        title: {
                            display: true,
                            text: "Thống kê lịch khám"
                        }
                    }
                });
            </script>

        </body>

        </html>

        <!-- /.container-fluid -->
    </div>



    <div class="bg-gradient-dark border-radius-lg py-3 pe-1 mb-3">
        <div class="chart">
            <canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
        </div>
    </div>


    <!DOCTYPE html>
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
        
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>How to Add Google Map in Laravel? - ItSolutionStuff.com</title>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <style type="text/css">
            #map {
              height: 400px;
            }
        </style>
    </head>
        
    <body>
        <div class="container mt-5">
            <h2>How to Add Google Map in Laravel? - ItSolutionStuff.com</h2>
            <div id="map"></div>
        </div>
      
        <script type="text/javascript">
            function initMap() {
              const myLatLng = { lat: 22.2734719, lng: 70.7512559 };
              const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 5,
                center: myLatLng,
              });
      
              new google.maps.Marker({
                position: myLatLng,
                map,
                title: "Hello Rajkot!",
              });
            }
      
            window.initMap = initMap;
        </script>
      
        <script type="text/javascript"
            src="https://maps.google.com/maps/api/js?key={{ env('GOOGLE_MAP_KEY') }}&callback=initMap" ></script>
      
    </body>
    </html>












    <div class="row mt-4">
        <div class="col-lg-7 col-md-12">
            <div class="card">
                <div class="card-header pb-0 p-3">
                    <h6 class="mb-0">Traffic channels</h6>
                    <div class="d-flex align-items-center">
                        <span class="badge badge-md badge-dot me-4">
                            <i class="bg-primary"></i>
                            <span class="text-dark text-xs">Organic search</span>
                        </span>
                        <span class="badge badge-md badge-dot me-4">
                            <i class="bg-dark"></i>
                            <span class="text-dark text-xs">Referral</span>
                        </span>
                        <span class="badge badge-md badge-dot me-4">
                            <i class="bg-info"></i>
                            <span class="text-dark text-xs">Social media</span>
                        </span>
                    </div>
                </div>
                <div class="card-body p-3">
                    <div class="chart">
                        <canvas id="chart-line" class="chart-canvas" height="300"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5 col-md-12 mt-4 mt-lg-0">
            <div class="card h-100">
                <div class="card-header pb-0 p-3">
                    <div class="d-flex align-items-center">
                        <h6 class="mb-0">Referrals</h6>
                        <button type="button"
                            class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
                            data-bs-toggle="tooltip" data-bs-placement="bottom"
                            title="See which websites are sending traffic to your website">
                            <i class="fas fa-info"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body p-3">
                    <div class="row">
                        <div class="col-lg-5 col-12 text-center">
                            <div class="chart mt-5">
                                <canvas id="chart-doughnut" class="chart-canvas" height="200"></canvas>
                            </div>
                            <a class="btn btn-sm bg-gradient-secondary mt-4">See all referrals</a>
                        </div>
                        <div class="col-lg-7 col-12">
                            <div class="table-responsive">
                                <table class="table align-items-center mb-0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div>
                                                        <img src="../../assets/img/small-logos/logo-xd.svg"
                                                            class="avatar avatar-sm me-2" alt="logo_xd">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="mb-0 text-sm">Adobe</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <span class="text-xs font-weight-bold"> 25% </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div>
                                                        <img src="../../assets/img/small-logos/logo-atlassian.svg"
                                                            class="avatar avatar-sm me-2" alt="logo_atlassian">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="mb-0 text-sm">Atlassian</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <span class="text-xs font-weight-bold"> 3% </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div>
                                                        <img src="../../assets/img/small-logos/logo-slack.svg"
                                                            class="avatar avatar-sm me-2" alt="logo_slack">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="mb-0 text-sm">Slack</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <span class="text-xs font-weight-bold"> 12% </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div>
                                                        <img src="../../assets/img/small-logos/logo-spotify.svg"
                                                            class="avatar avatar-sm me-2" alt="logo_spotify">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="mb-0 text-sm">Spotify</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <span class="text-xs font-weight-bold"> 7% </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div>
                                                        <img src="../../assets/img/small-logos/logo-jira.svg"
                                                            class="avatar avatar-sm me-2" alt="logo_jira">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="mb-0 text-sm">Jira</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <span class="text-xs font-weight-bold"> 10% </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-sm-6">
            <div class="card h-100">
                <div class="card-header pb-0 p-3">
                    <div class="d-flex align-items-center">
                        <h6 class="mb-0">Social</h6>
                        <button type="button"
                            class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
                            data-bs-toggle="tooltip" data-bs-placement="bottom"
                            title="See how much traffic do you get from social media">
                            <i class="fas fa-info"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body p-3">
                    <ul class="list-group">
                        <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
                            <div class="w-100">
                                <div class="d-flex align-items-center mb-2">
                                    <a class="btn btn-facebook btn-simple mb-0 p-0" href="javascript:;">
                                        <i class="fab fa-facebook fa-lg"></i>
                                    </a>
                                    <span class="me-2 text-sm font-weight-bold text-capitalize ms-2">Facebook</span>
                                    <span class="ms-auto text-sm font-weight-bold">80%</span>
                                </div>
                                <div>
                                    <div class="progress progress-md">
                                        <div class="progress-bar bg-gradient-dark w-80" role="progressbar"
                                            aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
                            <div class="w-100">
                                <div class="d-flex align-items-center mb-2">
                                    <a class="btn btn-twitter btn-simple mb-0 p-0" href="javascript:;">
                                        <i class="fab fa-twitter fa-lg"></i>
                                    </a>
                                    <span class="me-2 text-sm font-weight-bold text-capitalize ms-2">Twitter</span>
                                    <span class="ms-auto text-sm font-weight-bold">40%</span>
                                </div>
                                <div>
                                    <div class="progress progress-md">
                                        <div class="progress-bar bg-gradient-dark w-40" role="progressbar"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
                            <div class="w-100">
                                <div class="d-flex align-items-center mb-2">
                                    <a class="btn btn-reddit btn-simple mb-0 p-0" href="javascript:;">
                                        <i class="fab fa-reddit fa-lg"></i>
                                    </a>
                                    <span class="me-2 text-sm font-weight-bold text-capitalize ms-2">Reddit</span>
                                    <span class="ms-auto text-sm font-weight-bold">30%</span>
                                </div>
                                <div>
                                    <div class="progress progress-md">
                                        <div class="progress-bar bg-gradient-dark w-30" role="progressbar"
                                            aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
                            <div class="w-100">
                                <div class="d-flex align-items-center mb-2">
                                    <a class="btn btn-youtube btn-simple mb-0 p-0" href="javascript:;">
                                        <i class="fab fa-youtube fa-lg"></i>
                                    </a>
                                    <span class="me-2 text-sm font-weight-bold text-capitalize ms-2">Youtube</span>
                                    <span class="ms-auto text-sm font-weight-bold">25%</span>
                                </div>
                                <div>
                                    <div class="progress progress-md">
                                        <div class="progress-bar bg-gradient-dark w-25" role="progressbar"
                                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
                            <div class="w-100">
                                <div class="d-flex align-items-center mb-2">
                                    <a class="btn btn-slack btn-simple mb-0 p-0" href="javascript:;">
                                        <i class="fab fa-slack fa-lg"></i>
                                    </a>
                                    <span class="me-2 text-sm font-weight-bold text-capitalize ms-2">Slack</span>
                                    <span class="ms-auto text-sm font-weight-bold">15%</span>
                                </div>
                                <div>
                                    <div class="progress progress-md">
                                        <div class="progress-bar bg-gradient-dark w-15" role="progressbar"
                                            aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card h-100 mt-4 mt-md-0">
                <div class="card-header pb-0 p-3">
                    <div class="d-flex align-items-center">
                        <h6>Pages</h6>
                        <button type="button"
                            class="btn btn-icon-only btn-rounded btn-outline-success mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
                            data-bs-toggle="tooltip" data-bs-placement="bottom"
                            title="Data is based from sessions and is 100% accurate">
                            <i class="fas fa-check"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body px-3 pt-0 pb-2">
                    <div class="table-responsive p-0">
                        <table class="table align-items-center justify-content-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                        Page</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                        Page Views</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                        Avg. Time</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                        Bounce Rate</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">1. /bits</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">345</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">00:17:07</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">40.91%</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">2. /pages/argon-dashboard</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">520</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">00:23:13</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">30.14%</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">3. /pages/soft-ui-dashboard</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">122</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">00:3:10</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">54.10%</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">4. /bootstrap-themes</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">1,900</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">00:30:42</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">20.93%</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">5. /react-themes</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">1,442</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">00:31:50</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">34.98%</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">6. /product/argon-dashboard-angular</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">201</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">00:12:42</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">21.4%</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">7. /product/material-dashboard-pro</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">2,115</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">00:50:11</p>
                                    </td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0">34.98%</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer pt-3  ">
        <div class="container-fluid">
            <div class="row align-items-center justify-content-lg-between">
                <div class="col-lg-6 mb-lg-0 mb-4">
                    <div class="copyright text-center text-sm text-muted text-lg-start">
                        ©
                        <script>
                            document.write(new Date().getFullYear())
                        </script>,
                        made with <i class="fa fa-heart"></i> by
                        <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
                        for a better web.
                    </div>
                </div>
                <div class="col-lg-6">
                    <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative
                                Tim</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted"
                                target="_blank">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/blog" class="nav-link text-muted"
                                target="_blank">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted"
                                target="_blank">License</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    </div>
    </main>
    <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
            <i class="fa fa-cog py-2"> </i>
        </a>
        <div class="card shadow-lg blur">
            <div class="card-header pb-0 pt-3  bg-transparent ">
                <div class="float-start">
                    <h5 class="mt-3 mb-0">Soft UI Configurator</h5>
                    <p>See our dashboard options.</p>
                </div>
                <div class="float-end mt-4">
                    <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                        <i class="fa fa-close"></i>
                    </button>
                </div>

            </div>
            <hr class="horizontal dark my-1">
            <div class="card-body pt-sm-3 pt-0">

                <div>
                    <h6 class="mb-0">Sidebar Colors</h6>
                </div>
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <div class="badge-colors my-2 text-start">
                        <span class="badge filter bg-gradient-primary active" data-color="primary"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-dark" data-color="dark"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-info" data-color="info"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-success" data-color="success"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-warning" data-color="warning"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-danger" data-color="danger"
                            onclick="sidebarColor(this)"></span>
                    </div>
                </a>

                <div class="mt-3">
                    <h6 class="mb-0">Sidenav Type</h6>
                    <p class="text-sm">Choose between 2 different sidenav types.</p>
                </div>
                <div class="d-flex">
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2 active" data-class="bg-transparent"
                        onclick="sidebarType(this)">Transparent</button>
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2 ms-2" data-class="bg-white"
                        onclick="sidebarType(this)">White</button>
                </div>
                <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>

                <div class="mt-3">
                    <h6 class="mb-0">Navbar Fixed</h6>
                </div>
                <div class="form-check form-switch ps-0">
                    <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                        onclick="navbarFixed(this)">
                </div>
                <hr class="horizontal dark mb-1 d-xl-block d-none">
                <div class="mt-2 d-xl-block d-none">
                    <h6 class="mb-0">Sidenav Mini</h6>
                </div>
                <div class="form-check form-switch ps-0 d-xl-block d-none">
                    <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarMinimize"
                        onclick="navbarMinimize(this)">
                </div>
                <hr class="horizontal dark mb-1 d-xl-block d-none">
                <div class="mt-2 d-xl-block d-none">
                    <h6 class="mb-0">Light/Dark</h6>
                </div>
                <div class="form-check form-switch ps-0 d-xl-block d-none">
                    <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version"
                        onclick="darkMode(this)">
                </div>
                <hr class="horizontal dark my-sm-4">
                <a class="btn bg-gradient-info w-100"
                    href="https://www.creative-tim.com/product/soft-ui-dashboard-pro">Buy now</a>
                <a class="btn bg-gradient-dark w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard">Free
                    demo</a>
                <a class="btn btn-outline-dark w-100"
                    href="https://www.creative-tim.com/learning-lab/bootstrap/overview/soft-ui-dashboard">View
                    documentation</a>
                <div class="w-100 text-center">
                    <a class="github-button" href="https://github.com/creativetimofficial/ct-soft-ui-dashboard-pro"
                        data-icon="octicon-star" data-size="large" data-show-count="true"
                        aria-label="Star creativetimofficial/soft-ui-dashboard on GitHub">Star</a>
                    <h6 class="mt-3">Thank you for sharing!</h6>
                    <a href="https://twitter.com/intent/tweet?text=Check%20Soft%20UI%20Dashboard%20PRO%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard-pro"
                        class="btn btn-dark mb-0 me-2" target="_blank">
                        <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
                    </a>
                    <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/soft-ui-dashboard-pro"
                        class="btn btn-dark mb-0 me-2" target="_blank">
                        <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script src="../../assets/js/core/popper.min.js"></script>
    <script src="../../assets/js/core/bootstrap.min.js"></script>
    <script src="../../assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../../assets/js/plugins/smooth-scrollbar.min.js"></script>

    <script src="../../assets/js/plugins/dragula/dragula.min.js"></script>
    <script src="../../assets/js/plugins/jkanban/jkanban.js"></script>
    <script src="../../assets/js/plugins/chartjs.min.js"></script>
    <script>
        var ctx1 = document.getElementById("chart-line").getContext("2d");
        var ctx2 = document.getElementById("chart-doughnut").getContext("2d");

        var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

        gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');
        gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
        gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

        var gradientStroke2 = ctx1.createLinearGradient(0, 230, 0, 50);

        gradientStroke2.addColorStop(1, 'rgba(20,23,39,0.2)');
        gradientStroke2.addColorStop(0.2, 'rgba(72,72,176,0.0)');
        gradientStroke2.addColorStop(0, 'rgba(20,23,39,0)'); //purple colors

        // Line chart
        new Chart(ctx1, {
            type: "line",
            data: {
                labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                        label: "Organic Search",
                        tension: 0.4,
                        borderWidth: 0,
                        pointRadius: 2,
                        pointBackgroundColor: "#cb0c9f",
                        borderColor: "#cb0c9f",
                        borderWidth: 3,
                        backgroundColor: gradientStroke1,
                        data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                        maxBarThickness: 6
                    },
                    {
                        label: "Referral",
                        tension: 0.4,
                        borderWidth: 0,
                        pointRadius: 2,
                        pointBackgroundColor: "#3A416F",
                        borderColor: "#3A416F",
                        borderWidth: 3,
                        backgroundColor: gradientStroke2,
                        data: [30, 90, 40, 140, 290, 290, 340, 230, 400],
                        maxBarThickness: 6
                    },
                    {
                        label: "Direct",
                        tension: 0.4,
                        borderWidth: 0,
                        pointRadius: 2,
                        pointBackgroundColor: "#17c1e8",
                        borderColor: "#17c1e8",
                        borderWidth: 3,
                        backgroundColor: gradientStroke2,
                        data: [40, 80, 70, 90, 30, 90, 140, 130, 200],
                        maxBarThickness: 6
                    },
                ],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            padding: 10,
                            color: '#9ca2b7'
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: true,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            color: '#9ca2b7',
                            padding: 10
                        }
                    },
                },
            },
        });


        // Doughnut chart
        new Chart(ctx2, {
            type: "doughnut",
            data: {
                labels: ['Creative Tim', 'Github', 'Bootsnipp', 'Dev.to', 'Codeinwp'],
                datasets: [{
                    label: "Projects",
                    weight: 9,
                    cutout: 60,
                    tension: 0.9,
                    pointRadius: 2,
                    borderWidth: 2,
                    backgroundColor: ['#2152ff', '#3A416F', '#f53939', '#a8b8d8', '#cb0c9f'],
                    data: [15, 20, 12, 60, 20],
                    fill: false
                }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            display: false
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            display: false,
                        }
                    },
                },
            },
        });
    </script>
    <script src="../../assets/js/plugins/chartjs.min.js"></script>
    <script>
        var ctx1 = document.getElementById("chart-line").getContext("2d");
        var ctx2 = document.getElementById("chart-doughnut").getContext("2d");

        var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

        gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');
        gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
        gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

        var gradientStroke2 = ctx1.createLinearGradient(0, 230, 0, 50);

        gradientStroke2.addColorStop(1, 'rgba(20,23,39,0.2)');
        gradientStroke2.addColorStop(0.2, 'rgba(72,72,176,0.0)');
        gradientStroke2.addColorStop(0, 'rgba(20,23,39,0)'); //purple colors

        // Line chart
        new Chart(ctx1, {
            type: "line",
            data: {
                labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                        label: "Organic Search",
                        tension: 0.4,
                        borderWidth: 0,
                        pointRadius: 2,
                        pointBackgroundColor: "#cb0c9f",
                        borderColor: "#cb0c9f",
                        borderWidth: 3,
                        backgroundColor: gradientStroke1,
                        data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                        maxBarThickness: 6
                    },
                    {
                        label: "Referral",
                        tension: 0.4,
                        borderWidth: 0,
                        pointRadius: 2,
                        pointBackgroundColor: "#3A416F",
                        borderColor: "#3A416F",
                        borderWidth: 3,
                        backgroundColor: gradientStroke2,
                        data: [30, 90, 40, 140, 290, 290, 340, 230, 400],
                        maxBarThickness: 6
                    },
                    {
                        label: "Direct",
                        tension: 0.4,
                        borderWidth: 0,
                        pointRadius: 2,
                        pointBackgroundColor: "#17c1e8",
                        borderColor: "#17c1e8",
                        borderWidth: 3,
                        backgroundColor: gradientStroke2,
                        data: [40, 80, 70, 90, 30, 90, 140, 130, 200],
                        maxBarThickness: 6
                    },
                ],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            padding: 10,
                            color: '#9ca2b7'
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: true,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            color: '#9ca2b7',
                            padding: 10
                        }
                    },
                },
            },
        });


        // Doughnut chart
        new Chart(ctx2, {
            type: "doughnut",
            data: {
                labels: ['Creative Tim', 'Github', 'Bootsnipp', 'Dev.to', 'Codeinwp'],
                datasets: [{
                    label: "Projects",
                    weight: 9,
                    cutout: 60,
                    tension: 0.9,
                    pointRadius: 2,
                    borderWidth: 2,
                    backgroundColor: ['#2152ff', '#3A416F', '#f53939', '#a8b8d8', '#cb0c9f'],
                    data: [15, 20, 12, 60, 20],
                    fill: false
                }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            display: false
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            display: false,
                        }
                    },
                },
            },
        });
    </script>
    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>

    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <script src="../../assets/js/soft-ui-dashboard.min.js?v=1.1.0"></script>
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
        integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
        data-cf-beacon='{"rayId":"76a6d17b4be07ee9","version":"2022.11.0","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
        crossorigin="anonymous"></script>
@endsection
