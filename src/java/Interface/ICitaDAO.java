/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Entidades.Cita;
import com.google.gson.JsonArray;
import java.sql.SQLException;
import java.util.LinkedList;

/**
 *
 * @author yordy
 */
public interface ICitaDAO {

    public void insertar(Cita cita) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public LinkedList<Cita> obtenerLista() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public JsonArray obtenerListaJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public JsonArray obtenerListaJSON_IdPaciente(int idPaciente) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public JsonArray obtenerListaJSON_IdDoctor(int idDoctor) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public int obtenerLastID() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public void modificarEstadoPorId(String estado, int id) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException;
}
