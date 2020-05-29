<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>



<%


  request.setCharacterEncoding("utf-8");

  //1,接收数据
  
  String teacherid=request.getParameter("teacherid");
  
  JDBCUtil db=new JDBCUtil();
  
  boolean flag=db.delteacher(teacherid);
 

  if(flag){
     out.println("<script>alert('删除成功');window.location.href='listteacher.jsp'</script>");
  }else{
     out.println("<script>alert('删除失败');window.location.href='listteacher.jsp'</script>");
  }
  
  



%>
