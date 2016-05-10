<%-- 
    Document   : AdminPage
    Created on : Nov 25, 2014, 6:50:43 PM
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
        <form action="AdminWindow.jsp" method="POST">
        
        
            <table border="0">
               
                    <tr>
                        <h1>Admin Window</h1>
                      
                    </tr>
                    <tr>
                       <input type="radio" name="radio" value="radio1" /> Books
                       <input type="radio" name="radio" value="radio2" /> Magazines
                   </tr> <br> <br>
                  
                    <tr>
                        <input type="submit" value="SUBMIT" />
                        <input type="reset" value="RESET" />
                    </tr>
                
            </table>

        
        
        
        </form>
     
    </body>
</html>
