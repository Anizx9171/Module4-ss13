<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30/11/2023
  Time: 3:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .container {
            background-color: #ffffff; /* Trắng */
            color: #333; /* Đen hoặc màu chữ tự nhiên của trình duyệt */
            font-family: Arial, sans-serif; /* Font chữ sử dụng */
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #3498db; /* Xanh dương nhạt */
            color: #ffffff; /* Trắng */
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9; /* Màu xám nhạt cho hàng chẵn */
        }

        tr:hover {
            background-color: #f1f1f1; /* Màu xám nhạt khi hover */
        }

    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center text-danger">Danh sách sinh viên</h1>
    <table class="table">
        <thead>
        <tr>
            <th>STT</th>
            <th>Name</th>
            <th>Age</th>
            <th>Sex</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="stu">
            <tr>
                <td scope="row">${stu.studentCode}</td>
                <td>${stu.studentName}</td>
                <td>${stu.age}</td>
                <td>${stu.sex ? "nam" : "nữ"}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
