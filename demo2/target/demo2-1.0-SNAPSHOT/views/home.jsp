<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang chủ sản phẩm</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script
            src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
    <style>
        footer {
            background-color: #333;
            color: #fff;
            padding: 50px 0;
            font-size: 16px;
            margin-top: 15cm;
        }

        footer h4 {
            color: #fff;
            font-weight: bold;
            margin-bottom: 30px;
        }

        footer p {
            margin-bottom: 20px;
        }

        footer ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        footer ul li a {
            color: #fff;
            transition: color 0.3s;
        }

        footer ul li a:hover {
            color: #fbb710;
        }

        footer .copy-right {
            background-color: #222;
            padding: 15px 0;
        }

        footer .copy-right p {
            margin: 0;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body ng-app="myapp" onload="auto()">
<header>
    <!-- Thêm logo và tiêu đề công ty vào đây -->
</header>

<nav>
    <!-- Menu sản phẩm -->
    <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" href="#trangchu">Trang
            chủ</a></li>
        <li class="nav-item"><a class="nav-link" href="#gioithieu">Giới
            thiệu</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Liên hệ</a></li>
        <li class="nav-item" style="margin-left: 25cm"><select
                class="nav-link" onchange="location = this.value;">
            <option value="#thongtin" selected>Thông tin</option>
            <option value="/demo2_war_exploded/thongtincanhan">Video đã yêu thích</option>
            <option value="#doimatkhau">Đổi mật khẩu</option>
            <option value="/demo2_war_exploded/views/dangnhap.jsp">Đăng nhập</option>
        </select></li>
    </ul>
</nav>

<div ng-view></div>

<div class="container" style="margin-top: 5cm">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent"
                 style="background: rgb(249, 248, 248);">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#" style=""><b>Latest
                        Products</b></a></li>
                    <li class="navbar-nav me-auto mb-2 mb-lg-0"><a class="pre"
                                                                   onclick="nextpre(-1)" style="margin-left: 2cm;">
                        <button
                                style="width: 0.5cm; height: 0.7cm;">&#10094
                        </button>
                    </a> <a
                            class="next" onclick="nextpre(1)">
                        <button
                                style="width: 0.5cm; height: 0.7cm; margin-left: 0.3cm;">&#10095
                        </button>
                    </a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#"
                                            style="margin-left: 2cm;"><b>Top Rated Products</b></a></li>
                    <li class="navbar-nav me-auto mb-2 mb-lg-0"><a class="pre"
                                                                   onclick="nextpre1(-1)" style="margin-left: 2cm;">
                        <button
                                style="width: 0.5cm; height: 0.7cm;">&#10094
                        </button>
                    </a> <a
                            class="next" onclick="nextpre1(1)">
                        <button
                                style="width: 0.5cm; height: 0.7cm; margin-left: 0.3cm;">&#10095
                        </button>
                    </a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#"
                                            style="margin-left: 2cm;"><b>Review Products</b></a></li>
                    <li class="navbar-nav me-auto mb-2 mb-lg-0"><a class="pre"
                                                                   onclick="nextpre2(-1)" style="margin-left: 2cm;">
                        <button
                                style="width: 0.5cm; height: 0.7cm;">&#10094
                        </button>
                    </a> <a
                            class="next" onclick="nextpre2(1)">
                        <button
                                style="width: 0.5cm; height: 0.7cm; margin-left: 0.3cm;">&#10095
                        </button>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="tong">
        <div class="trai">
            <div class="1slide">
                <div style="float: left;">
                    <div style="float: left;">
                        <p>
                            <img src="${pageContext.request.contextPath}/image/a1.jpg"
                                 alt="" style="width: 150px; height: 150px;">
                        </p>
                    </div>
                    <div style="float: left;">
                        <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                            Security</p>
                        <p style="margin-left: 0.5cm;">
                            <b>$30.00</b>
                        </p>
                    </div>
                </div>
                <div style="float: left;">
                    <div style="float: left;">
                        <p>
                            <img src="${pageContext.request.contextPath}/image/a4.jpg"
                                 alt="" style="width: 150px; height: 150px;">
                        </p>
                    </div>
                    <div style="float: left;">
                        <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                            Security</p>
                        <p style="margin-left: 0.5cm;">
                            <b>$30.00</b>
                        </p>
                    </div>
                </div>
                <div style="float: left;">
                    <div style="float: left;">
                        <p>
                            <img src="${pageContext.request.contextPath}/image/a5.jpg"
                                 alt="" style="width: 150px; height: 150px;">
                        </p>
                    </div>
                    <div style="float: left;">
                        <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                            Security</p>
                        <p style="margin-left: 0.5cm;">
                            <b>$30.00</b>
                        </p>
                    </div>
                </div>

            </div>
            <div class="1slide">
                <div style="float: left;">
                    <div style="float: left;">
                        <p>
                            <img src="${pageContext.request.contextPath}/image/d1.jpg"
                                 alt="" style="width: 150px; height: 150px;">
                        </p>
                    </div>
                    <div style="float: left;">
                        <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                            Security</p>
                        <p style="margin-left: 0.5cm;">
                            <b>$30.00</b>
                        </p>
                    </div>
                </div>
                <div style="float: left;">
                    <div style="float: left;">
                        <p>
                            <img src="${pageContext.request.contextPath}/image/d2.jpg"
                                 alt="" style="width: 150px; height: 150px;">
                        </p>
                    </div>
                    <div style="float: left;">
                        <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                            Security</p>
                        <p style="margin-left: 0.5cm;">
                            <b>$30.00</b>
                        </p>
                    </div>
                </div>
                <div style="float: left;">
                    <div style="float: left;">
                        <p>
                            <img src="${pageContext.request.contextPath}/image/d3.jpg"
                                 alt="" style="width: 150px; height: 150px;">
                        </p>
                    </div>
                    <div style="float: left;">
                        <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                            Security</p>
                        <p style="margin-left: 0.5cm;">
                            <b>$30.00</b>
                        </p>
                    </div>
                </div>

            </div>
        </div>
        <div class="phai">
            <div class="phai1">
                <div class="2slide">
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/a6.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/a7.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/a8.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>

                </div>
                <div class="2slide">
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/d4.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/d5.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/d6.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>

                </div>
            </div>
            <div class="phai2">
                <div class="3slide">
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/a9.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/a10.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/a11.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="3slide">
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/d7.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/d8.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left;">
                            <p>
                                <img src="${pageContext.request.contextPath}/image/d9.jpg"
                                     alt="" style="width: 150px; height: 150px;">
                            </p>
                        </div>
                        <div style="float: left;">
                            <p style="margin-top: 1cm; margin-left: 0.5cm;">Crab Pool
                                Security</p>
                            <p style="margin-left: 0.5cm;">
                                <b>$30.00</b>
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h4>Thông tin liên hệ</h4>
                <p>Địa chỉ: 123 đường ABC, Thành phố XYZ</p>
                <p>Email: info@example.com</p>
                <p>Điện thoại: 0123456789</p>
            </div>
            <div class="col-md-4">
                <h4>Danh mục</h4>
                <ul>
                    <li><a href="#">Trang chủ</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="#">Dịch vụ</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h4>Theo dõi chúng tôi</h4>
                <ul>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="copy-right">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p>© 2023 Company Name. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

<script>
    var app = angular.module("myapp", ['ngRoute']);
    app.config(['$routeProvider', '$locationProvider',
        function ($routeProvider, $locationProvider) {
            $locationProvider.hashPrefix("");
            $routeProvider.when("/trangchu", {
                templateUrl: "/demo2_war_exploded/trangchu",
            }).when("/thongtin", {
                templateUrl: "/demo2_war_exploded/thongtin",
            }).when("/home1", {
                templateUrl: "/demo2_war_exploded/views/home1.jsp",
            }).when("/item", {
                templateUrl: "/demo2_war_exploded/views/item.jsp",
            }).when("/doimatkhau", {
                templateUrl: "/demo2_war_exploded/views/doimk.jsp",
            }).when("/yeuthich", {
                templateUrl: "/demo2_war_exploded/yeuthich",
            }).otherwise({
                redirectTo: "/trangchu"
            });
        }]);
</script>

<script>
    var index = 1;
    show(index);

    function nextpre(n) {
        show(index += n);
    }

    function curslide(n) {
        show(index = n);
    }

    function show(n) {
        var i;
        var slide = document.getElementsByClassName("1slide");
        if (n > slide.length) {
            index = 1;
        }
        if (n < 1) {
            index = slide.length;
        }
        for (i = 0; i < slide.length; i++) {
            slide[i].style.display = "none";
        }
        slide[index - 1].style.display = "block";
    }

    function auto() {
        setInterval("nextpre(1)", 1000);
        setInterval("nextpre1(1)", 1000);
        setInterval("nextpre2(1)", 1000);
        setInterval("nextpre4(1)", 1000);
    }

    var index1 = 1;
    show1(index1);

    function nextpre1(n) {
        show1(index1 += n);
    }

    function curslide1(n) {
        show1(index1 = n);
    }

    function show1(n) {
        var i;
        var slide = document.getElementsByClassName("2slide");
        if (n > slide.length) {
            index1 = 1;
        }
        if (n < 1) {
            index1 = slide.length;
        }
        for (i = 0; i < slide.length; i++) {
            slide[i].style.display = "none";
        }
        slide[index1 - 1].style.display = "block";
    }

    var index2 = 1;
    show2(index2);

    function nextpre2(n) {
        show2(index2 += n);
    }

    function curslide2(n) {
        show2(index2 = n);
    }

    function show2(n) {
        var i;
        var slide = document.getElementsByClassName("3slide");
        if (n > slide.length) {
            index2 = 1;
        }
        if (n < 1) {
            index2 = slide.length;
        }
        for (i = 0; i < slide.length; i++) {
            slide[i].style.display = "none";
        }
        slide[index2 - 1].style.display = "block";
    }

    var index4 = 1;
    show4(index4);

    function nextpre4(n) {
        show4(index4 += n);
    }

    function curslide4(n) {
        show4(index4 = n);
    }

    function show4(n) {
        var i;
        var slide = document.getElementsByClassName("4slide");
        if (n > slide.length) {
            index4 = 1;
        }
        if (n < 1) {
            index4 = slide.length;
        }
        for (i = 0; i < slide.length; i++) {
            slide[i].style.display = "none";
        }
        slide[index4 - 1].style.display = "block";
    }
</script>

</body>
</html>
