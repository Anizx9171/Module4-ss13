<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30/11/2023
  Time: 3:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-color: #ffffff; /* Trắng */
            color: #333; /* Đen hoặc màu chữ tự nhiên của trình duyệt */
            font-family: Arial, sans-serif; /* Font chữ sử dụng */
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #f0f0f0; /* Màu xám nhạt hoặc màu khác tùy chọn */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #3498db; /* Xanh dương nhạt */
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #3498db; /* Xanh dương nhạt */
            color: #ffffff; /* Trắng */
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2980b9; /* Màu xanh dương đậm khi hover */
        }
    </style>
</head>
<body>
<div>
    <div>
        <form:form action="/login" method="post" modelAttribute="account">
            <div>
                <h1>Đăng nhập</h1>
                <div>
                    <label for="emailIP">Email:</label>
                    <form:input type="email" path="email" id="emailIP"/>
                </div>
                <div>
                    <label for="passIP">Mật khẩu:</label>
                    <form:input type="password" path="password" id="passIP"/>
                </div>
                <button type="submit">Đăng nhập</button>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>
