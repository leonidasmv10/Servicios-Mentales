/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Paciente;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class PacienteDAO {

    public void insertar(Paciente paciente) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        try {

            String consultaSQL = String.format("insert into Paciente VALUES(default,'%s','%s','%s','%s','%s','%s','%s','%s','%s')",
                    paciente.getNombres(), paciente.getApellidos(), paciente.getDni(),
                    paciente.getFechaDeNacimiento(), paciente.getSexo(), paciente.getDireccion(),
                    paciente.getReligion(), paciente.getEstadoCivil(), paciente.getNivelAcademico());

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Paciente obtenerPorDni(String dni) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        
        Paciente paciente = new Paciente();
        
        try {

            String consultaSQL = String.format("select * from Paciente where pacDNI = '%S'", dni);

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                paciente.setIdPaciente(resultado.getInt("idPaciente"));
                
                
                out.print(paciente.getIdPaciente());
                
                
                paciente.setNombres(resultado.getString("pacNombres"));
                paciente.setApellidos(resultado.getString("pacApellidos"));
                paciente.setDni(resultado.getString("pacDNI"));
                paciente.setFechaDeNacimiento(resultado.getString("pacFechaNac"));
                paciente.setSexo(resultado.getString("pacSexo"));
                paciente.setDireccion(resultado.getString("pacDireccion"));
                paciente.setReligion(resultado.getString("pacReligion"));
                paciente.setEstadoCivil(resultado.getString("pacEstadoCivil"));
                paciente.setNivelAcademico(resultado.getString("pacNivelAcademico"));


            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return paciente;
    }
    
    public Paciente obtenerPorId(int id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        
        Paciente paciente = new Paciente();
        
        try {

            String consultaSQL = String.format("select * from Paciente where idPaciente = '%d'", id);

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                
                paciente.setIdPaciente(resultado.getInt("idPaciente"));
                paciente.setNombres(resultado.getString("pacNombres"));
                paciente.setApellidos(resultado.getString("pacApellidos"));
                paciente.setDni(resultado.getString("pacDNI"));
                paciente.setFechaDeNacimiento(resultado.getString("pacFechaNac"));
                paciente.setSexo(resultado.getString("pacSexo"));
                paciente.setDireccion(resultado.getString("pacDireccion"));
                paciente.setReligion(resultado.getString("pacReligion"));
                paciente.setEstadoCivil(resultado.getString("pacEstadoCivil"));
                paciente.setNivelAcademico(resultado.getString("pacNivelAcademico"));


            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return paciente;
    }

}
