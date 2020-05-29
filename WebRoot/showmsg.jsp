<%@ page language="java" import="java.util.*,com.util.*" pageEncoding="utf-8"%>

<% 

   JDBCUtil db=new JDBCUtil();
   String msgid=request.getParameter("id");
   String sql="select * from msg where msgid="+msgid;
   Map<String,String> data=db.commonlist(sql).get(0);
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>留言详情</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="css/skin.css" rel="stylesheet" type="text/css">
	
	
	<script>
	   function reply(){
	       var title=document.getElementById("title");
	       if(title.value=="" || title.value==null){
	          alert("请输入标题");
	          title.focus();
	          return false;  
	       }
	       
	       var teachername=document.getElementById("teachername");
	       if(teachername.value=="" || teachername.value==null){
	          alert("请选择老师");
	          teachername.focus();
	          return false;  
	       }
	       
	       var content=document.getElementById("content");
	       if(content.value=="" || content.value==null){
	          alert("请输入留言内容");
	          pcontent.focus();
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
        <td height="31"><div class="titlebt">留言详情</div></td>
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
				   <form name="form2" id="form2" method="post" action="savemsg.jsp">
					<table class="admin_table font03">
					<tbody>
					<tr>
					  <td width="16%" id="td_align_right">标题</td>
					  <td id="td_align_left">
					    <%=data.get("title") %>
					  </td>
					</tr>
					
					<tr>
					  <td width="16%" id="td_align_right">老师</td>
					  <td id="td_align_left">
					    <%=data.get("teachername") %>
					  </td>
					</tr>
					
					
					<tr>
					  <td width="16%" id="td_align_right">内容</td>
					  <td id="td_align_left" style="line-height:30px">
					    <%=data.get("content") %>
					  </td>
					</tr>
					
					
					
					<%
					
					
	        	  if(data.get("replytime")!=null && !data.get("replytime").equals("")){
	        	  %>
	        	  
	        	  <tr>
					  <td width="16%" id="td_align_right">回复内容</td>
					  <td id="td_align_left">
					    <%=data.get("replycontent")  %>
					  </td>
					</tr>
					<tr>
					  <td width="16%" id="td_align_right">回复时间</td>
					  <td id="td_align_left">
					    <%=data.get("replytime") %>
					  </td>
					</tr>
	        	  
	        	  <% 
	        	 
	        	  }
				 %>
					
					
					
					
				
					
					
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