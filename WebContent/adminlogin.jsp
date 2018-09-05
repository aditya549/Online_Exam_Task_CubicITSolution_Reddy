<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="margin-top: 100px">
<h1 style="text-align: center;border:outset;margin-left: 450px;margin-right: 450px;">Welcome To Admin Module</h1>
<hr style="margin-left: 400px;margin-right: 400px;border:outset;">
<hr style="margin-left: 400px;margin-right: 400px;border:outset;">
<h2 style="margin-left: 400px;margin-right: 800px;border:outset;text-align: center;"><a href="index.html">Home</a></h2>
<form action="AdminLoginServletNew" method="post">
<table align="center" cellspacing="4" cellpadding="4">

	<h2 style="text-align: center;border: outset;margin-left: 500px;margin-right: 500px">Admin Login</h2>
	<tr><td>Enter Admin Name:</td>
	<td><input type="text" name="aname"></td></tr>
	<tr><td>Enter Admin Password:</td>
	<td><input type="password" name="apass"></td></tr>
	<tr><td align="right"><Input type="submit" value="Login"></td>
	<td align="left"><Input type="reset" value="Reset"></td></tr>
	</table>
</form>
<hr style="margin-left: 400px;margin-right: 400px;border:outset;">
<hr style="margin-left: 400px;margin-right: 400px;border:outset;">
<p style="text-align: center;">&copy &reg All Rights Reservered <a href="cubicitsolution.co.in">@Cubic It Solution 2018</a></p>
</div>
</body>
</html>