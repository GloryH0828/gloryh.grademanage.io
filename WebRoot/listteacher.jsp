<%@ page language="java" import="java.util.*,com.util.JDBCUtil;" pageEncoding="utf-8"%>


<%
   JDBCUtil db=new JDBCUtil();
   
   //1,当前页
   int curpage=1;
   
   String t=request.getParameter("curpage");
   if(t!=null && !t.equals("")){
       curpage=Integer.parseInt(t);
   }
   

   //2,页大小
   int pagesize=1;
   //3,总记录数
   int totalcount=Integer.parseInt(db.commonlist("select count(*) total from teacher").get(0).get("total"));
   //4,总页数
   int totalpage=0;
   if(totalcount%pagesize==0){
      totalpage=totalcount/pagesize;
   }else{
     totalpage=totalcount/pagesize+1;
   }
   
   if(curpage<=1){
      curpage=1;
   }else if(curpage>=totalpage){
      curpage=totalpage;
   }

   
   //开始记录的索引
   int startindex=(curpage-1)*pagesize;
   
   String sql="select * from teacher limit "+startindex+","+pagesize;
   
   //查询数据
   List<Map<String,String>> data=db.commonlist(sql);
   
   
   
   
%>










<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>教师/学生列表</title>
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
        <td height="31"><div class="titlebt">教师列表</div></td>
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
				  <td align="left" background="images/23.jpg"><strong>工号</strong></td>
				  <td align="left" background="images/23.jpg"><strong>姓名</strong></td>
				  <td align="left" background="images/23.jpg"><strong>密码</strong></td>
				  <td align="left" background="images/23.jpg"><strong>操 作</strong></td>
				</tr>
	        
	          

         <% 
          
            for(int i=0;i<data.size();i++){
                Map<String,String> d=data.get(i);
          %>      
	         <tr onmousemove="this.style.background=&#39;#5CBB44&#39;" onmouseout="this.style.background=&#39;#EEF2FB&#39;" style="background-color: rgb(238, 242, 251); background-position: initial initial; background-repeat: initial initial; ">
	        	<td><%=d.get("gno") %></td>
	        	<td><%=d.get("teachername") %></td>
	        	<td><%=d.get("pwd") %></td>

	        	<td>
	        	<a href="editteacher.jsp?teacherid=<%=d.get("teacherid") %>">编辑</a><b>|</b>
	        	<a href="delteacher.jsp?teacherid=<%=d.get("teacherid") %>">删除</a>
	        	</td>
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
			  共找到<%=totalcount %>条记录，每页<%=pagesize %>条，分<%=totalpage %>页，当前第<%=curpage %>页，
             
             <% 
              if(curpage>1){
             %>
              <a href="listteacher.jsp?curpage=1">首页</a>
             <% 
              }else{
              %>
                首页
             <% 
              }
             %>
             
            
             <% 
              if(curpage!=1){
             %>
              <a href="listteacher.jsp?curpage=<%=curpage-1 %>">上一页</a>
             <% 
              }else{
              %>
                上一页
             <% 
              }
             %>
			 
			 
			 <% 
              if(curpage!=totalpage){
             %>
              <a href="listteacher.jsp?curpage=<%=curpage+1 %>">下一页</a>
             <% 
              }else{
              %>
               下一页
             <% 
              }
             %>
             
             
              <% 
              if(curpage==totalpage){
             %>
                    尾页
             <% 
              }else{
              %>
                 <a href="listteacher.jsp?curpage=<%=totalpage %>">尾页</a>
             <% 
              }
             %>
			 
			 
	          
		                            
				
			
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


