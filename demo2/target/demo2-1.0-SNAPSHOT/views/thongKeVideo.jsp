<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Insert title here</title>
</head>
<body>
<form action="/demo2_war_exploded/trangchu" method="post">
  <main class="container mt-3">
    <div class="row">
      <!-- Khung giới thiệu sản phẩm 1 -->
      <c:forEach var="user" items="${thongkevd}">
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
