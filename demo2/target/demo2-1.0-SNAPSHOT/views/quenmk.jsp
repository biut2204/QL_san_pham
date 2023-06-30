<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Quên mật khẩu</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: #f2f2f2;
      font-family: sans-serif;
    }
    .container {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
      width: 350px;
    }
    .container h1 {
      color: #333;
      font-size: 30px;
      font-weight: 500;
      margin-bottom: 30px;
      text-align: center;
    }
    .container input[type="text"], .container input[type="email"] {
      border: none;
      border-bottom: 1px solid #999;
      background: transparent;
      outline: none;
      height: 40px;
      width: 100%;
      font-size: 16px;
      margin-bottom: 30px;
      padding: 0px 10px;
    }
    .container input[type="submit"] {
      border: none;
      background: #4CAF50;
      color: #fff;
      height: 40px;
      width: 100%;
      font-size: 16px;
      border-radius: 20px;
      cursor: pointer;
      transition: all 0.3s ease-in-out;
    }
    .container input[type="submit"]:hover {
      background: #333;
      transform: translateY(-5px);
      box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
    }
    .container .links {
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
    }
    .container .links a {
      color: #333;
      text-decoration: none;
      font-size: 14px;
      font-weight: 500;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Quên mật khẩu</h1>
  <form action="/demo2_war_exploded/thongtin" method="post">
    <input type="text" placeholder="Email" name="Email">
    <input type="submit" value="Gửi yêu cầu" formaction="/demo2_war_exploded/quenmatkhau">
  </form>
  <div>${message}</div>
  <div class="links">
    <a href="/demo2_war_exploded/dangnhap">Đăng nhập</a>
    <a href="/demo2_war_exploded/dangki">Đăng kí</a>
  </div>
</div>
</body>
</html>
