<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<h1 style="text-align: center;border: outset;margin-left: 400px;margin-right: 400px">Welcome To User Module</h1>
<hr>
<h2 style="text-align: left;border: outset;margin-left: 0;margin-right: 1200px"><a href="index.html">Home</a></h2>
<table align="center">
<tr>
	<td align="center" width="700" Style="border-right: outset">
	<p style="text-align: center;">***Already Registered Please Login Here</p>
	<h2 style="text-align: center;border: outset;margin-left: 250px;margin-right: 200px">Existing User Login</h2>
		<form action="LoginServlet" method="post">
		<table cellspacing="4" cellpadding="4">
			<tr><td>Enter User Name:</td>
			<td><input type="text" name="uname"></td></tr>
			<tr><td>Enter User Password:</td>
			<td><input type="password" name="upassword"></td></tr>
			<tr><td align="right"><Input type="submit" value="Login"></td>
			<td align="left"><Input type="reset" value="Reset"></td></tr>
		</table>
		</form>
	</td>
	<td align="center" width="700" Style="border-right: outset">
	<p style="text-align: center;">***New User Please Register Here</p>
	<h2 style="text-align: center;border: outset;margin-left: 200px;margin-right: 150px">New User Registration</h2>
			<form action="UserRegistrationServlet" method="post">
			<table cellspacing="4" cellpadding="4">
			<tr><td>Enter User Name:</td>
			<td><input type="text" name="uname"></td></tr>
			<tr><td>Enter Password:</td>
			<td><input type="password" name="upassword"></td></tr>
			<tr><td>Enter Email id:</td>
			<td><input type="text" name="uemail"></td></tr>
			<tr><td>Enter Gender</td>
			<td><input type="radio" name="ugender" value="male">Male
				<input type="radio" name="ugender" value="female">FeMale</td></tr>
			<tr><td>Select Domain Name:</td><td><select name="udomain">
								<option value="java">Java</option>
  								<option value="dotnet">DotNet</option>
  								<option value="testing">Testing</option>
  								<option value="webdesigning">Web Designing</option>
								</select>
							</td></tr>
			<tr><td align="right"><Input type="submit" value="Login"></td>
			<td align="left"><Input type="reset" value="Reset"></td></tr>
			</table>
			</form>
			<h2>!!!:)User Successfully Registered Please Login To Continue</h2>
			</td>
			</tr>
	</table>
</body>
<hr>
<p style="text-align: center;">&copy &reg All Rights Reservered @Cubic It Solution 2018</p>
</html>