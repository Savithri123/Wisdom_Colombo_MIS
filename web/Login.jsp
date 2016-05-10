<%-- 
    Document   : Login
    Created on : Nov 25, 2014, 6:28:03 PM
    Author     : Savithri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#98CBE8">
        <%
            String radio=request.getParameter("radio");
            
             if (request.getParameter("radio") != null){
         if(request.getParameter("radio").equals("radio1")){
         
         response.sendRedirect("AdminLogin.jsp");
         }
         
         else{
             
         response.sendRedirect("CustomerLogin.jsp");
         
         
         }
     }
        
        
        
        
        %>
    </body>
</html>
