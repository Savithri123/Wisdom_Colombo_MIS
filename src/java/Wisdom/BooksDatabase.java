/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Wisdom;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Savithri
 */
@WebServlet(name = "BooksDatabase", urlPatterns = {"/BooksDatabase"})
public class BooksDatabase extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BooksDatabase</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BooksDatabase at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
           if(request.getParameter("bookname") != null){
            try {
                int book_id = Integer.parseInt(request.getParameter("bookid"));
                String book_name = request.getParameter("bookname");
                String book_price = request.getParameter("bookprice");
              
                
                WisdomDatabase db=new WisdomDatabase ();
                db.addBook(book_id, book_name, book_price);
                response.sendRedirect("AdminBooks.jsp");
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BooksDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
           
          
            if(request.getParameter("bookupname") != null){
            try {
                int book_upid = Integer.parseInt(request.getParameter("bookupid"));
                String book_upname = request.getParameter("bookupname");
                String book_upprice = request.getParameter("bookupprice");
              
                
                WisdomDatabase db=new WisdomDatabase ();
                db.updateBook(book_upid, book_upname, book_upprice);
                response.sendRedirect("AdminBooks.jsp");
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BooksDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
            
           
              if(request.getParameter("bookdelname") != null){
            try {
                int book_delid = Integer.parseInt(request.getParameter("bookdelid"));
                String book_delname = request.getParameter("bookdelname");
                String book_delprice = request.getParameter("bookdelprice");
              
                
                WisdomDatabase db=new WisdomDatabase ();
                db.deleteBook(book_delid, book_delname, book_delprice);
                response.sendRedirect("AdminBooks.jsp");
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BooksDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
