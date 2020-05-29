<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>



<%


  request.setCharacterEncoding("utf-8");

  //1,接收数据
 
 
  String course=request.getParameter("course");
  String score=request.getParameter("score");
  
 String studentid=request.getParameter("studentid");
  String teachername=(String)session.getAttribute("name");
  
  //2,保存到数据库
  JDBCUtil db=new JDBCUtil();
  boolean flag=db.addgrade(course,studentid,teachername,score);
  
  if(flag){
     out.println("<script>alert('录入成功');window.location.href='teacherAddedGrade.jsp'</script>");
  }else{
  
     out.println("<script>alert('录入失败');window.location.href='addgrade.jsp'</script>");
  }
  
  



%>
