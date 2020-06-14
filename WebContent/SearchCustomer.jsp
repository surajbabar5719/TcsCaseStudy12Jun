<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Customer</title>
</head>
<body>
<center>
	
	<form action="SearchCustomer">
	<table>
	<tr><td><strong>Customer SSN ID</strong></td><td><input type=text name="cSsnId"></td></tr>
	<tr><td><strong>Customer ID</strong></td><td><input type=text name="customerId"></td></tr>
	</table>
	<input type="submit" name="submit" value="SearchCustomer">
	</form>
	
</center>
</body>
</html>