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
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<body><center>
<div class="text_area">
	<%
Connection conn=ConnectionManager.getConnection();
PreparedStatement ps;
ps=conn.prepareStatement("UPDATE Account SET access='No' where accountId='"+request.getParameter("accountId")+"';");
ps.execute();
request.setAttribute("error","Account deleted Successfully");
RequestDispatcher rd=getServletContext().getRequestDispatcher("/AccountManagement.jsp");
rd.include(request, response);
%>
</div></center>
</body>
<%@ include file="Footer.jsp" %>
</html>