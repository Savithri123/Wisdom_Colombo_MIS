<%-- 
    Document   : MagazineOrder
    Created on : Nov 25, 2014, 9:29:51 PM
    Author     : Savithri
--%>

<%@page import="java.sql.*"%>
<%@page import="Wisdom.WisdomDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
WisdomDatabase db=new WisdomDatabase();
Statement st=db.getStatement();
ResultSet rs=st.executeQuery("SELECT * FROM MAGAZINES");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#98CBE8">
        <%
            String mag = request.getParameter("magazine");
            int month = Integer.parseInt(request.getParameter("months"));
            
            int price = 0;
            int discount = 0;
            if(month < 12){
            while(rs.next()){
                if(mag.equals(rs.getString("Mag_name"))){                   
                   price = Integer.parseInt( rs.getString("Mag_price"));
                } else{
                     discount = price - (price*10/100);
                }              
                }
            }
            
        %>

        <h1>Magazine Receipt</h1>
        <table border="1">
                <tr>
                    <td><%=mag%></td>
                    <td>Rs.<%=price%></td>
                </tr>
                <tr>
                    <td>After 10% discount</td>
                    <td>Rs.<%=discount%></td>
                </tr>
            </tbody>      
        </table>
    </body>
</html>

    </body>
</html>
