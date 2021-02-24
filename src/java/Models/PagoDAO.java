/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.Pago;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class PagoDAO {

    public void insertar(Pago pago) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        try {

            String consultaSQL = String.format("insert into Pago values(default,%d,'%s','%s',%d,'%s')",
                    pago.getIdCita(), pago.getEstado(), pago.getImagen(), pago.getIdCajero(), pago.getFecha());

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public JsonArray obtenerListaCajeroJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select \n"
                + "Pago.idCita,idPago,pacNombres,pacApellidos,pacDni,pagFecha,citHorario,citMotivo,pagEstado\n"
                + " from Pago join Cita on Pago.idCita = Cita.idCita join Paciente on Cita.idPaciente=Paciente.idPaciente";

        JsonArray array = new JsonArray();
        try {
            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {

                JsonObject item = new JsonObject();

                item.addProperty("idCita", resultado.getInt("Pago.idCita"));
                item.addProperty("idPago", resultado.getInt("idPago"));
                item.addProperty("nombres", resultado.getString("pacNombres"));
                item.addProperty("apellidos", resultado.getString("pacApellidos"));
                item.addProperty("dni", resultado.getString("pacDni"));
                item.addProperty("fecha", resultado.getString("pagFecha"));
                item.addProperty("horario", resultado.getString("citHorario"));
                item.addProperty("motivo", resultado.getString("citMotivo"));
                item.addProperty("estado", resultado.getString("pagEstado"));
                array.add(item);
            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }

        return array;
    }

}
