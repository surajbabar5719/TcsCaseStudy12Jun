<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="com.tcs.casestudy.bean.Customer"%> 
<%@page import="java.util.ArrayList"%> 
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<div class="text_area">
<table border ="1" width="500" align="center"> 
         <tr bgcolor="00FF7F"> 
          <th><b>Student Name</b></th> 
          <th><b>Student Age</b></th> 
          <th><b>Course Undertaken</b></th> 
         </tr> 
        <%-- Fetching the attributes of the request object 
             which was previously set by the servlet  
              "StudentServlet.java" 
        --%>  
        <%ArrayList<Customer> std =(ArrayList<Customer>)request.getAttribute("data"); 
        for(Customer c:std){%> 
        <%-- Arranging data in tabular form 
        --%> 
            <tr> 
                <td><%=c.getCustomerId()%></td> 
                <td><%=c.getCustomerSSNId()%></td>  
            </tr> 
            <%}%> 
        </table> 
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>