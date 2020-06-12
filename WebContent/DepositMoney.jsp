<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DepositMoney</title>
</head>
<body>
<center>
	<form action="DepositMoney" method=post>
	<table>
	<tr><td><strong>Customer ID</strong></td><td><input type=text name="customerId"></td></tr>
	<tr><td><strong>Account ID</strong></td><td><input type=text name="accountId"></td></tr>
	<tr><td><strong>Account Type</strong></td><td><input type=text name="accountType"></td></tr>
	<tr><td><strong>Balance</strong></td><td><input type=text name="balance"></td></tr>
	<tr><td><strong>Deposit Amount</strong></td><td><input type=text name="depositAmout"></td></tr>
	</table><br>
	<input type=submit value="Submit" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
	</form>
	</center>
</body>
</html>
