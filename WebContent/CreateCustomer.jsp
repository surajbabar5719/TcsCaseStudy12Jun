<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Customer</title>
</head>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<body style="background-color:teal;"><br><br><br>
<div class="text_area">
<center>
		<strong>Create Customer</strong><br><br>
		<form action="CreatedCustomer.jsp" method=post>
				<table>
	<tr><td><strong>SSN ID</strong></td><td><input type=text name="ssnId" required></td></tr>	
	<tr><td><strong>Name</strong></td><td><input type=text name="customerName" required></td></tr>
	<tr><td><strong>Address</strong></td><td><input type=text name="address" required></td></tr>
	<tr><td><strong>Age</strong></td><td><input type=text name="age" required></td></tr>
	</table><br>
	<input type=text name="employeeId" value="000000001" hidden="">
	<input type="submit" value="Create Customer" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
		</form>
	</center>
</div>
</body>
<%@ include file="Footer.jsp" %>
</html>