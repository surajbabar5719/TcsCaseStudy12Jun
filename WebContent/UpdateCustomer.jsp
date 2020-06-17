<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.tcs.casestudy.util.ConnectionManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
<%Connection conn=ConnectionManager.getConnection();
Statement stmt = conn.createStatement();
ResultSet rs;
System.out.print(request.getParameter("customerId"));
rs = stmt.executeQuery("select * from Customer where customerid='"+request.getParameter("customerId")+"';");
rs.first();
if(rs.getString("access").equalsIgnoreCase("off"))
{
	request.setAttribute("error","Customer with this id is deleted");
	RequestDispatcher rd=getServletContext().getRequestDispatcher("/CustomerManagement.jsp");
	rd.include(request, response);
}
%>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<div class="text_area">
<center>
	<form action="UpdatedCustomer.jsp?customerId=<% out.print(rs.getString("customerId"));%>" method=post>
	<table>
	<tr><td><strong>Customer id</strong></td><td><input type=text id="customerId" name="customerId" value="<%out.print(rs.getString("customerId"));%>" disabled="disabled"></td></tr>	
	<tr><td><strong>New Customer Name</strong></td><td><input type=text name="newCustomerName" value="<%out.print(rs.getString("Name"));%>"></td></tr>
	<tr><td><strong>New Address</strong></td><td><input type=text name="newAddress" value="<%out.print(rs.getString("address"));%>"></td></tr>
	<tr><td><strong>New Age</strong></td><td><input type=text id="newAge" name="newAge" value="<%out.print(rs.getString("age"));%>"></td></tr>
	</table><br>
	<input type=submit value="Update" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
	</form>
	</center></div>
<%@ include file="Footer.jsp" %>
</body>
</html>
<%
rs.close();
stmt.close();
conn.close();
%>