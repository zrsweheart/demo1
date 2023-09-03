<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/27
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Dao.dao"%>
<%@page import="Bean.lesson"%>
<%@ page import="Bean.teacher" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>添加课程信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    lesson lesson=new lesson();
   lesson.setBianhao(request.getParameter("bianhao"));
    lesson.setNum(request.getParameter("num"));
    lesson.setName(request.getParameter("cname"));
    lesson.setTeacher((String) request.getAttribute("teacher"));
    dao.addLesson(lesson);
    response.sendRedirect("index.jsp");
%>
</body>
</html>
