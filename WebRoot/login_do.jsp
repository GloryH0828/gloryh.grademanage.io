<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>



<%


  request.setCharacterEncoding("utf-8");

  //1,接收数据
  
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  String role=request.getParameter("role");
  
  JDBCUtil db=new JDBCUtil();
  
  
  Map<String,String> record=null;
  

  
  if(role.equals("学生")){
      record=db.validateStudent(username,password);
  
     //把登录成功的信息保存到session中
     session.setAttribute("name",record.get("studentname"));
     session.setAttribute("id",record.get("studentid"));

  }else if(role.equals("教师")){
     record=db.validateTeacher(username,password);
     
     //把登录成功的信息保存到session中
     session.setAttribute("name",record.get("teachername"));
     
  }else if(role.equals("教务人员")){
     record=db.validateAdmin(username,password);
     
     //把登录成功的信息保存到session中
     session.setAttribute("name",record.get("name"));
  }

  if(record!=null){
  
     session.setAttribute("role",role);
     session.setAttribute("username",username);
   
     out.println("<script>alert('登录成功');window.location.href='index.jsp'</script>");
  }else{
     out.println("<script>alert('登录失败');window.location.href='login.jsp'</script>");
  }
  
  



%>
