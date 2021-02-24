/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entidades.Apoderado;
import Entidades.Cita;
import Entidades.DetalleDePago;
import Models.CitaDAO;
import Models.DetalleDePagoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yordy
 */
@WebServlet(name = "RegistrarCitaApoderado", urlPatterns = {"/RegistrarCitaApoderado"})
public class RegistrarCitaApoderado extends HttpServlet {

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
            out.println("<title>Servlet RegistrarCita</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarCita at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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

        String motivo = request.getParameter("motivo");
        String fecha = request.getParameter("fecha");
        String idDoctor = request.getParameter("idDoctor");
        String horario = request.getParameter("horario");

        Apoderado apoderado = (Apoderado) request.getSession().getAttribute("apoderado");

        Cita cita = new Cita();
        cita.setMotivo(motivo);
        cita.setFecha(fecha);
        cita.setIdDoctor(Integer.parseInt(idDoctor));
        cita.setHorario(horario);
        cita.setIdPaciente(apoderado.getIdPaciente());

        try {

            new CitaDAO().insertar(cita);
            int idCita = new CitaDAO().obtenerLastID();
            DetalleDePago detalleDePago = new DetalleDePago();

            detalleDePago.setServicio("Consulta psiquiátrica");
            detalleDePago.setMonto(100);
            detalleDePago.setIdCita(idCita);

            new DetalleDePagoDAO().insertar(detalleDePago);

            if (!cita.getMotivo().equals("Consulta")) {

                detalleDePago.setServicio("Certificado Médico");
                detalleDePago.setMonto(50);
                detalleDePago.setIdCita(idCita);

                new DetalleDePagoDAO().insertar(detalleDePago);
            }

            response.getWriter().write("INSERTANDO CITA");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistrarCitaApoderado.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(RegistrarCitaApoderado.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(RegistrarCitaApoderado.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegistrarCitaApoderado.class.getName()).log(Level.SEVERE, null, ex);
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
