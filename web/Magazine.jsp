<%-- 
    Document   : Magazine
    Created on : Nov 25, 2014, 8:43:38 PM
    Author     : Savithri
--%>

<%@page import="java.sql.*"%>
<%@page import="Wisdom.WisdomDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
WisdomDatabase db=new WisdomDatabase();
Statement st=db.getStatement();
ResultSet r=st.executeQuery("SELECT * FROM MAGAZINES");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#98CBE8">
        <form action="MagazineOrder.jsp" method="POST">
            <table border="0">
                <h2>Magazines</h2>
              
                <tbody>
                    <tr>
                        <td><select name="magazine">
                                    <%while (r.next()){%>
                                <%String s = r.getString("Mag_name");%>                                
                                <option><%= s %></option>
                                <%}%>
                            </select>
                            </td>
                        
                    </tr>
                    <tr>
                        <td>Months
                        <input type="text" name="months" value="" /></td>
                    </tr>
                    <tr>
                        <td><b>Note:</b>10%discount for more than 12 months</td>
                      
                    </tr>
                    <tr>
                        <td><input type="submit" value="SUBMIT" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
