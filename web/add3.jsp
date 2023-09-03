<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/27
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>添加课程信息</title>
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
                <td>课程编号：</td>
                <td>
                    <input pattern="[a-zA-Z0-9]{6,6}" name="bianhao" >
                </td>
            </tr>
            <tr>
                <td>课程名称：</td>
                <td>
                    <input type="text" name="cname">
                </td>
            </tr>

            <tr>
                <td>选课人数：</td>
                <td>
                    <input type="text" name="num">
                </td>
            </tr>



            <tr>
                <td colspan="2"><div align="center">
                    <input type="submit" value="添加课程">
                </div>
                </td>
            </tr>
            <tr align="center">
                 <br> 如果不再修改 <br>

                    请点击 <a href="teacher.jsp">这里回到主页面</a>!!! <br>

            </tr>
        </table>

    </form>
</div>
</body>
<script type="text/javascript">
    function check(){
        obj=document.getElementById('form');
        if(obj.cname.value===""||obj.num.value===""||obj.bianhao.value===""){
            alert("请将信息填写完整");
            return false;
        }
    }
</script>
</html>
