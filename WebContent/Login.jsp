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
			<input type=text name="username" required><br>
			<strong>PASSWORD</strong><br>
			<input type=password name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="must contain at least one number and one uppercase and lowercase letter and at least 8 or more character" required><br>
			<input type="submit" value="Login">
		</form>
	</center>
</div>
</body>
</html>
<%@ include file="Footer.jsp" %>