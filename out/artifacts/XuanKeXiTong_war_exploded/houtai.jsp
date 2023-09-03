<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/11/26
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>


<%@ page import="java.sql.*"    contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Bean.lesson" %>
<html>
<head>
    <title>从index获取数据</title>

</head>
<body>
<%
    //获取前端index的登录数据
    request.setCharacterEncoding("UTF-8");//编码一定设置
    String profession=request.getParameter("profession");
  //  String username=request.getParameter("username");
    String password=request.getParameter("password");//取出login.jsp的值
/*
*
 * 查询获得多条数据
 * */
//1.将Driver驱动加载进jvm
  //  try {
  //      Class.forName ("com.mysql.cj.jdbc.Driver");
  //  } catch (ClassNotFoundException e) {
  //      e.printStackTrace();
 //   }
   //   String mysqlname = "xuanke";
  //   String url = "jdbc:mysql://localhost:3306/"+mysqlname+"?serverTimezone=UTC";
  //  Connection cnn=null;
 //   Statement st = null;
//
  //  try {
        //2.创建链接对象
   //     cnn =  DriverManager.getConnection (url, "root", "123456");
        //3。创建sql语句

    //    String sql = "select * from userdata where username=" + "'" + username + "'";//定义一个查询语句
     //   System.out.println (sql);
        //创建链接管道
    //    st = cnn.createStatement ();
        //4.执行sql语句
    //    ResultSet res=st.executeQuery(sql);//运行上面的语句
  //  res.getObject("password"
        if (password.equals("123456")){
            switch(profession) {
                case "1":response.sendRedirect("manager.jsp");break;
                case "2": String teacher=request.getParameter("username");
                  //  session.setAttribute("teacher", teacher);
                    request.setAttribute("teacher", teacher);
                          response.sendRedirect("teacher.jsp");break;
                case "3":String student=request.getParameter("username");
                    //  session.setAttribute("teacher", teacher);
                    request.setAttribute("student", student);
                    response.sendRedirect("student.jsp");break;
            }

        } else {
            out.print("<script language='javaScript'> alert('密码错误');</script>");
            response.setHeader("refresh", "0;url=index.jsp");
        }
   // }catch (Exception ignored){

  //  }
%>


</body>
</html>
