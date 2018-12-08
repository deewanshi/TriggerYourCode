<%@page import="code.model.User"%>
<%@page import="code.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	 User user=new User();
	String username=request.getParameter("username");
	 user.setName(request.getParameter("name"));
	user.setCollege(request.getParameter("college"));
	user.setEmail(request.getParameter("email"));
	user.setMobile(request.getParameter("number"));
	user.setUsername(request.getParameter("username"));
	user.setPassword(request.getParameter("password"));
	user.setYear(request.getParameter("year"));
	user.setBranch(request.getParameter("branch"));
	user.setGender(request.getParameter("gender"));
	UserDao userdao=new UserDao();
	int status=userdao.addUser(user);
	userdao=new UserDao();
	//userdao.updateUserTime(username, 180);
	if(status>0){
		response.sendRedirect("succ.jsp");
	}
	else
		response.sendRedirect("reg.jsp"); 
	/*	out.println(request.getParameter("name"));
		out.println(request.getParameter("college"));
		out.println(request.getParameter("email"));
		out.println(request.getParameter("number"));
		out.println(request.getParameter("username"));
		out.println(request.getParameter("password"));
		out.println(request.getParameter("year"));
		out.println(request.getParameter("branch"));
		out.println(request.getParameter("gender"));
	*/
		session.setAttribute("name", request.getParameter("name"));
	session.setAttribute("college", request.getParameter("college"));
	session.setAttribute("email", request.getParameter("email"));
	session.setAttribute("mobile", request.getParameter("number"));
	session.setAttribute("username", request.getParameter("username"));
	session.setAttribute("password", request.getParameter("password"));
	session.setAttribute("year", request.getParameter("year"));
	session.setAttribute("branch", request.getParameter("branch"));
	session.setAttribute("gender", request.getParameter("gender"));
//out.println(request.getParameter("name"));


%>
</body>
</html>