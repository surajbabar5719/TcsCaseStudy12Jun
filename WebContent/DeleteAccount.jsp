%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*" %>
	<%@ page import="com.tcs.casestudy.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
</head>
< %@ include file="Header.jsp"%>
<link rel="stylesheet" href="style.css">
<body>
	<centre>
   <div class="text_area">
   <% 
      Connection conn=ConnectionManager.getConnection();
      PreparedStatement ps;
      ps=conn.prepareStatement("delete from table where accountid="+request.getParameter("customerId"));
      ps.execute();
      out.print("Account Deleted from database");
      request.setAttribute("error","Account is deleted Successfully");
      RequestDispatcher rd=getServletContext().getRequestDispatcher("/CustomerMangment.jsp");
      rd.include(request, response);
      %>
      </div></centre>
      </body>
      < %@ invlide file="Footer.jsp" %>
      </html>
    		 




