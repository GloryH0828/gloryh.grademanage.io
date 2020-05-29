<%@ page language="java" import="java.util.*,com.util.JDBCUtil,java.text.*" pageEncoding="UTF-8"%>



<%

  request.setCharacterEncoding("utf-8");

  //1,接收数据
  String msgid=request.getParameter("msgid");
  String replycontent=request.getParameter("replycontent");
  String replytime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
 
  //2,保存到数据库
  JDBCUtil db=new JDBCUtil();
  String sql="update msg set replycontent='"+replycontent+"',replytime='"+replytime+"' where msgid='"+msgid+"'";
  boolean flag=db.commonupdate(sql);
 

  if(flag){
     out.println("<script>alert('回复成功');window.location.href='huifu.jsp?id="+msgid+"'</script>");
  }else{
	 out.println("<script>alert('留回复失败');window.location.href='huifu.jsp?id="+msgid+"'</script>");
  }
  

%>
