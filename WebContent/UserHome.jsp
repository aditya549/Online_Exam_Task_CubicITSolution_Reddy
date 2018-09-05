<%@page import="com.cubic.Beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
a:hover
  {
    color:red;
    text-decoration:underline;
    cursor:pointer;
   }
</style>
</head>
<body>
<%
UserBean user=(UserBean)session.getAttribute("user");
String name=user.getUname();
%>
<h1 style="text-align: center;border:outset;margin-left: 400px;margin-right: 400px;">Welcome <b style="border: outset;"><%=name %></b> To Cubic It Solution</h1>
<hr style="margin-left: 400px;margin-right: 400px;border-bottom: outset;">
<hr style="margin-left: 400px;margin-right: 400px;border-bottom: outset;">
<%-- <h1 style="text-align: center;">You'r Belongs To <b style="border: outset;"><%=user.getDomain() %></b> Domain</h1> --%>
<div style="text-align: center;border-left: double;border-right:double;margin-left: 400px;margin-right: 400px">
<h2 style="border: outset;margin-left: 40px;margin-right: 40px">
	<a href="http://cubicitsolution.co.in/welcome/about" target="_blank" style="color: inherit;text-decoration: none">About Cubic It</a></h2><br><br><br>
<h2 style="border: outset;margin-left: 40px;margin-right: 40px">
	<a href="UserTest.jsp" style="color: inherit;text-decoration: none">Take Test</h2><br><br><br>
<h2 style="border: outset;margin-left: 40px;margin-right: 40px">
	<a href="Profile.jsp" style="color: inherit;text-decoration: none">View Profile</h2><br><br><br>
<h2 style="border: outset;margin-left: 40px;margin-right: 40px">
<a href="UserLogout.jsp" style="color: inherit;text-decoration: none">Logout</h2><br><br><br>
</div>
<hr style="margin-left: 400px;margin-right: 400px;border-bottom: outset;">
<hr style="margin-left: 400px;margin-right: 400px;border-bottom: outset;">
<p style="text-align: center;">&copy &reg All Rights Reservered <a href="cubicitsolution.co.in">@Cubic It Solution 2018</a></p>
</body>
</html>