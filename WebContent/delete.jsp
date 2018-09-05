<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "reddy", "reddy");
PreparedStatement pst1=con1.prepareStatement("delete from questionlist where id=?");
pst1.setInt(1, id);
int j=pst1.executeUpdate();
if(j==1){
%>
	<h1 style="text-align: center;">1-Record Deleted</h1>
	<%@include file="ViewQuestions.jsp"%>
<%}else{%>
	<h1 style="text-align: center;">Record Not Deleted</h1>
	<%@include file="ViewQuestions.jsp"%>
<% }
con1.close();
%>
</body>
</html>