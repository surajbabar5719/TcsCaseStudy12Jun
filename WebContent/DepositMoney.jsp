<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DepositMoney</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<div class="text_area">
<center>
	<form action="DepositMoney" method=post>
	<table>
	<tr><td><strong>Customer ID</strong></td><td><input type=text name="customerId" id="customerId" value="customerId"></td></tr>
	<tr><td><strong>Account ID</strong></td><td><input type=text name="accountId" id="accountId" value="accountId"></td></tr>
	<tr><td><strong>Account Type</strong></td><td><input type=text name="accountType" id="accountType" value="accountType"></td></tr>
	<tr><td><strong>Balance</strong></td><td><input type=text name="balance" id="balance" value="balance"></td></tr>
	<tr><td><strong>Deposit Amount</strong></td><td><input type=text name="depositAmout" id="depositAmout" value="depositAmout"></td></tr>
	</table><br>
	<input type=submit value="Submit" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
	</form>
	</center></div>
<%@ include file="Footer.jsp" %>
</body>
</html>
