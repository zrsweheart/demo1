package Dao;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.lesson;
import Bean.student;
import Bean.teacher;
import org.jetbrains.annotations.NotNull;


/**
 * Servlet implementation class servlet
 */

@WebServlet("/servlet")
public class servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(@NotNull HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //response.getWriter().append("Served at: ").append(request.getContextPath());
        request.setCharacterEncoding("utf-8");
        String method=request.getParameter("method");
        if(method.equals("add")){
            try {
                add(request,response);
            } catch (ServletException | IOException | SQLException e) {
                e.printStackTrace();
            }
        }
    }




   /* public void add(@NotNull HttpServletRequest request, @NotNull HttpServletResponse response) throws ServletException, IOException, SQLException {
        student student = new student();
        teacher teacher = new teacher();
        lesson lesson = new lesson();
        student.setId(request.getParameter("sid"));
        student.setZhuanye(request.getParameter("zhuanye"));
        student.setName(request.getParameter("sname"));
        student.setSex(request.getParameter("ssex"));
        teacher.setId(request.getParameter("tid"));
        teacher.setXueyuan(request.getParameter("xueyuan"));
        teacher.setName(request.getParameter("tname"));
        teacher.setSex(request.getParameter("tsex"));
        teacher.setZhicheng(request.getParameter("zhicheng"));
        lesson.setName(request.getParameter("cid"));
        lesson.setBianhao(request.getParameter("bianhao"));
        lesson.setNum(request.getParameter("num"));
        lesson.setTeacher(request.getParameter("teacher"));
        dao.addStudent(student);
        dao.addLesson(lesson);
        dao.addTeacher(teacher);
        try {
            response.sendRedirect("index.jsp");
        } catch (IOException e) {

            e.printStackTrace();
        }



       // protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // TODO Auto-generated method stub
            doGet(request, response);
        }



    }
  }*/



    public void add(@NotNull HttpServletRequest request, @NotNull HttpServletResponse response) throws ServletException, IOException, SQLException {
        student student = new student();
        teacher teacher = new teacher();
        lesson lesson = new lesson();
        student.setSid(request.getParameter("sid"));
        student.setZhuanye(request.getParameter("zhuanye"));
        student.setName(request.getParameter("sname"));
        student.setSex(request.getParameter("ssex"));
       teacher.setTid(request.getParameter("tid"));
        teacher.setXueyuan(request.getParameter("xueyuan"));
        teacher.setName(request.getParameter("tname"));
        teacher.setSex(request.getParameter("tsex"));
        teacher.setZhicheng(request.getParameter("zhicheng"));
        lesson.setName(request.getParameter("cid"));
        lesson.setBianhao(request.getParameter("bianhao"));
        lesson.setNum(request.getParameter("num"));
        lesson.setTeacher(request.getParameter("teacher"));
        dao.addStudent(student);
        dao.addLesson(lesson);
        dao.addTeacher(teacher);
        try {
            response.sendRedirect("index.jsp");
        } catch (IOException e) {
            // TODO 鑷姩鐢熸垚鐨� catch 鍧�
            e.printStackTrace();
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}