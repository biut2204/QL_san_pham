<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/5/2023
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <style>
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      font-family: Arial, sans-serif;
      color: #333;
    }

    h1 {
      font-size: 32px;
      text-align: center;
      margin-bottom: 20px;
    }

    .product {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
      background-color: #f5f5f5;
      border: 1px solid #ddd;
      border-radius: 10px;
      padding: 20px;
    }

    .product img {
      width: 200px;
      height: 200px;
      object-fit: cover;
      margin-right: 20px;
    }

    .product-info h2 {
      font-size: 24px;
      margin-bottom: 10px;
    }

    .product-info p {
      font-size: 16px;
      margin-bottom: 10px;
    }

    .product-info ul {
      margin: 0;
      padding: 0;
      margin-bottom: 10px;
    }

    .product-info li {
      font-size: 16px;
      list-style: none;
      margin-bottom: 5px;
    }

    .product-info p:last-of-type {
      margin-bottom: 0;
    }

    button {
      background-color: #333;
      color: #fff;
      padding: 10px 20px;
      border-radius: 5px;
      border: none;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.2s;
    }

    button:hover {
      background-color: #555;
    }

  </style>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <h1>Sản phẩm mới</h1>
  <h1>${errorMessage}</h1>
  <form action="/demo2_war_exploded/addvideo" method="post"
        enctype="multipart/form-data">
    <div class="product-info">
      <h2>Tiêu đề: <input type="text" placeholder="Tiêu đề" name="Titile"></h2>
      <ul>
        <li>Hình ảnh: <input type="file" name="Poster"></li>
        <li>Link: <input type="text" placeholder="Link" name="Link"></li>
        <li>Description: <input type="text" placeholder="Miêu tả" name="Description"></li>
      </ul>
      <button type="submit">Add</button>
    </div>
  </form>
</div>
</body>
</html>
