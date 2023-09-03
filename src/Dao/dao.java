package Dao;

import Bean.lesson;
import Bean.student;
import Bean.teacher;
import Util.Util;
import org.jetbrains.annotations.NotNull;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class dao {
    public static void addStudent(@NotNull student student) {
        String sql="insert into student(sid,sname,ssex,classid,zhuanye) "
                + "values('"+student.getSid()+','+student.getName()+"','"+student.getSex()+"','"+student.getClassid()+"','"+student.getZhuanye()+"')";
        Connection connection=Util.getConnection();
        try {
            Statement statement=connection.createStatement();
            statement.executeUpdate(sql);
            Util.close(null,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public static void addTeacher(teacher teacher) {
        String sql="insert into teacher(tid,tname,tsex,xueyuan,zhicheng) "
                + "values('"+teacher.getTid()+','+teacher.getName()+"','"+teacher.getSex()+"','"+teacher.getXueyuan()+"','"+teacher.getZhicheng()+"')";
        Connection connection=Util.getConnection();
        try {
            Statement statement=connection.createStatement();
            statement.executeUpdate(sql);
            Util.close(null,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public static void addLesson(@NotNull lesson lesson) {
        String sql = "insert into lesson(bianhao,cname,num,teacher) "
                + "values('" + lesson.getBianhao() + ',' +lesson.getName() + "','" + lesson.getNum() + "','" + lesson.getTeacher() + "')";
        Connection connection = Util.getConnection();
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
            Util.close(null, statement, connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void updateStudent(student student) {		//锟睫革拷学锟斤拷
        String sql="update student set sname='"+student.getName()+"',ssex='"+student.getSex()+"',"
                + "sid='"+student.getId()+"',zhuanye='"+student.getZhuanye()+"',classid='"+student.getClassid()+"' "
                + "where sid="+student.getId();
        Connection connection=Util.getConnection();
        try {
            Statement statement=connection.createStatement();
            statement.executeUpdate(sql);
            Util.close(null,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static student getStudent(int id) {
        student student=new student();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from student where id="+id;
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                student.setSid(rs.getString("sid"));
                student.setClassid(rs.getString("classid"));
                student.setZhuanye(rs.getString("zhaunye"));
                student.setName(rs.getString("sname"));
                student.setSex(rs.getString("ssex"));
            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return student;
    }

    public static teacher getTeacher(int id) {
        teacher teacher=new teacher();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from teacher where id="+id;
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                teacher.setTid(rs.getString("tid"));
                teacher.setXueyuan(rs.getString("xueyuan"));
                teacher.setZhicheng(rs.getString("zhicheng"));
                teacher.setName(rs.getString("tname"));
                teacher.setSex(rs.getString("tsex"));
            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return teacher;
    }
}
