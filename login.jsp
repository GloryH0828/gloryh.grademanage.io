<%@ page language="java" import="java.util.*,com.hgh.utils.*" pageEncoding="utf-8"%>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信商学生成绩综合管理系统</title>
<link href="login/images/login.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript">
  function login(){
    var username=document.getElementById("number");
		if(username.value==""||username.value==null){
		alert("请输入账号！");
		username.focus();
		return false;
	}
	var password=document.getElementById("password");
	if(password.value==""||password.value==null){
		alert("请输入密码！");
		password.focus();
		return false;
	}
/* 	var imagecode=document.getElementById("imagecode");
	if(imagecode.value==""||imagecode.value==null){
		alert("验证码");
		imagecode.focus();
		return false;
	} */
	
	return document.getElementById("form").submit();
    }
		
	</script>

</head>



<body>
<form action="com.hgh.servlet/Userservlet" method="post">
    <input type="hidden" name="action" value="login"/>
    <div id="login">
	
	     <div id="top">
		      <div id="top_left"><br /><img src="login/images/login_03.gif" /></div>
			  <div id="top_center"></div>
		 </div>
		 
		 <div id="center">
		      <div id="center_left"></div>
			  <div id="center_middle">
			       <div id="user">账&nbsp;&nbsp;号
			         <input type="text" id="number" name="number" placeholder="请输入账号" value=""/>
			       </div>
			        <%
    		//从error中取出unerror，判断unerror是否存在
            Map<String,Object> error = (HashMap<String,Object>)request.getAttribute("error");
    		if(error!=null){
    			String unerror = (String)error.get("unerror");
        		if(unerror != null){//说明未填写用户名
        			out.println(unerror);
        		}
    		}
    	%>
				   <div id="pwd">密&nbsp;&nbsp;码
				     <input type="password" id="password" name="password" placeholder="请输入密码" value=""/>
				    
				   </div>
				   
				   
				   <div class="aa">角色
				     
				     <select id="role" name="role">
				       <option value="student">学生</option>
				       <option value="teacher">教师</option>
				       <option value="admin">管理员</option>
				     </select>
				     
				     
				   </div>
				   
				  
				   <br />
				   <div >
    	<input id="rem" name="rem" type="checkbox">记住我？</input>
    	</div>
    			<br />
    <div  style='padding-left:40px'><input id="btn"type="submit" onclick="login()" value="登录"/></div>
    
    </div>
			  <div id="center_right"></div>		 
		 </div>
		 <div id="down">
		      <div id="down_left">
			      <div id="inf">
                       <span class="inf_text"></span>
					   <span class="copyright">信息技术系 技术支持</span>
			      </div>
			  </div>
			  <div id="down_center"></div>		 
		 </div>

	</div>
</form>



</body>

</html>

