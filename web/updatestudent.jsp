<%@page import="Dao.dao"%>
<%@page import="Bean.student"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改学生信息</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	student student=new student();
	student.setSid(request.getParameter("sid"));
	student.setName(request.getParameter("sname"));
	student.setSex(request.getParameter("ssex"));
	student.setClassid(request.getParameter("classid"));
	student.setZhuanye(request.getParameter("zhuanye"));
	dao.updateStudent(student);
	response.sendRedirect("index.jsp");
%>
</body>
</html>