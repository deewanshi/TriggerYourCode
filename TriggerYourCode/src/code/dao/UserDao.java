package code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import code.model.User;
import code.util.DatabaseConnection;

public class UserDao {

	private Connection connection;
	 
    public UserDao() {
        connection = DatabaseConnection.getConnection();
    }
 
    public int addUser(User user) throws SQLException {
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
            
            //preparedStatement = connection.prepareStatement("insert into current(username,
           
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	//connection.close();
    	return status;
    }
    public boolean checkUser(User u) throws SQLException {
    	PreparedStatement ps=connection.prepareStatement(  
    		    "select * from user where username=? and password=?");  
    		  
    		ps.setString(1,u.getUsername());  
    		ps.setString(2, u.getPassword());  
    		              
    		ResultSet rs=ps.executeQuery();  
    		boolean status=rs.next();  
    		//connection.close();
    	return status;
    }
    public int getUserScore(String username) throws SQLException {
    	
    	String sql="select score from user where username='"+username+"'";
    	Statement st = connection.createStatement();
    	ResultSet rs = st.executeQuery(sql);
    	int score=0;
    	while(rs.next()) {
    		score=rs.getInt("score");
    	}
    	//connection.close();
    	return score;
    	
    }
    public void setUserScore(String username,int score) throws SQLException {
    	
    	String sql="update user set score="+score+" where username='"+username+"'";
    	Statement st = connection.createStatement();
    	st.executeUpdate(sql);
    	//st.executeUpdate(sql);
    	//connection.close();
    }
    public boolean updateUserTime(String username,int minutes) throws SQLException {
    	String sql="update user set minutes="+minutes+" where username='"+username+"'";
    	Statement st = connection.createStatement();
    	int y=st.executeUpdate(sql);
    	if(y>0)
    		return true;
    	
    	//connection.close();
    	return false;
    }
    public int getUserTime(String username) throws SQLException {
    	String sql="select minutes from user where username='"+username+"'";
    	Statement st = connection.createStatement();
    	ResultSet rs = st.executeQuery(sql);
    	int score=0;
    	while(rs.next()) {
    		score=rs.getInt("minutes");
    	}
    	//connection.close();
    	return score;

    }
    public boolean updateCurrentPage(String username,String page) throws SQLException {
    	String sql="update user set page='"+page+"' where username='"+username+"'";
    	Statement st = connection.createStatement();
    	int y=st.executeUpdate(sql);
    	if(y>0)
    		return true;
    	
    	
    	return false;
    }
    public String getCurrentPage(String username) throws SQLException {
    	String sql="select page from user where username='"+username+"'";
    	Statement st = connection.createStatement();
    	ResultSet rs = st.executeQuery(sql);
    	String page=null;
    	while(rs.next()) {
    		page=rs.getString("page");
    	}
    	System.out.println(page);
    	
    	return page;

    }
    public void finalize() throws SQLException {
    	connection.close();
    	
    }
}
