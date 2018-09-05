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
String quename=request.getParameter("newquestion");
String queans=request.getParameter("newoption");
String queopt1=request.getParameter("op1");
String queopt2=request.getParameter("op2");
String queopt3=request.getParameter("op3");
String explanation=request.getParameter("explanationnewquestion");
%>
<%=quename %><br><br>
<input type="radio" value=<%=queans %> name="answer"><%=queans %><br><br>
<input type="radio" value=<%=queopt1 %> name="answer"><%=queopt1 %><br><br>
<input type="radio" value=<%=queopt2 %> name="answer"><%=queopt2 %><br><br>
<input type="radio" value=<%=queopt3 %> name="answer"><%=queopt3 %><br><br>
<button onclick="myFunction()">Show/Hide Explanation</button>
<div id="myDIV" style="display: none">
<br>Generally Local Variables Are Called As Temporary Variables
</div>

<p><b>Note:</b> Please Check Reliable Sources For Exact Information</p>

<script>
function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
</script>
</body>
</html>