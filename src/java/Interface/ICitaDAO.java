/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Entidades.Cita;
import com.google.gson.JsonArray;
import java.util.LinkedList;

/**
 *
 * @author yordy
 */
public interface ICitaDAO {

    public LinkedList<Cita> obtenerLista() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public JsonArray obtenerListaJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException;
}
