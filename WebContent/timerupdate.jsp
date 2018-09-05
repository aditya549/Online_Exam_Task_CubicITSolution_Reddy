<%@page import="com.cubic.Beans.AdminBean"%>
<%@page import="java.sql.ResultSet"%>
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
AdminBean ab1=(AdminBean)session.getAttribute("UserBean");
String aname1=ab1.getAname();
int timer=Integer.parseInt(request.getParameter("timer"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","reddy","reddy");
PreparedStatement pst=con.prepareStatement("update admin set timer=? where adminname=?");
pst.setInt(1, timer);
pst.setString(2, aname1);
int x=pst.executeUpdate();
if(x==1){%>
	<h3 style="text-align: center;">Timer changed Logout & Login See The Changes</h3>
	<%@include file="adminhome.jsp" %>
<%}else{%>
<h3 style="text-align: center;">Timer Not changed</h3>
<%@include file="Cutoff.jsp" %>
<%}
	


%>

%>
</body>
</html>