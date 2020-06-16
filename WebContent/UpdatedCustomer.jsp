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
ResultSet rs; 
PreparedStatement ps;
ps=conn.prepareStatement("UPDATE Customer SET name='"+request.getParameter("newCustomerName")+"' ,address='"+request.getParameter("newAddress")+"' ,age='"+request.getParameter("newAge")+"' where customerId="+request.getParameter("customerId")+";");
ps.execute();
rs = stmt.executeQuery("select * from Customer where customerid='"+request.getParameter("customerId")+"';");
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
String newAge=request.getParameter("newAge");
out.print("<tr><td>Updated On</td><td>"+rs.getString("updatedOn")+"</td></tr>");
System.out.println("UPDATE Customer SET name='"+request.getParameter("newCustomerName")+"' ,address='"+newAge+"' ,age='"+request.getAttribute("newAge")+"' where customerId="+request.getParameter("customerId")+";");
%>	</table><br>
</div></center>
</body>
<%@ include file="Footer.jsp" %>
</html>