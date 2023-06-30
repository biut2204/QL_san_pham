<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 9:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <style>
        body {
            background-color: white;
        }

        * {
            margin: 0px;
            padding: 0px;
            font-family: Arial, Helvetica, sans-serif;
        }

        .logo {
            font-size: 5px;
            padding-left: 2em;
            margin: 5px;
            height: 50px;
        }

        .san_pham {

        }

        .san_pham1 {
            left: 200px;
            margin: 0px;
            display: flex;
            height: 25em;
        }

        .san_pham1 > img {
            padding-top: 100px;
        }

        .ten {
            top: 500px;
            margin: 10px;
            padding: 150px 50px;
            letter-spacing: 5px;
            font-size: 20px;
            margin-left: 1cm;
        }

        .gia {
            font-size: 20px;
            text-align: left;
            margin: 10px;
            color: red;
        }

        .gia del {
            color: grey;
        }

        .gio_hang {
            font-family: Arial, Helvetica, sans-serif;
            position: absolute;
            top: 300px;
            left: 750px;
            border: 1.5px solid black;
            padding: 13px 20px;
            border-radius: 30px;
            font-size: 13pt;
            margin-left: 3cm;
        }

        .gio_hang > p {
            text-decoration: none;
            color: black;
        }

        .gio_hang:hover {
            transition: all .3s linear;
            box-shadow: rgb(0 0 0/ 13%) 0px 10px 20px 0px, rgb(0 0 0/ 19%) 0px 3px 9px 0px;
            background-color: beige;
        }

        .gio_hang_AN {
            font-family: Arial, Helvetica, sans-serif;
            position: absolute;
            top: 300px;
            left: 1000px;
            border: 1.5px solid black;
            padding: 13px 20px;
            border-radius: 30px;
            font-size: 13pt;
            margin-left: 6cm;
        }

        .gio_hang_AN > p {
            text-decoration: none;
            color: black;
        }

        .gio_hang_AN:hover {
            transition: all .3s linear;
            box-shadow: rgb(0 0 0/ 13%) 0px 10px 20px 0px, rgb(0 0 0/ 19%) 0px 3px 9px 0px;
            background-color: beige;
        }

        .ten .nd p {
            font-size: 15px;
            letter-spacing: 2px;
        }

        .table {
            border-collapse: collapse;
            width: 80%;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            margin: 50px;
            float: right;
            height: 30em;
            margin-top: 5cm;
            margin-left: 5cm;
        }

        td {
            padding: 10px 30px;
            margin: 10px;
        }

        th {
            padding: 10px 30px;
        }

        .tr1 {
            background-color: rgb(230, 230, 230);
        }

        .tr2 {
            background-color: rgb(248, 248, 248);
        }

        .th1 {
            font-size: 20px;
        }

        .noibat {
            height: 100px;
            top: 10px;
            padding-top: 200px;
        }

        .noibat h1 {
            margin: 5px 40px;
            font-size: 20px;
            h
        }

        .noibat ul li {
            margin: 5px 40px;
            padding: 0px;
            font-family: Arial, Helvetica, sans-serif;
        }

        .vd {
            padding-top: 130px;
        }
    </style>
</head>
<body>
<c:forEach var="item1" items="${item1}">
    <div class="container">
        <div class="san_pham" ng-controller="my-col1">
            <div class="san_pham1">
                <iframe width="700px" height="500px"
                        src="https://www.youtube.com//embed/${item1.link}"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
                <div class="ten" method="post">
                    <p ng-model="id">${item1.titile}</p>
                    <div class="gio_hang">
                        <p style="margin-top: 10px;">Xem chi tiết</p>
                    </div>

                    <div></div>
                    <table class="table">
                        <tr class="tr1">
                            <td>Titile</td>
                            <td ng-model="name">${item1.titile}</td>
                        </tr>
                        <tr class="tr2">
                            <td>Poster</td>
                            <td ng-model="price">${item1.poster}</td>
                        </tr>
                        <tr class="tr2">
                            <td>Views</td>
                            <td ng-model="type">${item1.views}</td>
                        </tr>
                        <tr class="tr1">
                            <td>Description</td>
                            <td ng-model="sl">${item1.description}</td>
                        </tr>
                        <tr class="tr1">
                            <td>Active</td>
                            <td ng-model="sl">${item1.active}</td>
                        </tr>
                        <button class="gio_hang_AN" ng-click="them()">
                            <p style="margin-top: 10px;">Mua ngay</p>
                        </button>
                    </table>
                </div>
            </div>
        </div>

        <div class="noibat">
            <h1>Đặc điểm nổi bật</h1>
            <ul>
                <li>Thời trang mới mở</li>
                <li>Đẹp đẽ tăng khả năng nhận lì xì</li>
                <li>Tăng lòng tự tin khi ra mắt</li>
                <li>Giả vờ hết FA</li>
            </ul>
        </div>
    </div>
</c:forEach>

</body>
</html>
