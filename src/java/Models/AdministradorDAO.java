/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Administrador;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class AdministradorDAO {

    public int buscar(String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        int find = 0;
        String consultaSQL = String.format("select count(*) from Administrador where admUsuario='%s' and admPasswd='%s'", usuario, password);

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                find = resultado.getInt(1);
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return find;
    }

    public Administrador obtener(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
       
        String consultaSQL = String.format("select * from Administrador where admUsuario='%s';", usuario);       
        Administrador administrador = new Administrador();

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                administrador.setIdAdministrador(resultado.getInt("idAdministrador"));
                administrador.setUsuario(resultado.getString("admUsuario"));
                administrador.setPassword(resultado.getString("admPasswd"));
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return administrador;
    }

}
