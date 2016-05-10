<%-- 
    Document   : Welcome
    Created on : Nov 25, 2014, 6:07:54 PM
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
    <center>  
        
        <table border="0">
              
        <form action="Login.jsp"mathod="Post" >
           
                <tr>
                    <td> <h2>Welcome To Wisdom Book Shop</h2></td> <br>
                </tr>
                
                <tr>
                    <td><h2>Login Here!</h2></td>
                </tr>
                
                    <tr>
                        <td><input type="radio" name="radio" value="radio1" /> <b>Admin</b></td>
                        
                    </tr>
                   
                  <tr> 
                      <td><input type="radio" name="radio" value="radio2" /> <b>Customer</b></td>
                      
                 </tr>
                  
                
                      <td> <input type="submit" value="Login" />
                      <input type="reset" value="Reset" /></td>
                  
             
            </table>
        </form>
        </center>
        </body>
    
</html>
