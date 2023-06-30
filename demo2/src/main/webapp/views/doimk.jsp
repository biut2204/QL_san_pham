<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #555;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="password"], input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Đổi mật khẩu</h1>
    <form method="post" action="/demo2_war_exploded/thongtin">
        <label for="oldPassword">Mật khẩu hiện tại:</label>
        <input type="password" id="oldPassword" name="MatKhau1" required>
        <label for="newPassword">Mật khẩu mới:</label>
        <input type="password" id="newPassword" name="MatKhau2" required>
        <label for="confirmPassword">Xác nhận mật khẩu mới:</label>
        <input type="password" id="confirmPassword" name="MatKhau3" required>
        <%-- Display error message if any --%>
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        <input type="submit" value="Đổi mật khẩu" formaction="/demo2_war_exploded/doimatkhau">
    </form>
</div>
</body>
</html>
