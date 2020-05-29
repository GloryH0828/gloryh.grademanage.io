<%@ page language="java" import="java.util.*,com.util.JDBCUtil" pageEncoding="UTF-8"%>


<%

 session.invalidate();
 response.sendRedirect("login.jsp");
 return;

%>