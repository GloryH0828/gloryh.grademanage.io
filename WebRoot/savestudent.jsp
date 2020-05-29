<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>



<%


  request.setCharacterEncoding("UTF-8");

  //1,接收数据
  String sno=request.getParameter("sno");
  String studentname=request.getParameter("studentname");
  
  System.out.println("studentname:"+studentname);
  
  String pwd=request.getParameter("pwd");
  
  String major=request.getParameter("major");
  
  
  String studentid=request.getParameter("studentid");
  
  //2,保存到数据库
  JDBCUtil db=new JDBCUtil();
  
  boolean flag=false;
  
  //修改
  if(studentid!=null && !studentid.equals("")){
     flag=db.updatestudent(sno,studentname,pwd,major,studentid);
  }else{//添加
     flag=db.addstudent(sno,studentname,pwd,major);
  }
  
  
  if(flag){
     out.println("<script>alert('录入成功');window.location.href='liststudent.jsp'</script>");
  }else{
  
      //修改
	  if(studentid!=null && !studentid.equals("")){
	     out.println("<script>alert('录入失败');window.location.href='editstudent.jsp?studentid="+studentid+"'</script>");
	  }else{
	     out.println("<script>alert('录入失败');window.location.href='editstudent.jsp'</script>");
	  }

  }
  
  



%>
