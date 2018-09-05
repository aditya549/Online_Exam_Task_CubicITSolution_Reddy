<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<button onclick="timedText()">Try it</button>

<p id="demo">Click on "Try it". I will display when two, four, and six seconds have passed.</p>
<button onclick="clearTimeout(myVar)">Stop it</button>
<script>
var m=1;
var s=60;
function timedText() {
    setTimeout(myTimeout1, 1000);
    
}
function myTimeout1() {
	s-=1;
	if(s==0){
		m-=1;
		s=60;
		if(m==0){
			document.getElementById("demo").innerHTML = "Timeout";
			return;
	    	/* clearTimeout(myVar); */
	    }
	}
    document.getElementById("demo").innerHTML = m+":"+s;
    var myVar=setTimeout(myTimeout1, 1000);  
}
</script>
</body>
</html>