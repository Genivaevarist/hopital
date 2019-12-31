/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 * 
 */
import static java.lang.Class.forName;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
public class dbconnection {
    public static Connection getConnection(){
        Connection con = null;
        try {
           Class.forName ("com.mysql.jdbc.Driver");
           con =DriverManager.getConnection("jdbc:mysql://localhost/hospital","root","");
          
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
        
    }   catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    return con;
}
}
