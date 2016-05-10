<%-- 
    Document   : Books
    Created on : Nov 25, 2014, 8:43:07 PM
    Author     : Savithri
--%>

<%@page import="java.sql.*"%>
<%@page import="Wisdom.WisdomDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
WisdomDatabase db=new WisdomDatabase();
Statement st=db.getStatement();
ResultSet rs=st.executeQuery("SELECT * FROM BOOKS");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#98CBE8">
        <form action="BookOrder.jsp" method="POST">
            <table border="0">
                <h2>Books Available</h2>
                <tbody>
                    <tr>
                        <td><select name="Book">
                                      <%while (rs.next()){%>
                                <%String s = rs.getString("Book_name");%>                                
                                <option><%= s %></option>
                                <%}%>
                            </select></td>
                       
                    </tr>
                    <tr>
                        <td>Shipping</td>
                        <td><input type="radio" name="shipping" value="radio1" checked="checked" />Srilanka Post(free)</td>
                        <td><input type="radio" name="shipping" value="radio2" />International(Rs.500)</td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="PURCHASE" /></td>
                       
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
