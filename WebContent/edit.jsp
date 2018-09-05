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
<title>Insert title here</title>
</head>
<body>
<% 
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","reddy","reddy");
PreparedStatement pst=con.prepareStatement("select * From questionlist where id=?");
pst.setInt(1, id);
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
<h3><a href="ViewQuestions.jsp">View Questions</a></h3>
</div>
</td>
<td>
<form action="UpdateQuestionServlet" method="post">
<pre>
<h1>Edit the Question</h1>
<%
while(rs.next()){%>
Question:<input type="text" name="newquestion" size="100" value="<%=rs.getString("quename") %>"><br>
Answer      :<input type="text" name="newoption"value="<%=rs.getString("queans") %>"><br>
Options1 :<input type="text" name="op1" value="<%=rs.getString("queopt1") %>"><br>
Options2      :<input type="text" name="op2" value="<%=rs.getString("queopt2") %>"><br>
Options3      :<input type="text" name="op3" value="<%=rs.getString("queopt3") %>"><br>
Explanation(If Any)<textarea rows="4" cols="50" name="explanationnewquestion" value="<%=rs.getString("explanation") %>"></textarea><br>
<input type="hidden" value=<%=rs.getInt("id")%> name="id">
<input type="submit" value="Add Question">
<%
}
%>
</pre>
</form>
</td>
</tr>
</table>
</body>
</html>