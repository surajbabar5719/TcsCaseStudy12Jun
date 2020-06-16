<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tcs.casestudy.userDAO.UserDAO"%><html>
   <body>
      <center>
      <link rel="stylesheet" href="style.css">
      <%@ include file="Header.jsp" %>
            <div class="text_area"><%
        String customerId=request.getParameter("customerId");
		String accountId=request.getParameter("accountId");
		String accountType=request.getParameter("accountType");
		String balance=request.getParameter("balance");
		String depositAmount=request.getParameter("depositAmount");
		System.out.println(customerId);
		boolean check=UserDAO.depositAmount(customerId,accountId,accountType,balance,depositAmount);
		if(check==true)
		{	
			%>
			<h1>Successfull</h1><%
		}%></div>
         <%@ include file="Footer.jsp" %>
   </body>
</html>