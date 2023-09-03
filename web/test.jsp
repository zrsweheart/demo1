<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/27
  Time: 0:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*"    contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
< class="Util.Util" scope="page" />
<%
    request.setCharacterEncoding("UTF-8");
    String profession=request.getParameter("profession");
    String username=(String)request.getParameter("username");
    String password=(String)request.getParameter("password");//取出login.jsp的值
    Connection cnn=null;
    Statement st = null;

    //下面是数据库操作
    String sql="select * from userdata where username="+"'"+username+"'";//定义一个查询语句
    st = cnn.createStatement ();
    ResultSet rs= null;//运行上面的语句

        rs = st.executeQuery(sql);


    try {
        if(rs.next())
        {
            /* if(password.equals(rs.getString(2)))
            {

            } */
            if(password.equals(rs.getObject("password"))){
                switch(profession) {
                    case "1":response.sendRedirect("manager.jsp");
                    case "2": response.sendRedirect("teacher.jsp");
                    case "3":response.sendRedirect("student.jsp");}
            }
            else{
                out.print("<script language='javaScript'> alert('密码错误');</script>");
                response.setHeader("refresh", "0;url=login.jsp");
            }
        }
        else
        {
            out.print("<script language='javaScript'> alert('账号错误——else');</script>");
            response.setHeader("refresh", "0;url=login.jsp");
        }
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }

%>
</body>
</html>

