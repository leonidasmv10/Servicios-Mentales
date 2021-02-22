/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Historia;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class HistoriaDAO {
    
    
     public void insertar(Historia historia) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        try {

            String consultaSQL = String.format("insert into Historia values(default,'%s',%d,'%s','%s','%s','%s','%s');",
                    historia.getMotivo(),historia.getIdCita(),historia.getObservacion(),historia.getDescripcion(),historia.getDescripcion(),
                    historia.getExamen(),historia.getDiagnostico(),historia.getTratamiento());

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(CitaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
