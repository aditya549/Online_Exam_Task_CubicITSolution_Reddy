<%@page import="com.cubic.Beans.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged out</title>
</head>
<body>
<% 
AdminBean ab=(AdminBean)session.getAttribute("UserBean");
String aname=ab.getAname();
session.invalidate();
%>
<p style="text-align: center;"><%=aname %> You'r Logged Out</p> 
<%@ include file="adminlogin.jsp" %>

</body>
</html>