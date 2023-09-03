<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员功能页面</title>
    <style type="text/css">
        .bg {
            background-image:url(images/bg_2.jpg);
            background-size:cover;
        }
        *{font-style: "微软雅黑"}
        #table{ border-collapse: collapse; margin: auto;text-align: center;}
        #table th{background-color: #fff7d5;border: 1px solid black;}
        #table td{background-color:#cffcd5;border: 1px solid black;padding: 15px;color: #000;}
        #table a{text-decoration: none;font-weight: bold;}
        #table a:hover {text-decoration: underline;}
    </style>
</head>
<body class="bg">
<h2 style="text-align: center;">你好！管理员，请选择以下操作</h2>
<br>
<div style="text-align: center;">
    <a href="add.jsp" target="_self">添加学生信息</a><br>
    <a href="add2.jsp" target="_self">添加教师信息</a><br>

</div>
<br>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");

%>

</body>
</html>
