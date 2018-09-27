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
	UserDao user=new UserDao();	
	String username=request.getParameter("username");
	session.setAttribute("username", username);
	String password=request.getParameter("password");
	int bit=user.checkUser(username, password);
	if(bit==1)
		response.sendRedirect("succ.html");
	else
		response.sendRedirect("login.html");
		
%>
</body>
</html>