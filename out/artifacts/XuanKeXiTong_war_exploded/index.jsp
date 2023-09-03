<%@ page import="Bean.student" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.dao" %><%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>石家庄铁道大学选课管理系统</title>
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
<body>

<form  method="post"  action="houtai.jsp"  class="form-login">
<h2 style="text-align: center;">石家庄铁道大学选课系统</h2>
<br>
<div style="text-align: center;">
    <tr>
        <td>身份：

            <select name="profession">
                <option value="1">管理员</option>
                <option value="2">教师</option>
                <option value="3" selected>学生</option>
            </select>
        </td>
    </tr>

    <tr><td>
        用户名:<input type="text" name="username"><br></tr>

    <tr><td>
        密码:<input pattern="[a-zA-Z0-9]{6,12}" type="password" name="password"></td> </tr>
    </div>

    <tr>
        <td colspan="2"><div align="center">
            <input type="submit" value="登录"></div></td> </tr>
    </table>
    </form>
</div>
</body>
</html>
