<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<%@ include file="Header.jsp" %>
<link rel="stylesheet" href="style.css">
<body>
<center>
<div class="text_area">
	<h1><strong style="font-size: 42px;">Welcome<br><br>
<%try{
         Cookie cookie = null;
         Cookie[] cookies = null;
   
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
           //	out.print(cookie.getName());
               if(cookie.getName().equals("name"))
               {
            	   String n=cookie.getValue().replace(":"," ");
            	String[] name=n.split("_");
            	out.print("Name:"+name[0]+"<br><br>Position:"+name[1]+"</h1>");
               }
            }
         }
         }
catch(Exception e){
	RequestDispatcher rd=getServletContext().getRequestDispatcher("/Login.jsp");
	rd.include(request, response);	
}
      %>
     
</strong></h2>
</div></center>
</body>
<%@ include file="Footer.jsp"%>
</html>