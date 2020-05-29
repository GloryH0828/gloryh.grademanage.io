<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>系统后台</title>

<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<style>
body {
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
	font-size: 12px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 14px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgs.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-size: 14px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-size: 14px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-size: 14px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-size: 14px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-size: 14px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>

<body marginwidth="0" marginheight="0">
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tbody><tr>
    <td width="182" valign="top">
    
    
    <div id="container">
    
    
    
    <%
	
	  String role=(String)session.getAttribute("role");
	  
	  if(role!=null){
		  if(role.equals("学生")){
		  
		%>
		
		
		<h1 class="type"><a href="javascript:void(0)">成绩管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
          <li><a href="myGrade.jsp" target="main">成绩查询</a></li>

        </ul>
      </div>
      
      <h1 class="type"><a href="javascript:void(0)">留言管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
          <li><a href="reply.jsp" target="main">我要留言</a></li>
          <li><a href="myreply.jsp" target="main">我的留言</a></li>
        </ul>
      </div>
     
      <h1 class="type"><a href="javascript:void(0)">个人管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
		  <li><a href="#" target="main">修改密码</a></li>
		  <li><a href="#" target="main">修改信息</a></li>

        </ul>
      </div>
		  
		  
		  
		  
		  
		  
		<%  
		     
		  }else if(role.equals("教师")){
		    
      %>
      
            <h1 class="type"><a href="javascript:void(0)">成绩管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
          <li><a href="editgrade.jsp" target="main">录入成绩</a></li>
          <li><a href="teacherAddedGrade.jsp" target="main">已录入成绩</a></li>

        </ul>
      </div>
      
      
      
            <h1 class="type"><a href="javascript:void(0)">留言管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
          <li><a href="myreceivemsg.jsp" target="main">我的留言</a></li>

        </ul>
      </div>
     
      <h1 class="type"><a href="javascript:void(0)">个人管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
		  <li><a href="list.htm" target="main">修改密码</a></li>
		  <li><a href="list.htm" target="main">修改信息</a></li>

        </ul>
      </div>
      
      
      <%    
		    
		    
		    
		  }else if(role.equals("教务人员")){
		  
		  %>
		  
		  
		 
      
      <h1 class="type"><a href="javascript:void(0)">教师管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
          <li><a href="editteacher.jsp" target="main">添加教师</a></li>
          <li><a href="listteacher.jsp" target="main">教师列表</a></li>
        </ul>
      </div>
      
      
       <h1 class="type"><a href="javascript:void(0)">学生管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
          <li><a href="editstudent.jsp" target="main">添加学生</a></li>
          <li><a href="liststudent.jsp" target="main">学生列表</a></li>
        </ul>
      </div>
      
      <h1 class="type"><a href="javascript:void(0)">成绩管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
          <li><a href="#" target="main">添加成绩</a></li>
          <li><a href="#" target="main">成绩列表</a></li>
        </ul>
      </div>
      
     
      <h1 class="type"><a href="javascript:void(0)">个人管理</a></h1>
      <div class="content" style="visibility: hidden; opacity: 0; overflow: hidden; height: 0px; ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/menu_topline.gif" width="182" height="5"></td>
          </tr>
        </tbody></table>
        <ul class="MM">
		  <li><a href="#" target="main">修改密码</a></li>
		  <li><a href="#" target="main">修改信息</a></li>

        </ul>
      </div>
		  
		  
		  
		  
		  <% 
		  }
	  }else{
	     //out.print("<script>window.location.href='login.jsp'</script>");
	     
	     response.sendRedirect("login.jsp");
	     return;
	  }
	  
	  
	 %>
    
    
    
    

      
    </div>
      
	   
      
     <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
    </td>
  </tr>
</tbody></table>


</body></html>