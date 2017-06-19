package connection;

import java.sql.*;
public class DbConnect {
    public static Connection con;    
    public static Connection getDbConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/team_presence","root","root");
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
