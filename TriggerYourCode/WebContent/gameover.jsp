<%@page import="code.dao.UserDao"%>
<%@page import="code.model.Answers"%>
<!DOCTYPE html>
<html>
<head>
	<title>Game-Over</title>
	<link href='https://fonts.googleapis.com/css?family=VT323' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<% 
	UserDao user=new UserDao();
  	int score=user.getUserScore(session.getAttribute("username").toString());
  	user.updateCurrentPage(session.getAttribute("username").toString(),"gameover.jsp");
%>
<body style="background-image: url(images/gameover.jpeg)"">
<p class="over">GAME OVER</p>
<p class="score">Score: <span id="score" ><%=score %></p>

</body>
</html>