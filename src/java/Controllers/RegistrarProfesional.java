/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entidades.Profesional;
import Models.ProfesionalDAO;
import com.google.gson.Gson;
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
 * @author yordy
 */
@WebServlet(name = "RegistrarProfesional", urlPatterns = {"/RegistrarProfesional"})
public class RegistrarProfesional extends HttpServlet {

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
            out.println("<title>Servlet RegistrarProfesional</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarProfesional at " + request.getContextPath() + "</h1>");
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

        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String dni = request.getParameter("dni");
        String sexo = request.getParameter("sexo");
        String fechaNac = request.getParameter("fechaNac");
        String direccion = request.getParameter("direccion");
        String cmp = request.getParameter("cmp");
        String celular = request.getParameter("celular");
        String correo = request.getParameter("correo");
        String estado = request.getParameter("estado");
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        Profesional profesional = new Profesional();

        profesional.setNombres(nombres);
        profesional.setApellidos(apellidos);
        profesional.setDni(dni);
        profesional.setSexo(sexo);
        profesional.setFechaNac(fechaNac);
        profesional.setDireccion(direccion);
        profesional.setCmp(cmp);
        profesional.setCel(celular);
        profesional.setCorreo(correo);
        profesional.setEstadoCuenta(estado);
        profesional.setUsuario(usuario);
        profesional.setPasswd(password);

        try {
            new ProfesionalDAO().insertar(profesional);
            
            //String JSON = new Gson().toJson(profesional);
            //response.getWriter().write(JSON);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistrarProfesional.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(RegistrarProfesional.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(RegistrarProfesional.class.getName()).log(Level.SEVERE, null, ex);
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
