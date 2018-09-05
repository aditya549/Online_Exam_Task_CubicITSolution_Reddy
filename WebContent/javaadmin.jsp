<%@page import="com.cubic.Beans.AdminBean"%>
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
AdminBean ab=(AdminBean)session.getAttribute("UserBean");
String aname=ab.getAname();
%>
<h1>Welcome <%=aname %> To Java Exam Info Updation page</h1>
 <hr>
 
 <table>
<tr><td width="200" Style="border-right: outset">
<div style="margin-left:20px;">
<h3><a href="adminhome.jsp">Home</a></h3>
<h3><a href="AddQuestion.jsp">Add Questions</a></h3>
<h3><a href="ViewQuestions.jsp">View Questions</a></h3>
<h3><a href="Cutoff.jsp">Cut Of Marks</a></h3>
<h3><a href="timer.jsp">Set Timer</a></h3>
<h3><a href="QualifiedStudentList.jsp">Qualified Students List</a></h3>
<h3><a href="DisQualifiedStudentList.jsp">DisQualified Students List</a></h3>
<h3><a href="logout.jsp">Logout</a></h3>
</div>
</td>
<td width="" valign="top" ">
    	<div id="Home"><h1>Java Exam Updation</h1><br>
		    <pre>Welcome To JAVA Exam Info Updation Page Here You Can Perform All Operations Related To JAVA Exam Like 
		    <ul><li>Adding New Questions</li>
       				<li>View Already Updated Questions</li>
      				<li>Set Timer and Cut Of Marks</li>
       				<li>View Qualified Student LIst</li>
       				<li>View DisQualified Students List</li>
       </div>
	</td>
</tr> 
</table>
<hr>
 <p style="text-align: center;">&copy &reg All Rights Reservered @Cubic It Solution 2018</p>
</body>
</html>