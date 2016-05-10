<%-- 
    Document   : AdminLogin
    Created on : Nov 25, 2014, 6:30:55 PM
    Author     : Savithri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
           <script language="JavaScript" type="text/javascript">
           
            function validateForm1() {
          var x = document.forms["myform1"]["adminname"].value;
          if (x==null || x=="") {
         alert("User Name must be filled out");
         return false;
    }
    
       var y = document.forms["myform1"]["adminpass"].value;
          if (y==null || y=="") {
        alert("Password must be filled out");
        return false;
}
  }
               
            
            
        </script>
    </head>
    <body bgcolor="#98CBE8">
       
        
        <form action="Adminlogin2.jsp"  name="myform1" method="POST" onsubmit="return validateForm1()">
            <center> 
                
               
                <table border="0">
           
                <tbody>
                    
                    <tr> <h2>Admin Login </h2></tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="adminname" value="" /></td>
                        
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="adminpass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Clear" /></td>
                    
                    </tr>
                </tbody>
            </table>
            </center>
        
        
        </form>
    </body>
</html>
