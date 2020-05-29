<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>



<%


  request.setCharacterEncoding("utf-8");

  //1,接收数据
  String gno=request.getParameter("gno");
  String teachername=request.getParameter("teachername");
  String pwd=request.getParameter("pwd");
  
  
  String teacherid=request.getParameter("teacherid");
  
  //2,保存到数据库
  JDBCUtil db=new JDBCUtil();
  
  boolean flag=false;
  
  //修改
  if(teacherid!=null && !teacherid.equals("")){
     flag=db.updateteacher(gno,teachername,pwd,teacherid);
  }else{//添加
     flag=db.addteacher(gno,teachername,pwd);
  }
  
  
  if(flag){
     out.println("<script>alert('录入成功');window.location.href='listteacher.jsp'</script>");
  }else{
  
      //修改
	  if(teacherid!=null && !teacherid.equals("")){
	     out.println("<script>alert('录入失败');window.location.href='editteacher.jsp?teacherid="+teacherid+"'</script>");
	  }else{
	     out.println("<script>alert('录入失败');window.location.href='editteacher.jsp'</script>");
	  }

  }
  
  



%>
