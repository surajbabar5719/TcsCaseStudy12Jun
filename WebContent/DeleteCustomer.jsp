<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Customer</title>
</head>
<body>
         <centre>
        <h1> Delete Customer</h1>
                 
        
        <form action="deleteCustomer" method=post>
	    <table>
	     <tr><td><strong>Customer SSN ID</strong></td><td><input type=text name="cssId"id="cssId"value="cssId"></td></tr>
	     <tr><td><strong>customer ID</strong></td><td><input type=text name="customerId"id="customerId"value="customerId"></td></tr>
	      <tr><td><strong>Customer Name</strong><td><input type=text name="customerName"id="customerName"value="customerName""></td></tr>
	      <tr><td><strong>Age</strong></td><td><input type=text name="age"id="age"value="age"></td></tr>
	      <tr><td><strong>Address</strong></td><td><input type=text name="address"id="address"value="address"></td></tr>
         	</table><br>
            <input type=submit value="delete" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
            <input type=submit value="cancle" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
		
	        </form>
	    </centre>
</body>
</html>