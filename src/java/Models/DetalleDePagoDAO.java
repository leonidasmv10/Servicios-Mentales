/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entidades.DetalleDePago;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yordy
 */
public class DetalleDePagoDAO {

    public void insertar(DetalleDePago detalleDePago) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        try {

            String consultaSQL = String.format("insert into DetallePago values(default,%d,'%s',%d)",
                    detalleDePago.getIdCita(), detalleDePago.getServicio(), detalleDePago.getMonto());

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(DetalleDePagoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public LinkedList<DetalleDePago> obtenerListaPorIdCita(int idCita) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        String consultaSQL = String.format("select * from DetallePago where idCita = %d", idCita);

        LinkedList<DetalleDePago> lista = new LinkedList<DetalleDePago>();

        try {
            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {
                DetalleDePago detalleDePago = new DetalleDePago();
                detalleDePago.setIdDetalleDePago(resultado.getInt("idDetallePago"));
                detalleDePago.setIdCita(resultado.getInt("idCita"));
                detalleDePago.setServicio(resultado.getString("detServicio"));
                detalleDePago.setMonto(resultado.getInt("detMonto"));
                lista.add(detalleDePago);
            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }
        return lista;
    }

}
