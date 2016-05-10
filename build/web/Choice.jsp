<%-- 
    Document   : Choice.jsp
    Created on : Nov 25, 2014, 8:32:07 PM
    Author     : Savithri
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#98CBE8">
        
        <% 
        
     String name=request.getParameter("cusname");
       String email= request.getParameter("cusemail");
       
        String driver="com.mysql.jdbc.Driver";
        Class.forName(driver);
        
        String url="jdbc:mysql://localhost:3306/wisdomcolombo";
        Connection con=DriverManager.getConnection(url,"root","");
        Statement st=con.createStatement();
        String sql="Insert into Customer values('"+name+"','"+email+"')";
        st.executeUpdate(sql);
        
        
        %>
        
         <form action="Choose" method="POST">
            <table border="0">
                <h2>Buy Books or Subscribe to a Magazine</h2>
                <tbody>
                    <tr>
                        <td><input type="radio" name="radio" value="radio1" />Buy Books</td>
                        
                    </tr>
                    <tr>
                        <td><input type="radio" name="radio" value="radio2" />Subscribe to Magazine</td>
                       
                    </tr>
                    <tr>
                        <td><input type="submit" value="GO" /></td>
                    
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
