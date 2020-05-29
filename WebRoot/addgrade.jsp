<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'addgrade.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<style>
	  p{color:red}
	  .abc{font-size:30px}
	
	</style>
	
	<script>
	   function addgrade(){
	       var sno=document.getElementById("sno");
	       if(sno.value=="" || sno.value==null){
	          alert("请输入学号");
	          sno.focus();
	          return false;  
	       }
	       
	       var name=document.getElementById("name");
	       if(name.value=="" || name.value==null){
	          alert("请输入姓名");
	          name.focus();
	          return false;  
	       }
	       
	       
	       //提交
	       document.getElementById("form1").submit();
	       
	   
	   }
	</script>
	
	
	

  </head>
  
  <body> 
   
   <p style="font-size:28px;background-color:green;text-align:center;width:500px;border:1px solid  red">成绩录入</p>
   
  
  <p style='margin-top:30px;border:1px dotted blue;padding:15px'>请务必填写所有信息</p>
  
  <form id="form1" action="savegrade.jsp" method="post">
  
   
     <span class="abc">学号：</span><input id="sno" type="text" name="sno"/><br/>

  姓名：<input id="name" type="text" name="name"/><br/>
  
  专业：<select name="major">
      <option value="网络工程">网络工程</option>
      <option value="计算机应用技术">计算机应用技术</option>
      <option value="数字媒体技术">数字媒体技术</option>
      <option value="计算机科学与技术技术">计算机科学与技术</option>
      <option value="软件工程">软件工程</option>
         <option value="电子商务">电子商务</option>
     </select>
       <br/>
    课程：<input id="course" type="text" name="course" /><br/>
    分数：<input id="score" type="text" name="score"/><br/>
    
    
   教师：<input id="teacher" type="text" name="teacher"/><br/>    
   
   
   <input type="button" value="添加" onclick="addgrade()">
       
     
  </form>
  
  
  
   
  </body>
</html>
