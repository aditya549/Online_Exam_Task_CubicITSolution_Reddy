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
<h1 style="text-align: center;"><u>Qualified Students List Is</u></h1>
<% 	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","reddy","reddy");
	PreparedStatement pst=con.prepareStatement("select * from userlist where status=?");
	String DisQualified="DisQualified";
	pst.setString(1, DisQualified);
	ResultSet rs=pst.executeQuery();
	boolean b=rs.next();
	if(b){
		while(rs.next()){
		%>
		<%=rs.getString("uname") %><br><br><br>
	<%}
	}else
	%>
	<h1 style="text-align: center;">No One DisQualified Yet</h1>
	<h2 style="text-align: center;border: outset;margin-left: 500px;margin-right: 500px"><a href="http://localhost:8081/Online_Exam_Task_CubicITSolution/">HomePage</a></h2>
</body>
</html>
</body>
</html>