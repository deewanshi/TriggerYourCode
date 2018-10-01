package code.dao;
import code.model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import code.util.DatabaseConnection;

public class AnswerDao {

	private Connection connection;
	public AnswerDao() {
		// TODO Auto-generated constructor stub
		connection = DatabaseConnection.getConnection();
	}
	public void addAnswer(Answers ans) throws SQLException {
       
    	try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into answers(qnumber,answer,qtype,username) values (?, ?, ?,?)");
            // Parameters start with 1
            preparedStatement.setInt(1, ans.getQnumber());
            //preparedStatement.setString(2, user.getCourse());
            preparedStatement.setString(2,ans.getAnswer());            
            preparedStatement.setString(3, ans.getQtype());
            preparedStatement.setString(4, ans.getUsername());
            preparedStatement.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	connection.close();
    	
    }
}
