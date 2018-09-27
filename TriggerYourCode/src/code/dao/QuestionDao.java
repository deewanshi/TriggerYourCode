package code.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import code.util.DatabaseConnection;

public class QuestionDao {

	private Connection connection;
	private Statement st;
	private ResultSet rs;
	public QuestionDao() {
		// TODO Auto-generated constructor stub
		connection = DatabaseConnection.getConnection();
	}
	public boolean checkAnswer(String answer,int qnumber,String type) throws SQLException {
		System.out.println(answer+" "+qnumber+" "+type);
		String sql="select answer from questions where qnumber="+qnumber+" && qtype='"+type+"'";
	    st = connection.createStatement();
    	rs = st.executeQuery(sql);
    	String ans=null;
    	while (rs.next())
        {
    		ans=rs.getString("answer");
    	}
    	System.out.println(answer);
    	if(ans.equalsIgnoreCase(answer))
    	{
    		System.out.println("true");
        	return true;
    	}
    	connection.close();
    	rs.close();
    	st.close();
		return false;
	}
}
