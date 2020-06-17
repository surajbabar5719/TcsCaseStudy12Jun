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
<form>
Transfer To<br>
<input type=text name="accountId1" value=<%out.print(request.getParameter("accountId")); %> hidden="">
<input type=text name="accountId2" >
<input type=submit formaction="Transfer.jsp" value="Details">
</form>
</div></center>
</body>
<%@ include file="Footer.jsp" %>
</html>