<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Dao.dao"%>
<%@page import="Bean.student"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>修改学生信息</title>
    <style type="text/css">
        .bg {

            background-size:cover;
        }
    </style>
</head>
<body class="bg">
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
  //  int sid = Integer.parseInt(request.getParameter("id"));
   String student= (String) request.getAttribute("student");
%>
<form action="updatestudent.jsp" method="post" id="form" onsubmit="return check()" >
    <input type="hidden" name="id" value="<%=student%>">
    <table>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="sname" ></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="radio" name="ssex" value="男">男&nbsp;
                <input type="radio" name="ssex" value="女">女</td>
        </tr>
        <tr>
            <td>班级</td>
            <td><input type="text" name="classid" ></td>
        </tr>
        <tr>
        <tr>
            <td>专业</td>
            <td><input type="text" name="zhuanye" ></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="确认" ></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    window.onload=function(){
        var obj=document.getElementById("form");
        obj.sname.value="<%=student.getName()%>";
        obj.ssex.value="<%=student.getSex()%>";
        obj.classid.value="<%=student.getClassid()%>";
        obj.zhuanye.value="<%=student.getZhuanye()%>";
    }
</script>
<script type="text/javascript">
    function check(){
        obj=document.getElementById('form');
        if(obj.sname.value===""||obj.ssex.value===""||obj.classid.value===""||obj.zhuanye.value===""){
            alert("请将信息填写完整");
            return false;
        }
    }
</script>
</body>
</html>