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
<form action="/demo6_war_exploded/thongkeuser"
      method="post">
  <div class="form-group">
    <label for="email">Email:</label> <input type="email" id="email"
                                             name="email" value="${edittk.email}" class="form-control">
  </div>

  <div class="form-group">
    <label for="fullname">Full name:</label> <input type="text"
                                                    id="fullname" name="fullname" value="${edittk.fullname}"
                                                    class="form-control">
  </div>

  <div class="form-group">
    <label for="password">Password:</label> <input type="password"
                                                   id="password" name="password" value="${edittk.matKhau}"
                                                   class="form-control">
  </div>
  <div class="form-group">
    <label for="fullname">Vai trò:</label> <input type="text"
                                                  id="fullname" name="fullname" value="${edittk.vaiTro}"
                                                  class="form-control">
  </div>
</form>
<form action="/demo2_war_exploded/thongkeuser"
      method="post">
  <table border="1">
    <tr>
      <td>Email</td>
      <td>MatKhau</td>
      <td>FullName</td>
      <td>VaiTro</td>
      <td></td>
    </tr>
    <c:forEach var="user" items="${listtk}">
      <tr>
        <td>${user.email}</td>
        <td>${user.fullname}</td>
        <td>${user.matKhau}</td>
        <td>${user.vaiTro}</td>
        <td>
          <button name="email" value="${user.email}" type="submit">Edit</button>
        </td>
      </tr>
    </c:forEach>

  </table>
</form>
</body>
</html>