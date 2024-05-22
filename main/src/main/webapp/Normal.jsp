<%-- 
    Document   : Normal
    Created on : Apr 13, 2024, 3:09:41 AM
    Author     : devan
--%>
<%@page import="com.entities.User"%>
<% 
 User user = (User)session.getAttribute("current-user") ;  
 if(user ==null){ 
	 session.setAttribute("message", "your are not logged in") ;
	 response.sendRedirect("Login.jsp") ;
	 return ;
 } 

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Normal user</title> 
<%@include file="components/common_css_js.jsp" %>
</head>
<body>
 <%@include file="components/navbar.jsp" %>  
</body>
</html>
