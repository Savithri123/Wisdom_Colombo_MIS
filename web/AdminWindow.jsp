<%-- 
    Document   : AdminWindow
    Created on : Nov 25, 2014, 7:14:30 PM
    Author     : Savithri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String radio=request.getParameter("radio");
        
              if (request.getParameter("radio") != null){
         if(request.getParameter("radio").equals("radio1")){
         
         response.sendRedirect("AdminBooks.jsp");
         }
         
         else{
             
         response.sendRedirect("AdminMagazine.jsp");
         
         
         }
         }
        
        %>
    </body>
</html>
