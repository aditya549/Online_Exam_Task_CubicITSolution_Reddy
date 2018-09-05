<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
	String UserName=user.getUname();
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","reddy","reddy");
	PreparedStatement pst=con.prepareStatement("update userlist set status=? where uname=?");
	pst.setString(1, "Qualified");
	pst.setString(2, UserName);
	int i=pst.executeUpdate();
	if(i==0){
		System.out.println("Record Updated");
	}else
		System.out.println("Record NotUpdated");
%>
<table border="double" align="center">
<tr><td>
<h1 style="text-align:center">Hi... <%=UserName %></h1>
<h1 style="text-align:center">You Attempted :<%=request.getAttribute("a") %> Questions</h1>
<h1 style="text-align:center">Correct Questions:<%=request.getAttribute("b") %></h1>
<h1 style="text-align:center;color:red">Congratulations!!!!</h1>
<h1 style="text-align:center">U'r Qualified</h1>
</td></tr>
</table>
<h2 style="text-align: center;border: outset;margin-left: 500px;margin-right: 500px"><a href="index.html">UserHomePage</a></h2>
</body>
</html>