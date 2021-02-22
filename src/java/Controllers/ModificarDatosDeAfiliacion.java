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
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
@WebServlet(name = "ModificarDatosDeAfiliacion", urlPatterns = {"/ModificarDatosDeAfiliacion"})
public class ModificarDatosDeAfiliacion extends HttpServlet {

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
            out.println("<title>Servlet ModificarDatosDeAfiliacion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModificarDatosDeAfiliacion at " + request.getContextPath() + "</h1>");
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

        Paciente paciente = new Paciente();
        
        HttpSession sesion = request.getSession();

        Apoderado apoderado = (Apoderado) sesion.getAttribute("apoderado");

        paciente.setNombres(request.getParameter("nombres"));
        paciente.setApellidos(request.getParameter("apellidos"));
        paciente.setDni(request.getParameter("dni"));
        paciente.setSexo(request.getParameter("sexo"));
        paciente.setFechaDeNacimiento(request.getParameter("fechaDeNacimiento"));
        paciente.setDireccion(request.getParameter("direccion"));

        apoderado.setCelular(request.getParameter("celular"));
        apoderado.setCelularEmergencia(request.getParameter("celularEmergencia"));
        apoderado.setCorreo(request.getParameter("correo"));
        
        paciente.setReligion(request.getParameter("religion"));
        paciente.setEstadoCivil(request.getParameter("estadoCivil"));
        paciente.setNivelAcademico(request.getParameter("nivelAcademico"));

        try {
            int idPaciente = new PacienteDAO().obtenerPorDni(paciente.getDni()).getIdPaciente();
           
            
           // int idPaciente = (int)sesion.getAttribute("idPaciente");
            
            apoderado.setIdPaciente(idPaciente);
            paciente.setIdPaciente(idPaciente);

            new ApoderadoDAO().modificarDatosDeAfiliacion(paciente, apoderado);
            String JSON = new Gson().toJson(apoderado);
            response.getWriter().write(JSON);

        } catch (Exception e) {
            out.print(e);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
