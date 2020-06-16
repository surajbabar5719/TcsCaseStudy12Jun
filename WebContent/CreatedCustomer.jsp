<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.tcs.casestudy.util.ConnectionManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%
Connection conn=ConnectionManager.getConnection();
PreparedStatement ps;
ps=conn.prepareStatement("insert into customer(SSNID,name,address,age,employeeid) values('"+request.getParameter("ssnId")+"','"+request.getParameter("customerName")+"','"+request.getParameter("address")+"',"+request.getParameter("age")+","+request.getParameter("employeeId")+");");
ps.execute();
request.setAttribute("error","Customer Created");
RequestDispatcher rd=getServletContext().getRequestDispatcher("/CustomerManagement.jsp");
rd.include(request, response);
%>
</body>
</html>