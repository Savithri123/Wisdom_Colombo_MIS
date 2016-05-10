<%-- 
    Document   : AdminMagazine
    Created on : Nov 25, 2014, 7:18:43 PM
    Author     : Savithri
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Wisdom.WisdomDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <script language="JavaScript" type="text/javascript">
           
            function validateFormAddM() {
          var x = document.forms["myform6"]["magid"].value;
          if (x==null || x=="") {
        alert("Magazine ID must be filled out");
        return false;
    }
    
       var y = document.forms["myform6"]["magname"].value;
          if (y==null || y=="") {
        alert("Magazine Name must be filled out");
        return false;
}
       var z = document.forms["myform6"]["magprice"].value;
          if (y==null || y=="") {
        alert("Magazine Price must be filled out");
        return false;
}
  }
  
       function validateFormUpdateM() {
          var x = document.forms["myform7"]["magupid"].value;
          if (x==null || x=="") {
        alert("Magazine ID must be filled out");
        return false;
    }
    
       var y = document.forms["myform7"]["magupname"].value;
          if (y==null || y=="") {
        alert("Magazine Name must be filled out");
        return false;
}
       var z = document.forms["myform7"]["magupprice"].value;
          if (y==null || y=="") {
        alert("Magazine Price must be filled out");
        return false;
}
  }
  
  
        function validateFormDeleteM() {
          var x = document.forms["myform8"]["maddelid"].value;
          if (x==null || x=="") {
        alert("Magazine ID must be filled out");
        return false;
    }
    
       var y = document.forms["myform8"]["magdelname"].value;
          if (y==null || y=="") {
        alert("Magazine Name must be filled out");
        return false;
}
       var z = document.forms["myform8"]["magkdelprice"].value;
          if (y==null || y=="") {
        alert("Magazine Price must be filled out");
        return false;
}
  }         
            
            
        </script>
        
    </head>
    <body bgcolor="#98CBE8">
        <h1>Magazines</h1>
        <form action="MagazinesDatabase" method="POST"  onsubmit="return validateFormAddM()" name="myform6">
            <table border="0">
                <h2>ADD MAGAZINES</h2>
                <tbody>
                    <tr>
                        <td>Magazine ID</td>
                        <td><input type="text" name="magid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Magazine Name</td>
                        <td><input type="text" name="magname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Magazine Price</td>
                        <td><input type="text" name="magprice" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="ADD" /></td>
                        <td><input type="reset" value="RESET" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        
        <form action="MagazinesDatabase" method="POST"  onsubmit="return validateFormUpdateM()" name="myform7">
            <table border="0">
                <h2>UPDATE MAGAZINES</h2>
                <tbody>
                    <tr>
                        <td>Magazine ID</td>
                        <td><input type="text" name="magupid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Magazine Name</td>
                        <td><input type="text" name="magupname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Magazine price</td>
                        <td><input type="text" name="magupname" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="UPDATE" /></td>
                        <td><input type="submit" value="RESET" /></td>
                    </tr>
                </tbody>
            </table>
      </form>
        
        <form action="MagazinesDatabase" method="POST"  onsubmit="return validateFormDeleteM()" name="myform8">
            <table border="0">
           
                <h2>DELETE MAGAZINES</h2>
                <tbody>
                    <tr>
                        <td>Magazine ID</td>
                        <td><input type="text" name="magdelid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Magazine Name</td>
                        <td><input type="text" name="magdelname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Magazine Price</td>
                        <td><input type="text" name="magdelprice" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="DELETE" /></td>
                        <td><input type="submit" value="RESET" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
