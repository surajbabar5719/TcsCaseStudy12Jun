<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body style="background-color:teal;"><br><br><br>
<div class="text_area">
<center>
		<strong>LOGIN</strong><br><br>
		<form action="Login" method=post>
			<strong>USERNAME</strong><br>
			<input type=text value="username"><br>
			<strong>PASSWORD</strong><br>
			<input type=password value="password"><br>
			<input type="submit" value="Login">
		</form>
	</center>
</div>
</body>
</html>
<%@ include file="Footer.jsp" %>