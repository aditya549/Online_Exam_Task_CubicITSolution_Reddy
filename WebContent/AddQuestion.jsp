<%@page import="com.cubic.Beans.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding New Question</title>
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
<h3><a href="javaadmin.jsp">Home</a></h3>
<h3><a href="AddQuestion.jsp">Add Questions</a></h3>
<h3><a href="ViewQuestions.jsp">View Questions</a></h3>
</div>
</td>
<td>
<form action="AddQuestionController" method="post">
<pre>
Enter New Question:<input type="text" name="newquestion" size="100"><br>
Enter Answer      :<input type="text" name="newoption"><br>
Give Options1 :<input type="text" name="op1"><br>
Options2      :<input type="text" name="op2"><br>
Options3      :<input type="text" name="op3"><br>
Explanation(If Any)<textarea rows="4" cols="50" name="explanationnewquestion"></textarea><br>
<input type="submit" value="Add Question">
</pre>
</form>
</td>
</tr>
</table>
</body>
</html>