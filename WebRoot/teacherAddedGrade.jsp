<%@ page language="java" import="java.util.*,com.util.JDBCUtil;" pageEncoding="utf-8"%>


<%
   JDBCUtil db=new JDBCUtil();
   String teachername=(String)session.getAttribute("name");
   String sql="select a.*,b.* from grade a,student b where a.studentid=b.studentid and teachername='"+teachername+"'";
   List<Map<String,String>> data=db.commonlist(sql);
%>










<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>已录入成绩列表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="css/skin.css" rel="stylesheet" type="text/css">
	

	

	
</head>
<body marginwidth="0" marginheight="0">



<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>

<!-- 表头 start-->
<tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif">
    <img src="images/left-top-right.gif" width="17" height="29">
    </td>
    <td valign="top" background="images/content-bg.gif">
    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="images/left_topbg" id="table2">
     <tbody><tr>
        <td height="31"><div class="titlebt">已录入成绩列表</div></td>
      </tr>
    </tbody>
	</table>
    </td>
    <td width="16" valign="top" background="images/mail_rightbg.gif">
    <img src="images/nav-right-bg.gif" width="16" height="29">
    </td>
</tr>
<!-- 表头 end-->

<!-- 主体 start-->
<tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tbody>

		  <!-- 当前位置 
		  <tr>
            <td class="left_txt">当前位置：信息列表</td>
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
          
		  <!-- 内容 start-->
          <tr>
          	<td>

			<!-- 查询条件 start-->
          	<table class="admin_table font03">			
          	<tbody><tr>
          	<td width="50">查询条件</td>
          	<td>学号：<input name="queryCondition.username" type="text" value=""> </td>
          	<td><input type="submit" value="查 询" class="btn"> </td>
          	</tr>
          	</tbody>
			</table>
			<!-- 查询条件 end -->
            
			<!-- 列表 start -->
          	<table class="admin_table font03">
          	<tbody>
				<tr>
				  <td align="left" background="images/23.jpg"><strong>学生</strong></td>
				  <td align="left" background="images/23.jpg"><strong>专业</strong></td>
				  <td align="left" background="images/23.jpg"><strong>课程</strong></td>
				  <td align="left" background="images/23.jpg"><strong>分数</strong></td>
				  

				</tr>
	        
	          

         <% 
          
            for(int i=0;i<data.size();i++){
                Map<String,String> d=data.get(i);
          %>      
	         <tr onmousemove="this.style.background=&#39;#5CBB44&#39;;" onmouseout="this.style.background=&#39;#EEF2FB&#39;; " style="background-color: rgb(238, 242, 251); background-position: initial initial; background-repeat: initial initial; ">
	        	<td><%=d.get("studentname") %></td>
	        	<td><%=d.get("major") %></td>
	        	<td><%=d.get("course") %></td>
                <td><%=d.get("score") %></td>
                

	        </tr>
			
		 <% 
           }
          
          %>
	        
          	  </tbody>			
			</table>
            <!-- 列表 start -->

          	</td>
          </tr>
          <!-- 内容 end-->
          
		  <!-- 分页 start -->
          <tr>
          <td>
	     	 
			   <form id="pageForm" method="post">
<table align="center" cellpadding="0" cellspacing="0" class="admin_table font03">
  <tr> 
    <td>		 
			  共找到4条记录，每页20条，分1页，当前第1页，
			                                      
                                                       <a href="toPage(1);">首页</a>
			                                                                                               上一页
	          
			                                          
			                                                                                                                                  下一页
		
			                                                                                                                                  尾页                         
				
			
   </td>
  </tr>
</table>

			
		   </td>
         </tr>
		 <!-- 分页 end -->

    </tbody>
	</table>   
    </td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
</tr>
<!-- 主体 start-->

<!-- 表尾 start-->
<tr>
	<td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17"></td>
  	<td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
  	<td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17"></td>
</tr>
<!-- 表尾 end-->

</tbody>
</table>

</body></html>


