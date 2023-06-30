<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Thông tin cá nhân</title>
  <style type="text/css">
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: #F5F5F5;
    }
    h1 {
      text-align: center;
      margin-top: 50px;
      color: #555;
    }
    table {
      margin: 0 auto;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }
    th, td {
      padding: 10px;
      border: 1px solid #ddd;
      text-align: left;
    }
    th {
      background-color: #F5F5F5;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    .logout-button {
      position: fixed;
      bottom: 10px;
      right: 10px;
    }
  </style>
</head>
<body>
<h1>Thông tin cá nhân</h1>
<table>
  <tr>
    <th>Thông tin</th>
    <th>Giá trị</th>
  </tr>
  <tr>
    <td>Fullname:</td>
    <td>${taiKhoan.fullname}</td>
  </tr>
  <tr>
    <td>Email:</td>
    <td>${taiKhoan.email}</td>
  </tr>
  <tr>
    <td>Vai trò:</td>
    <td>${taiKhoan.email}</td>
  </tr>
</table>
<form action="/demo2_war_exploded/thongtin" method="POST" class="logout-button">
  <input type="submit" value="Đăng xuất" formaction="/demo2_war_exploded/dangxuat">
</form>
</body>
</html>

