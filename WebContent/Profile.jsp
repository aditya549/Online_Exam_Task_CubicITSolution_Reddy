<%@page import="com.cubic.Beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
UserBean user=(UserBean)session.getAttribute("user");
String name=user.getUname();
%>
<h1 style="text-align: center;">Welcome <b style="border: outset;"><%=name %></b> To Cubic It Solution</h1>
<hr style="margin-left: 400px;margin-right: 400px;border-bottom: outset;">
<div style="text-align: center;">
<h2 style="border: outset;margin-left: 500px;margin-right: 500px">
You'r Profile</h2>

<table align="center" border="solid" style="font-size:large;">
<tr>
	<th width="20%">Name:</th>
	<td ><%=name %></td></tr>
	<th width="20%">Email:</th>
	<td><%=user.getUemail() %></td></tr>
	<th width="20%">Gender</th>
	<td><%=user.getUgender() %></td></tr>
	<th width="20%">Domain</th>
	<td><%=user.getDomain() %></td></tr>
	
	</table>
	<h1 style="text-align: right;margin-right: 500px;margin-left:200px;">
	<a href="UserHome.jsp" style="color: inherit;text-decoration: none;border: outset;">Back</a>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="UserLogout.jsp" style="color: inherit;text-decoration: none;border: outset;">Logout</a></h1>
</div>
<hr style="margin-left: 400px;margin-right: 400px;border-bottom: outset;">
<p style="text-align: center;">&copy &reg All Rights Reservered @Cubic It Solution 2018</p>
</body>
</html>