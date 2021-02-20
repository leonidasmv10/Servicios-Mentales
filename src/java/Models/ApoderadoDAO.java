/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Apoderado;
import Entidades.Paciente;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class ApoderadoDAO {

    public void insertar(String nombres, String apellidos, String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        try {

            String consultaSQL = String.format("INSERT INTO Apoderado (apoNombres, apoApellidos, apoUsuario, apoPasswd, apoEstadoCuenta) VALUES('%s','%s','%s','%s','A')",
                    nombres, apellidos, usuario, password);
            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void insertar(Apoderado apoderado) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        try {

            String consultaSQL = String.format("INSERT INTO Apoderado (apoNombres, apoApellidos, apoUsuario, apoPasswd, apoEstadoCuenta) VALUES('%s','%s','%s','%s','A')",
                    apoderado.getNombres(), apoderado.getApellidos(), apoderado.getUsuario(), apoderado.getPassword());

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public LinkedList<Apoderado> obtenerLista() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select idApoderado,apoCorreo,apoNombres,apoApellidos,apoUsuario,apoPasswd,apoCel,apoCelEmergencia,idPaciente,apoEstadoCuenta from Apoderado";
        LinkedList<Apoderado> lista = new LinkedList<Apoderado>();

        try {
            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                Apoderado apoderado = new Apoderado();
                apoderado.setIdApoderado(resultado.getInt("idApoderado"));
                apoderado.setNombres(resultado.getString("apoNombres"));
                apoderado.setApellidos(resultado.getString("apoApellidos"));
                apoderado.setUsuario(resultado.getString("apoUSuario"));
                apoderado.setPassword(resultado.getString("apoPasswd"));
                apoderado.setCelular(resultado.getString("apoCel"));
                apoderado.setCelularEmergencia(resultado.getString("apoCelEmergencia"));
                apoderado.setIdPaciente(resultado.getInt("idPaciente"));
                apoderado.setEstadoCuenta(resultado.getString("apoEstadoCuenta"));
                apoderado.setCorreo(resultado.getString("apoCorreo"));
                lista.add(apoderado);
            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }
        return lista;
    }

    public int buscar(String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        int find = 0;
        String consultaSQL = String.format("select count(*) from Apoderado where apoUsuario='%s' and apoPasswd='%s'", usuario, password);
        out.print(consultaSQL);
        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                find = resultado.getInt(1);
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return find;
    }

    public Apoderado obtener(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        String consultaSQL = String.format("select * from Apoderado where apoUsuario='%s';", usuario);
        Apoderado apoderado = new Apoderado();

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                apoderado.setIdApoderado(resultado.getInt("idApoderado"));
                apoderado.setNombres(resultado.getString("apoNombres"));
                apoderado.setApellidos(resultado.getString("apoApellidos"));
                apoderado.setUsuario(resultado.getString("apoUSuario"));
                apoderado.setPassword(resultado.getString("apoPasswd"));
                apoderado.setCelular(resultado.getString("apoCel"));
                apoderado.setCelularEmergencia(resultado.getString("apoCelEmergencia"));
                apoderado.setIdPaciente(resultado.getInt("idPaciente"));
                apoderado.setEstadoCuenta(resultado.getString("apoEstadoCuenta"));
                apoderado.setCorreo(resultado.getString("apoCorreo"));
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return apoderado;
    }

    public void insertarPaciente(Apoderado apoderado) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        String consultaSQL = String.format("UPDATE Apoderado set apoCel = '%s', apoCelEmergencia = '%s', apoCorreo='%s', idPaciente=%d where idApoderado=%d",
                apoderado.getCelular(), apoderado.getCelularEmergencia(), apoderado.getCorreo(), apoderado.getIdPaciente(), apoderado.getIdApoderado());

        try {

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public int obtenerIdPaciente(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        int id = 0;
        String consultaSQL = String.format("select idPaciente from Apoderado where apoUsuario = '%s'", usuario);

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                id = resultado.getInt("idPaciente");

            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return id;

    }

    public void modificarDatosDeAfiliacion(Paciente paciente, Apoderado apoderado) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = String.format("UPDATE Paciente p\n"
                + "        INNER JOIN\n"
                + "    Apoderado a ON p.idPaciente = a.idPaciente\n"
                + "SET \n"
                + "p.pacNombres='%s', p.pacApellidos='%s', p.pacDNI='%s',p.pacFechaNac='%s', p.pacSexo='%s',\n"
                + "p.pacDireccion='%s',p.pacReligion='%s',p.pacEstadoCivil='%s',p.pacNivelAcademico='%s',a.apoCel='%s',a.apoCelEmergencia='%s',a.apoCorreo='%s'\n"
                + "WHERE a.idApoderado=%d",paciente.getNombres(),paciente.getApellidos(),paciente.getDni(),paciente.getFechaDeNacimiento(),
                paciente.getSexo(),paciente.getDireccion(),paciente.getReligion(),paciente.getEstadoCivil(),paciente.getNivelAcademico(),
                apoderado.getCelular(),apoderado.getCelularEmergencia(),apoderado.getCorreo(), apoderado.getIdApoderado());

        try {

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
