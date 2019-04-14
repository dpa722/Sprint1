/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package conexion;

//import com.mysql.jdbc.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author daniel
 */
public class bd {
    private final static String url = "jdbc:mysql://Localhost:3306/sprint1";
    private final static String user = "root";
    private final static String password = "";
    //metodo para conectar con la base de datos
    public Connection conectar(){
        Connection conexion = null;
        try{
            
            conexion = (Connection) DriverManager.getConnection(url,user,password);
            System.out.println("conexion exitosa");
        }catch(SQLException e){
            System.out.println("Error en la conexion");
            e.printStackTrace();
        }
        return conexion;
    }
    
}
