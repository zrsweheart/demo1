<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>添加学生信息</title>
    <style type="text/css">
        .bg {

            background-size:cover;
        }
    </style>
</head>
<body class="bg">
<div>
    <form action="servlet?method=add" method="post" id="form" onsubmit="return check()" >
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
                <td>学号</td>
                <td><input type="text" name="sid" ></td>
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
            <tr align="center">
                 <br> 如果不再修改 <br>

                    请点击 <a href="manager.jsp">这里回到主页面</a>!!! <br>


            </tr>
        </table>
    </form>
</div>
</body>
<script type="text/javascript">
    function check(){
        obj=document.getElementById('form');
        if(obj.sname.value===""||obj.ssex.value===""||obj.classid.value===""||obj.zhuanye.value===""||obj.sid.value===""){
            alert("请将信息填写完整");
            return false;
        }
    }
</script>
</html>
