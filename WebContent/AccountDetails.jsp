<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="com.tcs.casestudy.util.ConnectionManager"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<style>
table,th,td{
color: black;
border:1px solid black;
background-color: rgb(230,230,230);}
</style>
</head>
<%
Connection conn=ConnectionManager.getConnection();
Statement stmt = conn.createStatement();
ResultSet rs;
rs = stmt.executeQuery("select * from account;");
%>
<%@ include file="Header.jsp" %>
<meta charset="ISO-8859-1">
<title>Account Management</title>
</head>
<link rel="stylesheet" href="style.css">
<body><center>
<center>
<div class="text_area">
<h1>Account Details</h1>
<form action="AccountDetails.jsp">
<table style="border:1px solid black;">
<tr><th>Customer Id</th><th>Account Type</th><th>Status</th><th>Message</th><th>Opened On</th><th>Last Updated</th></tr>
<%
while(rs.next())
{
	String message="active account";
	if(rs.getInt("balance")<500 )
	{
		 message="Balance is less than 500";
	}
	if(rs.getString("access").equals("No"))
	{
		message="Inactive account";
	}
	out.print("<tr><td>"+rs.getString("customerId")+"</td><td>"+rs.getString("Accounttype")+"</td><td>"+rs.getString("access"));
	out.print("</td><td>"+message+"</td><td>"+rs.getString("CreatedOn")+"</td><td>"+rs.getString("updatedOn")+"</td><td><input type=\"submit\" name=\"refresh\" value=\"refresh\"onclick=\"\\AccountDetails.jsp\"></td></tr>");
}
%>
</table><br></form>
<%
if(request.getAttribute("error")!=null){
out.print(request.getAttribute("error"));
request.setAttribute("error",null);
}
%>
</div></center>
</body>
</html>