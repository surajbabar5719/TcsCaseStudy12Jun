<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<div class="text_area">
<center>
	<form action="CreatedAccount.jsp" method" =post>
	<table>
	<tr><td><strong>Customer id</strong></td><td><input type=text id="customerId" name="customerId" ></td></tr>	
	<tr><td><strong>Account Type</strong></td><td><select name="accountType" id="accountType">
	<option value="S">Savings</option>
	<option value="C">Current</option>
	</select></td></tr>
	<tr><td><strong>Operning Balance</strong></td><td><input type=text name="balance" ></td></tr>
	</table><br>
	<input type=submit value="Create" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
	</form>
	<%
if(request.getAttribute("error")!=null){
out.print(request.getAttribute("error"));
request.setAttribute("error",null);
}
%>
	</center></div>
<%@ include file="Footer.jsp" %>
</body>
</html>