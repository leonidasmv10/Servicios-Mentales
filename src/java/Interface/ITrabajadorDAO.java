/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Entidades.Trabajador;
import java.sql.SQLException;

/**
 *
 * @author yordy
 */
public interface ITrabajadorDAO {
    
    public int buscar(String usuario, String password) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException;
    
    public Trabajador obtener(String usuario) throws ClassNotFoundException, InstantiationException, IllegalAccessException ;
}
