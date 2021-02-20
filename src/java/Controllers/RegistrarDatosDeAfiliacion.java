/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entidades.Apoderado;
import Entidades.Paciente;
import Models.ApoderadoDAO;
import Models.PacienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yordy
 */
@WebServlet(name = "RegistrarDatosDeAfiliacion", urlPatterns = {"/RegistrarDatosDeAfiliacion"})
public class RegistrarDatosDeAfiliacion extends HttpServlet {

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
            out.println("<title>Servlet RegistrarDatosDeAfiliacion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarDatosDeAfiliacion at " + request.getContextPath() + "</h1>");
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

        if (request.getParameter("botonRegistrar") != null) {

            Paciente paciente = new Paciente();

            Apoderado apoderado = (Apoderado) request.getSession().getAttribute("apoderado");

            paciente.setNombres(request.getParameter("nombreT").toString());
            paciente.setApellidos(request.getParameter("apellidosT").toString());
            paciente.setDni(request.getParameter("dniT").toString());
            paciente.setSexo(request.getParameter("sexoT").toString());
            paciente.setFechaDeNacimiento(request.getParameter("fechaNacT").toString());
            paciente.setDireccion(request.getParameter("direccionT").toString());
            apoderado.setCelular(request.getParameter("celularT").toString());
            apoderado.setCelularEmergencia(request.getParameter("celEmergenciaT").toString());
            apoderado.setCorreo(request.getParameter("correoT").toString());
            paciente.setReligion(request.getParameter("religionT").toString());
            paciente.setEstadoCivil(request.getParameter("estadoCivilT").toString());
            paciente.setNivelAcademico(request.getParameter("nivelAcademicoT").toString());

            try {

                new PacienteDAO().insertar(paciente);

                int idPaciente = new PacienteDAO().obtenerPorDni(paciente.getDni()).getIdPaciente();
                apoderado.setIdPaciente(idPaciente);
                request.getSession().setAttribute("idPaciente", idPaciente);

                out.print("ID: " + idPaciente);

                new ApoderadoDAO().insertarPaciente(apoderado);
                request.getRequestDispatcher("view/Apoderado/Home.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e);
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
