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
import java.sql.SQLException;
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

        try {
            //String jsonA = request.getParameter("apoderado");
           
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            String dni = request.getParameter("dni");
            String sexo = request.getParameter("sexo");
            String fechaDeNacimiento = request.getParameter("fechaDeNacimiento");
            String direccion = request.getParameter("direccion");
            String religion = request.getParameter("religion");
            String estadoCivil = request.getParameter("estadoCivil");
            String nivelAcademico = request.getParameter("nivelAcademico");

            String celular = request.getParameter("celular");
            String celularEmergencia = request.getParameter("celularEmergencia");
            String correo = request.getParameter("correo");

            //Apoderado apoderado = new Gson().fromJson(jsonA, Apoderado.class);
            //Paciente paciente = new Gson().fromJson(jsonP, Paciente.class);
            Paciente paciente = new Paciente();
            
            paciente.setNombres(nombres);
            paciente.setApellidos(apellidos);
            paciente.setDni(dni);
            paciente.setFechaDeNacimiento(fechaDeNacimiento);
            paciente.setReligion(religion);
            paciente.setSexo(sexo);
            paciente.setDireccion(direccion);
            paciente.setEstadoCivil(estadoCivil);
            paciente.setNivelAcademico(nivelAcademico);
            
            Apoderado apoderado = new Apoderado();
            apoderado.setCelular(celular);
            apoderado.setCelularEmergencia(celularEmergencia);
            apoderado.setCorreo(correo);

            HttpSession sesion = request.getSession();

            new PacienteDAO().insertar(paciente);
            
            int idApoderado = (int) sesion.getAttribute("idApoderado");           
            int idPaciente = new PacienteDAO().obtenerPorDni(paciente.getDni()).getIdPaciente();

            apoderado.setIdPaciente(idPaciente);
            apoderado.setIdApoderado(idApoderado);

            new ApoderadoDAO().insertarPaciente(apoderado);
            new ApoderadoDAO().modificarDatosDeAfiliacion(paciente, apoderado);

            String JSON = new Gson().toJson(paciente);
            response.getWriter().write(JSON);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistrarDatosDeAfiliacion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(RegistrarDatosDeAfiliacion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(RegistrarDatosDeAfiliacion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegistrarDatosDeAfiliacion.class.getName()).log(Level.SEVERE, null, ex);
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
