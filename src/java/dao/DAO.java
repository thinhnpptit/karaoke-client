/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author thinh
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
//    protected static Connection con;

    //constructor
//    public DAO() {
////        this.dbClass =  ;
////    public static Connection getConnection(){
//        if(con == null){
//            String dbUrl = "jdbc:mysql://localhost:3306/karaoke_client?autoReconnect=true&useSSL=false";
////            String dbClass = "com.mysql.jdbc.Driver";
//            String dbClass = "com.mysql.cj.jdbc.Driver";
// 
//            try {
//                Class.forName(dbClass);
//                con = DriverManager.getConnection (dbUrl, "root", "123456a@");
//            }catch(Exception e) {
//                e.printStackTrace();
//            }
//        }
////        return con;
//    }
    public Connection getConnection() throws SQLException {
        String dbClass= "com.mysql.cj.jdbc.Driver";
        String dbUrl = "jdbc:mysql://localhost:3306/karaoke_client?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
        Connection conn = null;
        try {
            Class.forName(dbClass);
            conn = DriverManager.getConnection(dbUrl, "root", "123456a@");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
