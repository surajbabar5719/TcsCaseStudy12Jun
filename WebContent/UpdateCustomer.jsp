<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<div class="text_area">
<center>
	<form action="UpdateCustomer" method=post>
	<table>
	<tr><td><strong>Customer SSN ID</strong></td><td><input type=text name="cSsnId"></td></tr>
	<tr><td><strong>Customer ID</strong></td><td><input type=text name="customerId"></td></tr>
	<tr><td><strong>Old Customer Name</strong></td><td><input type=text name="oldCustomerName"></td></tr>
	<tr><td><strong>New Customer Name</strong></td><td><input type=text name="newCustomerName"></td></tr>
	<tr><td><strong>Old Address</strong></td><td><input type=text name="oldAddress"></td></tr>
	<tr><td><strong>New Address</strong></td><td><input type=text name="newAddress"></td></tr>
	<tr><td><strong>Old Age</strong></td><td><input type=text name="oldAge"></td></tr>
	<tr><td><strong>New Age</strong></td><td><input type=text name="newAge"></td></tr>
	</table><br>
	<input type=submit value="Update" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
	</form>
	</center></div>
<%@ include file="Footer.jsp" %>
</body>
</html>
