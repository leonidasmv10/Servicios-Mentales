/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Trabajador;
import Interface.ITrabajadorDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class TrabajadorDAO implements ITrabajadorDAO{
    
    
    
     public int buscar(String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        int find = 0;
        String consultaSQL = String.format("select count(*) from Trabajador where traUsuario='%s' and traPasswd='%s'", usuario, password);

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                find = resultado.getInt(1);
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(TrabajadorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return find;
    }

    public Trabajador obtener(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        
        String consultaSQL = String.format("select * from Trabajador where traUsuario='%s';", usuario);
        Trabajador trabajador = new Trabajador();

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                
                trabajador.setIdTrabajador(resultado.getInt("idTrabajador"));
                trabajador.setNombres(resultado.getString("traNombres"));
                trabajador.setApellidos(resultado.getString("traApellidos"));
                trabajador.setDni(resultado.getString("traDNI"));
                trabajador.setFechaNac(resultado.getString("traFechaNac"));
                trabajador.setSexo(resultado.getString("traSexo"));
                trabajador.setDireccion(resultado.getString("traDireccion"));
                trabajador.setCorreo(resultado.getString("traCorreo"));
                trabajador.setCel(resultado.getString("traCel"));
                trabajador.setUsuario(resultado.getString("traUsuario"));
                trabajador.setPasswd(resultado.getString("traPasswd"));
                trabajador.setEstadoCuenta(resultado.getString("traEstadoCuenta"));

            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return trabajador;
    }
    
}
