<%@page import="code.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>



<link href="https://fonts.googleapis.com/css?family=Lobster|PT+Serif" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Merienda" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kreon" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css" >
<title> qualified</title>
</head>

<%
	UserDao userdao=new UserDao();
	userdao.updateCurrentPage(session.getAttribute("username").toString(),"qualified.jsp");
%>


<script>
function myFunction() {
window.open("level2.jsp",'_self');   
}

function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };
</script>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>

.jumbotron{
	margin-top: 180px;
	align-content: center;
	text-align: center;
	font-family: 'Lobster', cursive;
	background-color: transparent;
}



#bg{

background-image: url(images/bow-and-arrow.gif);
  background-size: 1500px 800px;

}

.button {
    background-color: #10CED1; /* Green */
    border: none;
    color: white;
    padding: 8px 28px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 30px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;

}

.button1 {
    
    color: black; 
    border: 2px solid black;
    background-color: transparent;
}

.button1:hover {
	background-color: #10CED1;
    color: white;
    
}
 
</style>
</head>
<body id="bg">
	<div class="container jumbotron">
		<h1 class="display-1" style="font-size: 100px;"> Congratulations <b><p style="font-family: 'Kreon', serif;
 font-size: 40px";> you have </p></b>
 </h1>
		
		<h1 class="display-1" style="font-size: 100px;"> Qualified  </h1>
		<p style="font-family: 'Kreon', serif;
 font-size: 40px";> for the next level </p>
		<p style="font-family: font-family: 'Kreon', serif;
 font-size: 40px";> you can proceed.. </p>
	<button onclick="myFunction()" class="button button1">Start</button> 
	</div>



</body>
</html>
