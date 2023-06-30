<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>Trang chủ sản phẩm</title>
  <style>
    img {
      width: 200px; /* Chiều rộng ảnh là 200px */
      height: 350px; /* Chiều cao ảnh là 150px */
    }
  </style>
  <!-- Thêm thẻ meta để tương thích với Bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Thêm link tới file CSS của Bootstrap -->
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="col-md-12">
  <form class="form-inline" action="/demo2_war_exploded/trangchu" method="post">
    <input type="text" name="search" placeholder="Tìm kiếm..."
           class="form-control mr-sm-2" style="width: 8cm">
    <button type="submit" class="btn btn-primary"
            formaction="/demo2_war_exploded/timkiem">Tìm kiếm</button>
  </form>
</div>
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

</body>
</html>


