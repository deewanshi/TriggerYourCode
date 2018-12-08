<%@page import="code.model.Answers"%>
<%@page import="code.dao.AnswerDao"%>
<%@page import="code.dao.QuestionDao"%>
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
	int score=0;
  	String username=session.getAttribute("username").toString();
	int qnumber=Integer.parseInt(session.getAttribute("questionnumber").toString());
	if(request.getParameter("type").equals("easy")){
	Answers ans=new Answers();
    ans.setQnumber(Integer.parseInt(request.getParameter("qnumber")));
    ans.setQtype(request.getParameter("type"));
	ans.setAnswer(request.getParameter("answer"));
	ans.setUsername(username);
	AnswerDao ansdao=new AnswerDao();
	ansdao.addAnswer(ans);
	QuestionDao dao=new QuestionDao();
	if(dao.checkAnswer(ans.getAnswer(), ans.getQnumber(),ans.getQtype()))
		score=Integer.parseInt(session.getAttribute("score").toString())+10;
	else
		score=Integer.parseInt(session.getAttribute("score").toString())-3;
	UserDao user =new UserDao();
	user.setUserScore(session.getAttribute("username").toString(), score);
	if(qnumber<4)
		response.sendRedirect("easy"+(qnumber+1)+".jsp");
	else
	{
		if(score<25)
			response.sendRedirect("gameover.jsp");
		else
			response.sendRedirect("qualified.jsp");
	}
	}
	else if(request.getParameter("type").equals("medium")){
		Answers ans=new Answers();
	    ans.setQnumber(Integer.parseInt(request.getParameter("qnumber")));
	    ans.setQtype(request.getParameter("type"));
		ans.setAnswer(request.getParameter("answer"));
		ans.setUsername(username);
		AnswerDao ansdao=new AnswerDao();
		ansdao.addAnswer(ans);
		QuestionDao dao=new QuestionDao();
		if(dao.checkAnswer(ans.getAnswer(), ans.getQnumber(),ans.getQtype()))
			score=Integer.parseInt(session.getAttribute("score").toString())+20;
		else
			score=Integer.parseInt(session.getAttribute("score").toString())-5;
		UserDao user =new UserDao();
		user.setUserScore(session.getAttribute("username").toString(), score);
		if(qnumber<3)
			response.sendRedirect("medium"+(qnumber+1)+".jsp");
		else
		{
			if(score<50)
				response.sendRedirect("gameover.jsp");
			else
				response.sendRedirect("qualified1.jsp");
		}
			
	}
	else if(request.getParameter("type").equals("hard")){
		Answers ans=new Answers();
	    ans.setQnumber(Integer.parseInt(request.getParameter("qnumber")));
	    ans.setQtype(request.getParameter("type"));
		ans.setAnswer(request.getParameter("answer"));
		ans.setUsername(username);
		AnswerDao ansdao=new AnswerDao();
		ansdao.addAnswer(ans);
		QuestionDao dao=new QuestionDao();
		if(dao.checkAnswer(ans.getAnswer(), ans.getQnumber(),ans.getQtype()))
			score=Integer.parseInt(session.getAttribute("score").toString())+50;
		else
			score=Integer.parseInt(session.getAttribute("score").toString())-10;
		UserDao user =new UserDao();
		user.setUserScore(session.getAttribute("username").toString(), score);
		if(qnumber<2)
			response.sendRedirect("hard"+(qnumber+1)+".jsp");
		else
			response.sendRedirect("gameover.jsp");	
	}
	
%>
</body>
</html>