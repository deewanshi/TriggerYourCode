package code.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import code.dao.UserDao;
import code.model.User;


public class UserServlet extends  HttpServlet{

	UserDao userdao;
	public UserServlet(){
		super();
		userdao=new UserDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
		doPost(request,response);
    }
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		User user=new User();
		user.setName(req.getParameter("name"));
		user.setCollege(req.getParameter("college"));
		//user.setCourse(req.getParameter("course"));
		user.setEmail(req.getParameter("email"));
		user.setMobile(req.getParameter("mobile"));
		//user.setUsername(req.getParameter("username"));
		//user.setPassword(req.getParameter("password"));
		user.setYear(req.getParameter("year"));
		user.setBranch(req.getParameter("branch"));
		user.setGender(req.getParameter("gender"));
		//userdao.addUser(user);
	}
}
