/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entidades.DetalleDePago;
import Entidades.Paciente;
import Models.DetalleDePagoDAO;
import Models.PacienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yordy
 */
@WebServlet(name = "EnviarCitaAdministrador", urlPatterns = {"/EnviarCitaAdministrador"})
public class EnviarCitaAdministrador extends HttpServlet {

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
            out.println("<title>Servlet EnviarCitaAdministrador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EnviarCitaAdministrador at " + request.getContextPath() + "</h1>");
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
        
        String id = request.getParameter("idCita");
        int idCita = Integer.parseInt(id);

        LinkedList<DetalleDePago> detalleDePagos;
        Paciente paciente = new Paciente();
       

        try {
            detalleDePagos = new DetalleDePagoDAO().obtenerListaPorIdCita(idCita);           
            paciente = new PacienteDAO().obtenerPorIdCita(idCita);
            
            HttpSession sesion = request.getSession();

            int totalPagar = detalleDePagos.size() == 2 ? 150 : 100;

            sesion.setAttribute("detalleDePagos", detalleDePagos);
            sesion.setAttribute("totalPagar", totalPagar);
            sesion.setAttribute("idCita", idCita);
            sesion.setAttribute("paciente", paciente);
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EnviarCitaAdministrador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(EnviarCitaAdministrador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(EnviarCitaAdministrador.class.getName()).log(Level.SEVERE, null, ex);
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
