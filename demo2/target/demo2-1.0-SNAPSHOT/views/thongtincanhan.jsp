<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <li class="nav-item"><a class="nav-link active" href="/demo2_war_exploded/views/home.jsp#/trangchu">Trang
      chủ</a></li>
    <li class="nav-item"><select class="nav-link"
                                 onchange="location = this.value;">
      <option value="/demo2_war_exploded/thongtincanhan" selected>Video yêu thích</option>
      <option value="/demo2_war_exploded/thongtincanhan">Video
        đã chia sẻ</option>
    </select></li>
    <li class="nav-item" style="margin-left: 25cm"><select
            class="nav-link" onchange="location = this.value;">
      <option value="#thongtin" selected>Thông tin</option>
      <option value="/demo2_war_exploded/thongtincanhan">Thông
        tin cá nhân</option>
      <option value="/demo2_war_exploded/views/home.jsp#/doimatkhau">Đổi mật khẩu</option>
      <option value="/demo2_war_exploded/views/dangnhap.jsp">Đăng nhập</option>
    </select></li>
  </ul>
</nav>
<form action="/demo2_war_exploded/trangchu" method="post">
  <main class="container mt-3">
    <div class="row">
      <!-- Khung giới thiệu sản phẩm 1 -->
      <c:forEach var="user" items="${listvd}">
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">${user.titile}</h5>
              <img class="card-img-top"
                   src="${pageContext.request.contextPath}/image/${user.poster}"
                   alt="Ảnh sản phẩm">
              <p class="card-text">${user.description}</p>
              <div class="d-flex justify-content-between align-items-center">
                <p class="card-text">View: ${user.views}</p>
                <p class="card-text">Tích cực : ${user.active}</p>
              </div>
              <button type="submit" class="btn btn-success"
                      formaction="/demo2_war_exploded/yeuthich" name="yeuthich"
                      value="${user.titile}">Yêu thích</button>
              <button type="submit" class="btn btn-primary"
                      formaction="/demo2_war_exploded/item" name="item" value="${user.titile}">Xem
                chi tiết</button>

            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </main>
</form>

<div ng-view></div>

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
  var app = angular.module("myapp", [ 'ngRoute' ]);
  app.config([ '$routeProvider', '$locationProvider',
    function($routeProvider, $locationProvider) {
      $locationProvider.hashPrefix("");
      $routeProvider.when("/trangchu", {
        templateUrl : "/demo6_war_exploded/trangchu",
      }).when("/thongtin", {
        templateUrl : "/demo6_war_exploded/thongtin",
      }).when("/home1", {
        templateUrl : "/demo6_war_exploded/views/home1.jsp",
      }).when("/item", {
        templateUrl : "/demo6_war_exploded/views/item.jsp",
      }).when("/doimatkhau", {
        templateUrl : "/demo6_war_exploded/views/doimk.jsp",
      }).when("/yeuthich", {
        templateUrl : "/demo6_war_exploded/yeuthich",
      }).otherwise({
        //redirectTo : "/trangchu"
      });
    } ]);
</script>

</body>
</html>


