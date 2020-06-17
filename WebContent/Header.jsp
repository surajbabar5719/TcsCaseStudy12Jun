<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="Header.css">
<head>
<meta charset="ISO-8859-1">
</head>
<body style="background-color:teal;">
	<div class="backarea">
	<h3>Bank Name</h3>
	<div class="textarea">
	<form action="Header" method=post >
		<div class="Container">
		<input type="submit" name="submit" value="Home" id="Home" formaction="Home.jsp">
		<input type="submit" name="submit" value="CustomerManagement" id="CustomerManagement" formaction="CustomerManagement.jsp">
		<input type="submit" name="submit" value="AccountManagement" id="AccountManagement" formaction="AccountManagement.jsp">
		<input type="submit" name="submit" value="StatusDetails" id="StatusDetails" formaction="StatusDetails.jsp">
		<input type="submit"  name="submit" value="AccountOperations" id="AccountOperations" formaction="AccountOperations.jsp">
		<input type="submit"  name="submit" value="Logout" id="Logout" formaction="Login.jsp">
	</div></form>
</div>
</div>
</body>
</html>