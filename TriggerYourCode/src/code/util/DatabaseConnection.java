package code.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {

	static Connection con;
	static Statement statement;
	static void createDatabase() throws SQLException {
		String stmt="CREATE DATABASE coderspy IF NOT EXISTS";
		statement = con.createStatement();
        statement.executeUpdate(stmt);
      //  System.out.println("customers_db has successfully been created");
	}
	public static Connection getConnection() {
        try  {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/code","root","teapot456");
            //createDatabase();
            return con;
        }
        catch(Exception ex) {
            System.out.println("Database.getConnection() Error -->" + ex.getMessage());
            return null;
        }
    }

     public static void close(Connection con) {
        try  {
            con.close();
        }
        catch(Exception ex) {
        }
    }
     public static void main(String[] args) {
	
    	 System.out.println(DatabaseConnection.getConnection());
    	 
	}
}
