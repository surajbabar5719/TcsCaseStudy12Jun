<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.tcs.casestudy.util.ConnectionManager"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="Header.jsp" %>
<meta charset="ISO-8859-1">
<title>Account Infot</title>
</head>
<link rel="stylesheet" href="style.css">
<body><center>
<div class="text_area">
<table>
<%
Connection conn=ConnectionManager.getConnection();
Statement stmt = conn.createStatement();
ResultSet rs,rs1;
rs1 = stmt.executeQuery("select * from Account where accountid='"+request.getParameter("accountId")+"' and access='Yes';");
rs1.first();
out.print("<tr><td>Account Id</td><td>"+rs1.getString("accountid")+"</td></tr>");
out.print("<tr><td>Account Type</td><td>"+rs1.getString("accounttype")+"</td></tr>");
out.print("<tr><td>Balance</td><td>"+rs1.getString("balance")+"</td></tr>");
rs = stmt.executeQuery("select * from Customer where customerid='"+rs1.getString("customerId")+"'and access='Yes';");
rs.first();
out.print("<tr><td>SSN ID</td><td>"+rs.getString("SSNID")+"</td></tr>");
out.print("<tr><td>Customer ID</td><td>"+rs.getString("customerid")+"</td></tr>");
out.print("<tr><td>Name</td><td>"+rs.getString("Name")+"</td></tr>");
String cn=rs.getString("Name");
out.print("<tr><td>Address</td><td>"+rs.getString("address")+"</td></tr>");
String cAge=rs.getString("Age");
String cadd=rs.getString("Address");
out.print("<tr><td>Age</td><td>"+rs.getString("Age")+"</td></tr>");
request.setAttribute("CustomerAge",rs.getString("age"));
request.setAttribute("CustomerName",cn);
request.setAttribute("CustomerAge",cAge);
request.setAttribute("CustomerAddress",cadd);
out.print("<tr><td>Created EmployeeId</td><td>"+rs.getString("employeeid")+"</td></tr>");
out.print("<tr><td>Created on</td><td>"+rs.getString("createdon")+"</td></tr>");
out.print("<tr><td>Updated On</td><td>"+rs.getString("updatedOn")+"</td></tr>");
%>	</table><br>
<%
if(request.getAttribute("error")!=null){
out.print(request.getAttribute("error"));
request.setAttribute("error",null);
}
%>
</div>
</center>
</body>
</html><%@ include file="Footer.jsp" %>
