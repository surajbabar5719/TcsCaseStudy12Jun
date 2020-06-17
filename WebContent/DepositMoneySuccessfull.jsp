<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.tcs.casestudy.util.ConnectionManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Information</title>
</head>

<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<body><center>
<div class="text_area">
<table>
<%
Connection conn=ConnectionManager.getConnection();
Statement stmt = conn.createStatement();
ResultSet rs,rs1; 
PreparedStatement ps;
String param=request.getParameter("depositAmount");
System.out.print(param+"select * from Customer where customerid=(select customerId from account where accountId='"+request.getParameter("accountId")+"';"+"UPDATE Account SET balance="+request.getParameter("balance")+"+"+request.getParameter("depositAmount")+" where accountId='"+request.getParameter("accountId")+"';");
ps=conn.prepareStatement("UPDATE Account SET balance="+request.getParameter("balance")+"+"+request.getParameter("depositAmount")+" where accountId='"+request.getParameter("accountId")+"';");
ps.execute();
rs = stmt.executeQuery("select * from Customer where customerid=(select customerId from account where accountId='"+request.getParameter("accountId")+"');");
rs.first();
if(rs.getString("access").equalsIgnoreCase("off"))
{
	request.setAttribute("error","Customer with this id is deleted");
	RequestDispatcher rd=getServletContext().getRequestDispatcher("/CustomerManagement.jsp");
	rd.include(request, response);
}
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
rs1 = stmt.executeQuery("select * from Account where accountid='"+request.getParameter("accountId")+"';");
rs1.first();
out.print("<tr><td>Account Id</td><td>"+rs1.getString("accountid")+"</td></tr>");
out.print("<tr><td>Account Type</td><td>"+rs1.getString("accounttype")+"</td></tr>");
out.print("<tr><td>Balance</td><td>"+rs1.getString("balance")+"</td></tr>");
%>	</table><br>
</div></center>
</body>
<%@ include file="Footer.jsp" %>
</html>