/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;
import Entidades.Cita;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;


public class CitaDAO {
    
    
    public LinkedList<Cita> obtenerLista() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select * from Cita";
        LinkedList<Cita> lista = new LinkedList<Cita>();

        try {
            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                Cita cita = new Cita();
                
                cita.setIdCita(resultado.getInt("idCita"));
                cita.setMotivo(resultado.getString("citMotivo"));
                cita.setFecha(resultado.getString("citFecha"));
                cita.setEstado(resultado.getString("citEstado"));
                lista.add(cita);
            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }
        return lista;
    }
    
}
