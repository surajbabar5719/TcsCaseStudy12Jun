<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Status Details</title>
</head>
<%@ include file="Header.jsp" %>
<meta charset="ISO-8859-1">
<title>Account Management</title>
</head>
<link rel="stylesheet" href="style.css">
<body><center>
<div class="text_area">
<form>
<br><strong><br>Account Id<br></strong><br><input type="text" name="accountId" id="accountId" required><br><br>
<input value="Deposit Amount" type="submit" formaction="DepositMoney.jsp" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;" ><br><br>
<input value="Withdraw Amount" type="submit" formaction="WithdrawMoney.jsp" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;" ><br><br>
<input value="Transfer Amount" type="submit" formaction="TransferAmount.jsp" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;" ><br><br>
</form>
<%
if(request.getAttribute("error")!=null){
out.print(request.getAttribute("error"));
request.setAttribute("error",null);
}
%>
</div>

</center>
</body>
</html><%@ include file="Footer.jsp" %>
