<%@page import="com.cubic.Beans.AdminBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>QuestionsListPage</title>
</head>
<body>
<% Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","reddy","reddy");
PreparedStatement pst=con.prepareStatement("select * From questionlist");
ResultSet rs=pst.executeQuery();%>
<% 
AdminBean ab=(AdminBean)session.getAttribute("UserBean");
String aname=ab.getAname();
%>
<h1>Welcome <%=aname %> To Java Exam Info Updation page</h1>
 <hr>
 
 <table>
<tr><td width="200" Style="border-right: outset">
<div style="margin-left:20px;">
<h3><a href="javaadmin.jsp">Home</a></h3>
<h3><a href="AddQuestion.jsp">Add Questions</a></h3>
<h3><a href="adminhome.jsp">View Questions</a></h3>
</div>
</td>
<td>
<% int i=1;
while(rs.next()){%>
	<b>Question <%=i%>:&nbsp<%=rs.getString("quename")%></b><br><br>
	Answer :<%=rs.getString("queans")%>&nbsp<a href="edit.jsp?id=<%=rs.getInt("id") %>" style="border: outset;">Edit</a>
	&nbsp&nbsp<a href="delete.jsp?id=<%=rs.getInt("id") %>" style="border: outset;">Delete</a><br><br>
	<%i++; %>
<%
}
%>
</td></tr></table>
</body>
</html>