<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>添加教师信息</title>
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
