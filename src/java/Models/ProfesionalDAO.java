/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Profesional;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class ProfesionalDAO {
    
    
    
    public void insertar(Profesional profesional) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        try {

            String consultaSQL = String.format("insert into Profesional VALUES(default,'%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s');",
                    profesional.getNombres(),profesional.getApellidos(),profesional.getFechaNac(),profesional.getDni(),profesional.getSexo(),profesional.getDireccion(),
                    profesional.getCorreo(),profesional.getCel(),profesional.getUsuario(),profesional.getPasswd(),profesional.getCmp(),profesional.getEstadoCuenta());

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ProfesionalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
     public int buscar(String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        int find = 0;
        String consultaSQL = String.format("select count(*) from Profesional where proUsuario='%s' and proPasswd='%s'", usuario, password);

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                find = resultado.getInt(1);
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ProfesionalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return find;
    }

    public Profesional obtener(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        
        String consultaSQL = String.format("select * from Profesional where proUsuario='%s';", usuario);
        Profesional profesional = new Profesional();

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                
                profesional.setIdProfesional(resultado.getInt("idProfesional"));
                profesional.setNombres(resultado.getString("proNombres"));
                profesional.setApellidos(resultado.getString("proApellidos"));
                profesional.setFechaNac(resultado.getString("proFechaNac"));
                profesional.setDni(resultado.getString("proDNI"));
                profesional.setSexo(resultado.getString("proSexo"));
                profesional.setDireccion(resultado.getString("proDireccion"));
                profesional.setCorreo(resultado.getString("proCorreo"));
                profesional.setCel(resultado.getString("proCel"));
                profesional.setUsuario(resultado.getString("proUsuario"));
                profesional.setPasswd(resultado.getString("proPasswd"));
                profesional.setCmp(resultado.getString("proCMP"));
                profesional.setEstadoCuenta(resultado.getString("proEstadoCuenta"));
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(ApoderadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return profesional;
    }
    
}
