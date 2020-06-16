<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="com.tcs.casestudy.util.*"%>
<html>
<head>
<%@ include file="Header.jsp" %>
<meta charset="ISO-8859-1">
<title>Account Management</title>
</head>
<link rel="stylesheet" href="style.css">
<body><center>
<div class="text_area">
<form>
<input type="submit" value="Create New Account" formaction="CreateAccount.jsp" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;" id="Create Account"><br>
<br><strong><br>Account Id<br></strong><br><input type="text" name="accountId" id="accountId"><br><br>
<input value="Search Account" type="submit" formaction="AccountInformation.jsp" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;" ><br>
</form><br>
<h2 style="color:red;">
<%if(request.getAttribute("error")!=null){
out.print(request.getAttribute("error"));
request.setAttribute("error",null);
}
%></h2>
</div>
</center>
</body>
<%@ include file="Footer.jsp"%>
</html>