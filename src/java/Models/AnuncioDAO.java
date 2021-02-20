/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.LinkedList;
import Entidades.Anuncio;
import Entidades.Apoderado;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AnuncioDAO {

    public JsonArray obtenerListaJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select idAnuncio,anuTitulo,anuDescripcion,anuTipo,anuEstado,idAdministrador from Anuncio";
        JsonArray array = new JsonArray();
        try {
            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {

                JsonObject item = new JsonObject();

                item.addProperty("idAnuncio", resultado.getInt("idAnuncio"));
                item.addProperty("titulo", resultado.getString("anuTitulo"));
                item.addProperty("descripcion", resultado.getString("anuDescripcion"));
                item.addProperty("tipo", resultado.getString("anuTipo"));
                item.addProperty("estado", resultado.getString("anuEstado"));
                item.addProperty("idAdmin", resultado.getString("idAdministrador"));

                array.add(item);
            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }

        return array;
    }
    
    public LinkedList<Anuncio> obtenerLista() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select idAnuncio,anuTitulo,anuDescripcion,anuTipo,anuEstado,idAdministrador from Anuncio";
        LinkedList<Anuncio> lista = new LinkedList<Anuncio>();
        try {
            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) 
            {
                Anuncio anuncio = new Anuncio();
      
                anuncio.setIdAnuncio(resultado.getInt("idAnuncio"));
                anuncio.setTitulo(resultado.getString("anuTitulo"));
                anuncio.setDescripcion(resultado.getString("anuDescripcion"));
                anuncio.setTipo(resultado.getString("anuTipo"));
                anuncio.setEstado(resultado.getString("anuEstado"));
                anuncio.setIdAdmin(resultado.getInt("idAdministrador"));
                
                lista.add(anuncio);

            }

            GestorSQL.Instance().cerrarConexion();
        } catch (SQLException e) {
            out.println(e);
        }

        return lista;
    }

}
