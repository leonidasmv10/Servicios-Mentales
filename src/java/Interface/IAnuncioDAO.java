/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Entidades.Anuncio;
import com.google.gson.JsonArray;
import java.util.LinkedList;

/**
 *
 * @author yordy
 */
public interface IAnuncioDAO {

    public JsonArray obtenerListaNovedadJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public JsonArray obtenerListaAnuncioJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public LinkedList<Anuncio> obtenerLista() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public Anuncio obtenerPorId(int id) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public void modificarAnuncio(Anuncio anuncio) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

}
