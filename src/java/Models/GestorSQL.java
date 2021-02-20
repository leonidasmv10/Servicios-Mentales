/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import com.mysql.cj.protocol.Message;
import com.mysql.cj.xdevapi.PreparableStatement;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author yordy
 */
public class GestorSQL {

    private static GestorSQL instance = null;
    private Connection cnx;

    public static GestorSQL Instance() {
        if (instance == null) {
            instance = new GestorSQL();
        }
        return instance;
    }

    public void abrirConexion() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String login = "root";
            String pass = "CodeSignal2021";
            String url = "jdbc:mysql://localhost:3306/ServiciosMentales?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
            this.cnx = DriverManager.getConnection(url, login, pass);

        } catch (ClassNotFoundException | SQLException e) {
            out.print(e.getMessage());
        }
    }

    public void cerrarConexion() {
        try {
            cnx.close();
        } catch (SQLException e) {
            out.print(e.getMessage());
        }
    }

    public ResultSet ejecutarConsulta(String sentenciaSQL, boolean resultSet) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {

        Statement st = null;
        ResultSet rs = null;
        PreparedStatement ps = null;

        try {

            st = cnx.createStatement();
            if (!resultSet) {
                st.executeUpdate(sentenciaSQL);
            } else {
                rs = st.executeQuery(sentenciaSQL);
            }

        } catch (SQLException e) {
            out.print(e.getMessage());
        }
        
        return rs;
    }

}
