<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
</head>
<body>
 <centre>
        <h1> Delete Account</h1>
                 
        
        <form action="deleteAccount" method=post>
	    <table>
	     <tr><td><strong>ACCOUNT ID</strong></td><td><input type=text name="accountId"></td></tr>
	     <tr><td><strong>ACCOUNT TYPE</strong></td><td><input type=text name="accountType"></td></tr>
	      
         	</table><br>
            <input type=submit value="Delete Account" style="background-color:black; color:rgb(232,232,232); padding:14px 30px;">
            
		
	        </form>
	    </centre>
</body>
</html>