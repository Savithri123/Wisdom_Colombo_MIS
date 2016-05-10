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
@WebServlet(name = "MagazinesDatabase", urlPatterns = {"/MagazinesDatabase"})
public class MagazinesDatabase extends HttpServlet {

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
            out.println("<title>Servlet MagazinesDatabase</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MagazinesDatabase at " + request.getContextPath() + "</h1>");
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
         if(request.getParameter("magname") != null){
            try {
                int mag_id = Integer.parseInt(request.getParameter("magid"));
                String mag_name = request.getParameter("magname");
                String mag_price = request.getParameter("magprice");
              
                
                WisdomDatabase db=new WisdomDatabase ();
                db.addMagazine(mag_id, mag_name, mag_price);
                response.sendRedirect("AdminMagazine.jsp");
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BooksDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
         
            if(request.getParameter("magupname") != null){
            try {
                int mag_upid = Integer.parseInt(request.getParameter("magupid"));
                String mag_upname = request.getParameter("magupname");
                String mag_upprice = request.getParameter("magupprice");
              
                
                WisdomDatabase db=new WisdomDatabase ();
                db.updateMagazine(mag_upid, mag_upname, mag_upprice);
                response.sendRedirect("AdminMagazine.jsp");
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BooksDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
            
            if(request.getParameter("magdelname") != null){
            try {
                int mag_delid = Integer.parseInt(request.getParameter("madelid"));
                String mag_delname = request.getParameter("magdelname");
                String mag_delprice = request.getParameter("magdelprice");
              
                
                WisdomDatabase db=new WisdomDatabase ();
                db.deleteMagazine(mag_delid, mag_delname, mag_delprice);
                response.sendRedirect("AdminMagazine.jsp");
                
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
