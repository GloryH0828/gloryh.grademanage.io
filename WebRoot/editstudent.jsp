<%@ page language="java" import="java.util.*,com.util.*" pageEncoding="utf-8"%>


<%
  //1,接收数据
  String studentid=request.getParameter("studentid");
  Map<String,String> data=null;  
  if(studentid!=null && !studentid.equals("")){
	  JDBCUtil db=new JDBCUtil();
	  //编辑的学生信息
	  data=db.getstudent(studentid);
  }
  

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>编辑学生</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="css/skin.css" rel="stylesheet" type="text/css">
	
	
	<script>
	   function savestudent(){
	       var sno=document.getElementById("sno");
	       if(sno.value=="" || sno.value==null){
	          alert("请输入学号");
	          sno.focus();
	          return false;  
	       }
	       
	       var studentname=document.getElementById("studentname");
	       if(studentname.value=="" || studentname.value==null){
	          alert("请输入姓名");
	          studentname.focus();
	          return false;  
	       }
	       
	       var pwd=document.getElementById("pwd");
	       if(pwd.value=="" || pwd.value==null){
	          alert("请输入密码");
	          pwd.focus();
	          return false;  
	       }
	       
	       var major=document.getElementById("major");
	       if(major.value=="" || major.value==null){
	          alert("请选择专业");
	          major.focus();
	          return false;  
	       }
	       
	       
	       //提交
	       document.getElementById("form2").submit();
	       
	   
	   }
	</script>
	

</head>
<body marginwidth="0" marginheight="0">

<input type="hidden" name="operate" value="update">

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<!-- 表头  start-->
<tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif">
    <img src="images/left-top-right.gif" width="17" height="29">
    </td>
    <td valign="top" background="images/content-bg.gif">
    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
     <tbody><tr>
        <td height="31"><div class="titlebt">编辑学生</div></td>
      </tr>
    </tbody></table>
    </td>
    <td width="16" valign="top" background="images/mail_rightbg.gif">
    <img src="images/nav-right-bg.gif" width="16" height="29">
    </td>
</tr>
<!-- 表头  end-->

<!-- 主体 start-->
<tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tbody>
		  <!-- 当前位置 
		  <tr>
            <td class="left_txt">当前位置：添加</td>
          </tr>
		  -->
		  <!-- 分割线 start-->
          <tr>
            <td height="20">
            <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
             <tbody><tr><td></td></tr>
            </tbody></table>
            </td>
          </tr>
		  <!-- 分割线 end-->
          
		  <!-- 内容 satrt-->
          <tr>
          	<td>
                   <!--表单 start-->
				   <form name="form2" id="form2" method="post" action="savestudent.jsp">
					<table class="admin_table font03">
					<tbody>
					<tr>
					  <td width="16%" id="td_align_right">学号</td>
					  <td id="td_align_left">
					  <input type="text" style="width:300px" name="sno" id="sno" value="<%if(studentid!=null && !studentid.equals("")){out.print(data.get("sno"));} %>" >
					  </td>
					</tr>
					
					<tr>
					  <td width="16%" id="td_align_right">姓名</td>
					  <td id="td_align_left">
					  <input type="text" style="width:300px" name="studentname" id="studentname" value="<%if(studentid!=null && !studentid.equals("")){out.print(data.get("studentname"));} %>" >
					  </td>
					</tr>
					
					<tr>
					  <td width="16%" id="td_align_right">密码</td>
					  <td id="td_align_left">
					  <input type="text" style="width:300px" name="pwd" id="pwd" value="<%if(studentid!=null && !studentid.equals("")){out.print(data.get("pwd"));} %>" >
					  </td>
					</tr>
					
					
					<tr>
					  <td width="16%" id="td_align_right">专业</td>
					  <td id="td_align_left">
					  

						<select id="major" name="major">
						      <option value="">请选择</option>
						      <option value="网络工程" <%if(studentid!=null && !studentid.equals("")){if(data.get("major").equals("网络工程")){out.print("selected='selected'");}} %>>网络工程</option>
						      <option value="计算机应用技术" <%if(studentid!=null && !studentid.equals("")){if(data.get("major").equals("计算机应用技术")){out.print("selected='selected'");}} %>>计算机应用技术</option>
						      <option value="数字媒体技术" <%if(studentid!=null && !studentid.equals("")){if(data.get("major").equals("数字媒体技术")){out.print("selected='selected'");}} %>>数字媒体技术</option>
						      <option value="计算机科学与技术" <%if(studentid!=null && !studentid.equals("")){if(data.get("major").equals("计算机科学与技术")){out.print("selected='selected'");}} %>>计算机科学与技术</option>
						      <option value="电子商务" <%if(studentid!=null && !studentid.equals("")){if(data.get("major").equals("电子商务")){out.print("selected='selected'");}} %>>电子商务</option>

						     </select>


					  </td>
					</tr>
					
					
					
					
					
					
					
					<tr>
					  <td colspan="2">
					    <input type="hidden" name="studentid" value="<%if(studentid!=null && !studentid.equals("")){out.print(data.get("studentid"));}%>">
					  <input type="button" onclick="savestudent()" value="保存" class="btn"> 
					  
					  
					  </td>
					</tr>
					
					</tbody>
				</table>
				</form>
				<!--表单 end-->

          	</td>
          </tr>
          <!-- 内容 end-->


    </tbody></table>   
    </td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
</tr>
<!-- 主体 end-->

<!-- 表尾 start-->
<tr>
    
	<td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17"></td>
  	<td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
  	<td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17">
	</td>
	
</tr>
<!-- 表尾 start-->

</tbody>
</table>




</body>
</html>