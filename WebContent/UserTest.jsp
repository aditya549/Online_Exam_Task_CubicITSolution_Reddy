<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cubic.Beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Take Test Here</title>
</head>
<body>
<%
int mark;
UserBean user=(UserBean)session.getAttribute("user");
String name=user.getUname();
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","reddy","reddy");
PreparedStatement pst=con.prepareStatement("select * from admin");
ResultSet rs=pst.executeQuery();
boolean b=rs.next();
%>
<h1 style="margin-left: 100px">Welcome <b style="border: outset;"><%=name %></b>To Cubic It Solution</h1> 
<hr style="border: outset;margin-left: 100px;margin-right: 210px">
<hr style="border:outset;margin-left: 100px;margin-right: 210px">
<table><tr><td style="border-right: outset;" width="100"></td>
<td style="border-right: outset;" width="1000" align="center">
<p id="demo" style="border: outset;margin-left:300px;margin-right:300px;font-size: xx-large;"></p>
<p style="font-size: x-large;display: block;text-align: center;" id="inst">
**Test Contains 30 Questions<br>
**Each Question has 4-Options<br>
**Time Limit is <%=rs.getInt("timer")%> Minutes<br>
</p>

 <button onclick="myFunction()" style="display: block;text-align: center;" id="btn">Click Here To Start Test</button>

 <div id="myDIV" style="display: none;">
 <%
PreparedStatement pst1=con.prepareStatement("select max(id),min(id) From questionlist");
ResultSet rs1=pst1.executeQuery();
boolean b1=rs1.next();
int upper=rs1.getInt(1);
int lower=rs1.getInt(2);
rs1.close();
String id1="str";
int i;
%><form action="TestResultServlet" method="post" name="xyz">
	<% for(i=1;i<=10;i++){
		Random random = new Random();
		int id= random.nextInt(upper - lower) + lower;
	PreparedStatement pst2=con.prepareStatement("select * From questionlist where id=?");
	pst2.setInt(1, id);
	ResultSet rs2=pst2.executeQuery();
	/* boolean b2=rs2.next(); */
	while(rs2.next()){
	%>
	<b>Question:<%=i%> &nbsp<%=rs2.getString("quename")%></b><br><br>
	<p style="margin-left: 420px;text-align: left;">
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queopt1")%>"><%=rs2.getString("queopt1")%><br>
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queopt2")%>"><%=rs2.getString("queopt2")%><br>
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queopt3")%>"><%=rs2.getString("queopt3")%><br>
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queans")%>"><%=rs2.getString("queans")%><br><br>
	<input type="hidden" name=<%=id1%> value=<%=rs2.getInt("id") %>></p>
	<% }
	id1=id1+i;
	System.out.println(i);
	System.out.println(id1);
	}
	%>
	<button onclick="myFunction2()" type="button" style="display: block;text-align: center;font-size: xx-large;">Next</button>
	</div>
	<div style="display: none" id="test">
	<% for(i=10;i<=20;i++){
		Random random = new Random();
		int id= random.nextInt(upper - lower) + lower;
	PreparedStatement pst2=con.prepareStatement("select * From questionlist where id=?");
	pst2.setInt(1, id);
	ResultSet rs2=pst2.executeQuery();
	/* boolean b2=rs2.next(); */
	while(rs2.next()){
	%>
	<b>Question:<%=i%> &nbsp<%=rs2.getString("quename")%></b><br><br>
	<p style="margin-left: 420px;text-align: left;">
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queopt1")%>"><%=rs2.getString("queopt1")%><br>
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queopt2")%>"><%=rs2.getString("queopt2")%><br>
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queopt3")%>"><%=rs2.getString("queopt3")%><br>
	<input type="radio" name=<%=i%> value="<%=rs2.getString("queans")%>"><%=rs2.getString("queans")%><br><br>
	<input type="hidden" name=<%=id1%> value=<%=rs2.getInt("id") %>></p>
	<% }
	id1=id1+i;
	System.out.println(i);
	System.out.println(id1);
	}
	%>
	<h3 style="text-align: center;">Before Submit Please Cross Check All Values Once</h3>
<input type="submit" value="submit" style="font-size:xx-large;" >
</div>
</form>
<script>
var m=10;
var s=60;
function myTimeout1() {
	s-=1;
	if(s==0){
		m-=1;
		s=60;
		if(m==0){
			alert("Sorry TimeOut Please Login Again To Take Test");
			window.location.href="http://localhost:8081/TestServerDemo/";
			return;
	    	/* clearTimeout(myVar); */
	    }
	}
    document.getElementById("demo").innerHTML = "Time Limit: "+m+"Min:"+s+"Sec";
    var myVar=setTimeout(myTimeout1, 1000);  
}

function myFunction() {
	setTimeout(myTimeout1, 1000);
    var x = document.getElementById("myDIV");
    var y=document.getElementById("btn");
    var z=document.getElementById("inst");
    if (x.style.display === "none") { 
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
    if (y.style.display === "block") { 
        y.style.display = "none";
    } else {
        x.style.display = "block";
    }
    if (z.style.display === "block") { 
        z.style.display = "none";
    } else {
        z.style.display = "block";
    }
}
function myFunction2() {
	var x = document.getElementById("myDIV");
    var y=document.getElementById("test");
    if (x.style.display === "none") { 
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
    if (y.style.display === "none") { 
        y.style.display = "block";
    } else {
        y.style.display = "none";
    }
}
var wait=setTimeout("document.xyz.submit();",1200000);
</script>
</td><td width="10"></td></tr></table>
<hr style="border:outset;margin-left: 100px;margin-right: 210px">
<hr style="border:outset;margin-left: 100px;margin-right: 210px">
<p style="text-align: center;">&copy &reg All Rights Reservered <a href="cubicitsolution.co.in">@Cubic It Solution 2018</a></p>
</body>
</html>