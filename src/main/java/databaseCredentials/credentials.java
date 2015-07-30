/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseCredentials;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Shriman
 */
public class credentials {

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.err.println("Drivers not found!, " + ex.getMessage());
        }
        try {
            String jdbc = "jdbc:mysql://127.13.154.130:3306/moviedb";
            String username = "adminmCBYGTb";
            String password = "Fr24eiwAC2Vz";
            conn = DriverManager.getConnection(jdbc, username, password);
        } catch (SQLException ex) {
            System.err.println("Failed to Connect!, " + ex.getMessage());
        }
        return conn;
    }
}
