package util;

import java.sql.*;
import com.mysql.jdbc.Driver;


public class Conexao {
    public Connection conectar() throws SQLException{
        try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           
           //localhost
           return DriverManager.getConnection("jdbc:mysql://localhost/db_catalogo?useTimezone=true&serverTimezone=UTC&user=root&password="); 
         
           
        }catch(ClassNotFoundException e){
            throw new RuntimeException(e);
        }
    }
}