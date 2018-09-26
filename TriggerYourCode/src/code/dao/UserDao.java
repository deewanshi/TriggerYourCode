package code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import code.model.User;
import code.util.DatabaseConnection;

public class UserDao {

	private Connection connection;
	 
    public UserDao() {
        connection = DatabaseConnection.getConnection();
    }
 
    public int addUser(User user) {
        int status = 0;
    	try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into user(name,college,mobile,year,email,branch,gender,username,password) values (?, ?, ?, ?,?,?,?,?,?)");
            // Parameters start with 1
            preparedStatement.setString(1, user.getName());
            //preparedStatement.setString(2, user.getCourse());
            preparedStatement.setString(2, user.getCollege());            
            preparedStatement.setString(3, user.getMobile());
            preparedStatement.setString(4, user.getYear());
            preparedStatement.setString(5, user.getEmail());
            preparedStatement.setString(6, user.getBranch());
            preparedStatement.setString(7, user.getGender());
            preparedStatement.setString(8,user.getUsername());
            preparedStatement.setString(9,user.getPassword());
            status=preparedStatement.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	return status;
    }
  
 
}
