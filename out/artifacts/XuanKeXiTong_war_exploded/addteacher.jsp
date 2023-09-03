<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Dao.dao"%>
<%@page import="Bean.student"%>
<%@ page import="Bean.teacher" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>添加教师信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    teacher teacher=new teacher();

    teacher.setTid(request.getParameter("tid"));
    teacher.setName(request.getParameter("tname"));
    teacher.setSex(request.getParameter("tsex"));
    teacher.setXueyuan(request.getParameter("xueyuan"));
    teacher.setZhicheng(request.getParameter("zhicheng"));
    dao.addTeacher(teacher);
    response.sendRedirect("index.jsp");
%>
</body>
</html>
