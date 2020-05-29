<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>页面上侧</title>

<script language="JavaScript1.2">
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>

<!-- 
<meta http-equiv="refresh" content="60"> -->
<script language="JavaScript1.2">
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<!--<base target="main">--><base href="." target="main">
<link href="css/skin.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tbody><tr>
    <td width="45%" height="64"><img src="images/logo.gif" width="262" height="64"></td>
    <td width="55%" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="74%" height="38" class="admin_txt">
        用户：<span style='color:red'><%=session.getAttribute("username") %>（<%=session.getAttribute("name") %>）</span>  您好，欢迎登录！当前角色：<span style='color:red'><%=session.getAttribute("role") %></span></b>
        
		<a href="#" target="main" style='color:white'>修改密码</a>


		
        </td>
        <td width="22%"><a href="logout.jsp" target="_top"><img src="images/out.gif" alt="安全退出" width="46" height="20" border="0"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
      </tr>
    </tbody></table>
   </td>
  </tr>
</tbody></table>


</body></html>