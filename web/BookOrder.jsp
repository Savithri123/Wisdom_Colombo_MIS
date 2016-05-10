<%-- 
    Document   : BookOrder
    Created on : Nov 25, 2014, 9:29:22 PM
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
    <%
     String Book=request.getParameter("Book");
     String radio=request.getParameter("shipping");
     
     int shipp=0;
     int price=0;
     
     if(radio.equals("radio2")){
        shipp=500;
     }else{
        shipp=0;
     }
     
         while(rs.next()){
                if(Book.equals(rs.getString("Book_name"))){                   
                   price = Integer.parseInt( rs.getString("Book_price"));
                }
            }
          int finalp = price + shipp;
     
     %>
    </body>
   
        <table border="1">
            <h2>Receipt For Books</h2>
            <tbody>
                <tr>
                    <td><%=Book %></td>
                    <td><%=price%></td>
                  
                </tr>
                <tr>
                    <td>Shipping</td>
                    <td><%=shipp%></td>
                  
                </tr>
                <tr>
                    <td>Total</td>
                    <td><%=finalp%></td>
                </tr>
            </tbody>
        </table>


</html>
