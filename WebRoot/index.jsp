<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统主框架</title>
</head>
<frameset rows="64,*" frameborder="NO" border="0" framespacing="0">
	<frame src="top.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main">
  <frameset cols="200,*" rows="90%,*" id="frame">
	<frame src="left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main">
	
	<%
	
	  String role=(String)session.getAttribute("role");
	  
	  String url="";
	  if(role!=null){
		  if(role.equals("学生")){
		      url="myGrade.jsp";
		  }else if(role.equals("教师")){
		      url="editgrade.jsp";
		  }else if(role.equals("教务人员")){
		      url="listteacher.jsp";
		  }
	  }else{
	     //out.print("<script>window.location.href='login.jsp'</script>");
	     
	     response.sendRedirect("login.jsp");
	     return;
	  }
	  
	  
	 %>
	<frame src="<%=url%>" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self">
    
  </frameset>
</frameset>

</html>