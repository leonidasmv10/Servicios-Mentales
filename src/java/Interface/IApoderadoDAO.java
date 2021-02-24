/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Entidades.Apoderado;
import Entidades.Paciente;
import java.sql.SQLException;
import java.util.LinkedList;

/**
 *
 * @author yordy
 */
public interface IApoderadoDAO {

    public void insertar(String nombres, String apellidos, String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public void insertar(Apoderado apoderado) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public LinkedList<Apoderado> obtenerLista() throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public int buscar(String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public Apoderado obtener(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public Apoderado obtener(int id) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public void insertarPaciente(Apoderado apoderado) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException;

    public int obtenerIdPaciente(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException;

    public void modificarDatosDeAfiliacion(Paciente paciente, Apoderado apoderado) throws ClassNotFoundException, InstantiationException, IllegalAccessException;
}
