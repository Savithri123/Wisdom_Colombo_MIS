<%-- 
    Document   : Adminlogin2
    Created on : Nov 25, 2014, 6:44:20 PM
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
        String name=request.getParameter("adminname");
        String pass=request.getParameter("adminpass");
        
        if(name.equals("wisdomcolombo")&& pass.equals("1234")){
          response.sendRedirect("AdminPage.jsp");
         } else{
           response.sendRedirect("AdminError.jsp");
         }
        %>
        
    </body>
</html>
