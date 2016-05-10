<%-- 
    Document   : CustomerLogin
    Created on : Nov 25, 2014, 6:31:24 PM
    Author     : Savithri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
           <script language="JavaScript" type="text/javascript">
           
            function validateForm() {
          var x = document.forms["myform"]["cusname"].value;
          if (x==null || x=="") {
         alert("Customer Name must be filled out");
         return false;
    }
    
       var y = document.forms["myform"]["cusemail"].value;
          if (y==null || y=="") {
        alert("Customer Email  must be filled out");
        return false;
}
  }
               
            
            
        </script>
    </head>
    <body bgcolor="#98CBE8">
        <form action="Choice.jsp" name="myform" method="post"onsubmit="return validateForm()">
            <table border="0">
                <h2>Customer Login</h2>
              
                    <tr>
                        <td>Customer Name</td>
                        <td><input type="text" name="cusname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Customer Email</td>
                        <td><input type="text" name="cusemail" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="LOGIN" /></td>
                        <td><input type="submit" value="RESET" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
