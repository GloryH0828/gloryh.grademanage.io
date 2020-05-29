<%@ page language="java" import="java.util.*,com.util.JDBCUtil,java.text.*" pageEncoding="UTF-8"%>



<%

  request.setCharacterEncoding("utf-8");

  //1,接收数据
  String title=request.getParameter("title");
  String teachername=request.getParameter("teachername");
  String content=request.getParameter("content");
  String addtime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
  
  String studentid=(String)session.getAttribute("id");
  
  //2,保存到数据库
  JDBCUtil db=new JDBCUtil();
  String sql="insert into msg set title='"+title+"',content='"+content+"',teachername='"+teachername+"',addtime='"+addtime+"',studentid='"+studentid+"'";
  boolean flag=db.commonupdate(sql);
 

  if(flag){
     out.println("<script>alert('留言成功');window.location.href='myreply.jsp'</script>");
  }else{
	 out.println("<script>alert('留言失败');window.location.href='reply.jsp'</script>");
  }
  

%>
