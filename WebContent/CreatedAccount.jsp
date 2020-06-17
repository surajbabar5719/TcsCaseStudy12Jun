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
ResultSet rs,rs1;
Statement stmt = conn.createStatement();

rs1 = stmt.executeQuery("select * from Customer where customerId="+request.getParameter("customerId")+";");
if(!rs1.first())
{
	request.setAttribute("error","Wrong Customer Id");
	RequestDispatcher rd=getServletContext().getRequestDispatcher("/CreateAccount.jsp");
	rd.include(request, response);
}
ps=conn.prepareStatement("insert into account(accountType,balance,customerId) values('"+request.getParameter("accountType")+"',"+request.getParameter("balance")+",'"+request.getParameter("customerId")+"');");
ps.execute();

rs1 = stmt.executeQuery("select max(accountId) as accountId from Account;");
rs1.first();
request.setAttribute("error","Account Created");
RequestDispatcher rd=getServletContext().getRequestDispatcher("/AccountInfo.jsp?accountId="+rs1.getString("accountId"));
rd.include(request, response);
%>
</body>
</html>