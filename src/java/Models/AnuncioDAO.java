/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.LinkedList;
import Entidades.Anuncio;
import Entidades.Apoderado;
import Interface.IAnuncioDAO;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AnuncioDAO implements IAnuncioDAO{

    public JsonArray obtenerListaNovedadJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select idAnuncio,anuTitulo,anuDescripcion,anuTipo,anuEstado,idAdministrador from Anuncio where anuTipo = 'Novedad' and anuEstado = 'v'";
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

    public JsonArray obtenerListaAnuncioJSON() throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = "select idAnuncio,anuTitulo,anuDescripcion,anuTipo,anuEstado,idAdministrador from Anuncio where anuTipo = 'Anuncio' and anuEstado = 'v'";
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

            while (resultado.next()) {
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

    public Anuncio obtenerPorId(int id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        Anuncio anuncio = new Anuncio();

        try {

            String consultaSQL = String.format("select * from Anuncio where idAnuncio = '%d'", id);

            GestorSQL.Instance().abrirConexion();
            ResultSet resultado = GestorSQL.Instance().ejecutarConsulta(consultaSQL, true);

            while (resultado.next()) {

                anuncio.setIdAnuncio(resultado.getInt("idAnuncio"));
                anuncio.setTitulo(resultado.getString("anuTitulo"));
                anuncio.setDescripcion(resultado.getString("anuDescripcion"));
                anuncio.setTipo(resultado.getString("anuTipo"));
                anuncio.setEstado(resultado.getString("anuEstado"));
                anuncio.setIdAdmin(resultado.getInt("idAdministrador"));
            }

            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(AnuncioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return anuncio;
    }

    public void modificarAnuncio(Anuncio anuncio) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String consultaSQL = String.format("UPDATE Anuncio set anuTitulo = '%s', anuDescripcion = '%s', anuEstado = '%s' where idAnuncio = %d",
                anuncio.getTitulo(), anuncio.getDescripcion(), anuncio.getEstado(), anuncio.getIdAnuncio());

        try {

            GestorSQL.Instance().abrirConexion();
            GestorSQL.Instance().ejecutarConsulta(consultaSQL, false);
            GestorSQL.Instance().cerrarConexion();

        } catch (SQLException ex) {
            Logger.getLogger(AnuncioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
