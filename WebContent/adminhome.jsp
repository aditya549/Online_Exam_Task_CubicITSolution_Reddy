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
Welcome <b style="font-size: xx-large;"><%=aname%></b>
<b style="text-align:center;"> To Cubic It Solution</b>
<hr>
<h2 style="text-align: left;border: outset;margin-left: 1200px;margin-right:0 "><a href="logout.jsp">Logout</a></h2>
<table>
<tr><td width="150" Style="border-right: outset">
<div style="margin-left:20px;">
<h3 style="border: outset;"><a href="adminhome.jsp" style="text-decoration: none">Home</a></h3>
<h3 style="border: outset;"><a href="javaadmin.jsp" style="text-decoration: none">Java</a></h3>
<h3 style="border: outset;"><a href="dotnet.jsp" style="text-decoration: none">DotNET</a></h3>
<h3 style="border: outset;"><a href="Testing.jsp" style="text-decoration: none">Testing</a></h3>
<h3 style="border: outset;"><a href="profile.jsp" style="text-decoration: none">Profile</a></h3>
<h3 style="border: outset;"><a href="logout.jsp" style="text-decoration: none">Logout</a></h3>
</div>
</td>
<td width="" valign="top" ">
    	<div id="services"><h1>Welcome To Admin Page</h1><br>
		    <pre>Welcome To Admin Exam Updation Page Here You Can Perform All Operations Related To Online Exam Like 
		    <h1>Java/dotNet/Testing</h1><ul><li>Adding New Questions</li>
       				<li>View Already Updated Questions</li>
      				<li>Set Timer and Cut Of Marks</li>
       				<li>View Qualified Student LIst</li>
       				<li>View DisQualified Students List</li>
			
       </div>
	</td>
</tr> 
</table>
<hr>
<!-- <marquee behavior=scroll direction="left" scrollamount="15" style="background-color: red;color:white;"><h1>Welcome To Cubic It Solution</h1></marquee> -->
</body>
<p style="text-align: center;">&copy &reg All Rights Reservered @Cubic It Solution 2018</p>
</html>