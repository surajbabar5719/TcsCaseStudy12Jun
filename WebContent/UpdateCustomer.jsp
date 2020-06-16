<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.tcs.casestudy.util.ConnectionManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
</head>
<body>
<%System.out.print(request.getParameter("customerID"));%>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<div class="text_area">
<center>


<%try{ 
%>
<%@include file="CustomerInformation.jsp"%>
<%}
catch(Exception e)
{
	request.setAttribute("error","Customer Id not found");
	RequestDispatcher rd=getServletContext().getRequestDispatcher("/CustomerManagement.jsp");
	rd.include(request, response);
}
%>
	<form action="UpdateCustomer" method=post>
	<table>
	<tr><td><strong>New Customer Name</strong></td><td><input type=text name="newCustomerName"></td></tr>
	<tr><td><strong>New Address</strong></td><td><input type=text name="newAddress"></td></tr>
	<tr><td><strong>New Age</strong></td><td><input type=text name="newAge"></td></tr>
	</table><br>
	<input type=submit value="Update" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
	</form>
	</center></div>
<%@ include file="Footer.jsp" %>
</body>
</html>
