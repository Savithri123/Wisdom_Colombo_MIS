<%-- 
    Document   : AdminBooks
    Created on : Nov 25, 2014, 7:18:16 PM
    Author     : Savithri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Wisdom.WisdomDatabase"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          <script language="JavaScript" type="text/javascript">
           
            function validateFormAddB() {
          var x = document.forms["myform3"]["bookid"].value;
          if (x==null || x=="") {
        alert("Book ID must be filled out");
        return false;
    }
    
       var y = document.forms["myform3"]["bookname"].value;
          if (y==null || y=="") {
        alert("Book Name must be filled out");
        return false;
}
       var z = document.forms["myform3"]["bookprice"].value;
          if (y==null || y=="") {
        alert("Book Price must be filled out");
        return false;
}
  }
  
       function validateFormUpdateB() {
          var x = document.forms["myform4"]["bookupid"].value;
          if (x==null || x=="") {
        alert("Book ID must be filled out");
        return false;
    }
    
       var y = document.forms["myform4"]["bookupname"].value;
          if (y==null || y=="") {
        alert("Book Name must be filled out");
        return false;
}
       var z = document.forms["myform4"]["bookupprice"].value;
          if (y==null || y=="") {
        alert("Book Price must be filled out");
        return false;
}
  }
  
  
        function validateFormDeleteB() {
          var x = document.forms["myform5"]["bookdelid"].value;
          if (x==null || x=="") {
        alert("Book ID must be filled out");
        return false;
    }
    
       var y = document.forms["myform5"]["bookdelname"].value;
          if (y==null || y=="") {
        alert("Book Name must be filled out");
        return false;
}
       var z = document.forms["myform5"]["bookdelprice"].value;
          if (y==null || y=="") {
        alert("Book Price must be filled out");
        return false;
}
  }         
            
            
        </script>
        
    </head>
    <body bgcolor="#98CBE8">
        <h1>BOOKS</h1>
        <form action="BooksDatabase"  name="myform3" method="POST" onsubmit="return validateFormAddB()">
            <table border="0">
                <h2>ADD BOOKS</h2>
          
                <tbody>
                    <tr>
                        <td>Book ID</td>
                        <td><input type="text" name="bookid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Book Name</td>
                        <td><input type="text" name="bookname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Book Price</td>
                        <td><input type="text" name="bookprice" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="ADD " /></td>
                        <td><input type="reset" value="RESET" /></td>
                    </tr>
                </tbody>
            </table>
      </form>
  
        <form action="BooksDatabase" method="POST" onsubmit="return validateFormUpdateB()" name="myform4" >
        
            <table border="0">
             
                <h2>UPDATE BOOKS</h2>
                
                <tbody>
                    
                     <tr>
                        <td>Book ID</td>
                        <td><input type="text" name="bookupid" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td>Book Name</td>
                        <td><input type="text" name="bookupname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Book Price</td>
                        <td><input type="text" name="bookupprice" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="UPDATE" /></td>
                        <td><input type="reset" value="RESET" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        
        <form action="BooksDatabase" method="POST"  onsubmit="return validateFormDeleteB()" name="myform5">
        
            <table border="0">
                <h2>DELETE BOOKS</h2>
             
                <tbody>
                    <tr>
                        <td>Book ID</td>
                        <td><input type="text" name="bookdelid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Book Name</td>
                        <td><input type="text" name="bookdelname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Book Price</td>
                        <td><input type="text" name="bookdelprice" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="DELETE" /></td>
                        <td><input type="reset" value="RESET" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    
    
    </body>
</html>
