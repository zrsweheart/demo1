<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 16:31
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
    int tid = Integer.parseInt(request.getParameter("id"));
    teacher teacher=dao.getTeacher(tid);
%>
<form action="updateteacher.jsp" method="post" id="form" onsubmit="return check()" >
    <input type="hidden" name="id" value="<%=tid%>">
    <table>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="tname" ></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="radio" name="tsex" value="男">男&nbsp;
                <input type="radio" name="tsex" value="女">女</td>
        </tr>
        <tr>
            <td>工号</td>
            <td><input type="text" name="tid" ></td>
        </tr>
        <tr>
            <td>学院</td>
            <td><input type="text" name="xueyuan" ></td>
        </tr>
        <tr>
        <tr>
            <td>职称</td>
            <td>
                <label>
                    <select name="zhicheng">
                        <option value="教授">教授</option>
                        <option value="副教授">副教授</option>
                        <option value="讲师">讲师</option>
                        <option value="助教" selected>助教</option>
                    </select>
                </label>
            </td>
        </tr>
            <td><input type="submit" value="确认" ></td>

    </table>
</form>
<script type="text/javascript">
    window.onload=function(){
        var obj=document.getElementById("form");
        obj.tname.value="<%=teacher.getName()%>";
        obj.tsex.value="<%=teacher.getSex()%>";
        obj.xueyuan.value="<%=teacher.getXueyuan()%>";
        obj.zhicheng.value="<%=teacher.getZhicheng()%>";
    }
</script>
<script type="text/javascript">
    function check(){
        obj=document.getElementById('form');
        if(obj.tname.value===""||obj.tsex.value===""||obj.xueyuan.value===""||obj.zhicheng.value===""){
            alert("请将信息填写完整");
            return false;
        }
    }
</script>
</body>
</html>