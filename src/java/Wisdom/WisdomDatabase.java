/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Wisdom;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Savithri
 */
public class WisdomDatabase {
    
        private Statement st;
    
    String Driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/wisdomcolombo";
    
    public  WisdomDatabase() throws ClassNotFoundException{

            try {
                Class.forName(Driver);
                Connection con = DriverManager.getConnection(url,"root","");
                st = con.createStatement();
            } catch (SQLException ex) {
                Logger.getLogger( WisdomDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    public Statement getStatement() {
        return st;
    }   
    //Books
      public void addBook(int bookid, String bookname, String bookprice){
        try {
            String sql="Insert into BOOKS values("+bookid+",'"+bookname+"','"+bookprice+"')";
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(WisdomDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }    

    void updateBook(int book_upid, String book_upname, String book_upprice) {
      try {
            String sql="UPDATE  BOOKS SET Book_name ='"+book_upname+"', Book_price='"+book_upprice+"'  WHERE Book_id="+book_upid+" ";
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(WisdomDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void deleteBook(int book_delid, String book_delname, String book_delprice) {
     
          try {
          String sql = "DELETE FROM BOOKS WHERE Book_name = '"+book_delname+"'";
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(WisdomDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
//Magazines
    void addMagazine(int mag_id, String mag_name, String mag_price) {
   
            try {
            String sql="Insert into MAGAZINES values("+mag_id+",'"+mag_name+"','"+mag_price+"')";
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(WisdomDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void updateMagazine(int mag_upid, String mag_upname, String mag_upprice) {
     
         try {
            String sql="UPDATE  MAGAZINES SET Mag_name ='"+mag_upname+"',Mag_price='"+mag_upprice+"'  WHERE Mag_id="+mag_upid+" ";
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(WisdomDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void deleteMagazine(int mag_delid, String mag_delname, String mag_delprice) {
        
            try {
             String sql = "DELETE FROM MAGAZINES WHERE mag_name = '"+mag_delname+"'";
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(WisdomDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
