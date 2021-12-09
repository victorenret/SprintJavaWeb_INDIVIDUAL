package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static Connection conn = null;

    private Conexion(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/base_prueba","uservictor","pass123");

            if(conn != null){
                System.out.println("Conexion correcta");
            }else{
                System.out.println("Falló la conexion");
            }
        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }

    public static Connection getConn() {

        if(conn == null){
            new Conexion();
        }

        return conn;
    }
}
