/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Cita;
import Interface.ICitaDAO;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class CitaDAO implements ICitaDAO {

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
                cita.setMonto(resultado.getFloat("citMontoTotal"));
                cita.setIdDoctor(resultado.getInt("idDoctor"));
                cita.setIdPaciente(resultado.getInt("idPaciente"));
                cita.setHorario(resultado.getString("citHorario"));
                lista.add(cita);
            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }
        return lista;
    }

    public JsonArray obtenerListaJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select * from Cita";
        JsonArray array = new JsonArray();

        try {

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {

                JsonObject item = new JsonObject();

                item.addProperty("idCita", resultado.getInt("idCita"));
                item.addProperty("motivo", resultado.getString("citMotivo"));
                item.addProperty("fecha", resultado.getString("citFecha"));
                item.addProperty("estado", resultado.getString("citEstado"));
                item.addProperty("monto", resultado.getString("citMontoTotal"));
                item.addProperty("idDoctor", resultado.getString("idDoctor"));
                item.addProperty("idPaciente", resultado.getString("idPaciente"));
                item.addProperty("horario", resultado.getString("citHorario"));

                array.add(item);
            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }

        return array;
    }

}
