<%@page import="code.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
    
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
    <script src="bootstrap/js/jquery.min.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>See Rules</title>
  </head>
  
  
  <%
	UserDao userdao=new UserDao();
	userdao.updateCurrentPage(session.getAttribute("username").toString(),"succ.jsp");
%>
  


  <script>
function myFunction() {
	//var min=1; 
    //var max=4;  
    //var random =Math.floor(Math.random() * (+max - +min)) + +min;
    //var param="?qnumber="+1+"&type=easy";
	window.open("level1.jsp",'_self'); 
	
}
function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };

</script>

  <style>

  #rules{
    font-family: Courier New, Courier, monospace;
    font-size: 25px;
    padding-left: 3em;
    padding-right: 3em;
  }


  #header{
      padding-top: 30px;
     background-color: #315e8e;
     color: white;
     font-family: 'Galada', cursive;
  }

  /* HR IN HEADER */
  hr.style-four {
      height: 12px;
      border: 0;
      box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
  }

  /* LAST HR */

  hr.style-eight {
    overflow: visible; /* For IE */
    padding: 0;
    border: none;
    border-top: medium double #333;
    color: #333;
    text-align: center;
}
hr.style-eight:after {
    content: "§";
    display: inline-block;
    position: relative;
    top: -0.7em;
    font-size: 1.5em;
    padding: 0 0.25em;
    background: white;
}

.AA{
  background-color: rgba(0, 0, 0, 0.65);
  width: 700px;
  height: 555px;
  margin: 0 auto;
  margin-top: 20px;
  padding-top: 2.5px;
  padding-left: 10px;
  padding-right: 10px;
  border-radius: 15px;
  color:#66FFFF;
  font-family: 'Playfair Display', serif;
font-family: 'Lora', serif;

}

h1{
    font-size: 5em;
}





#bg{
  background-image: url(images/bow-and-arrow.gif);
  background-size: 1500px 800px;

}


.button {
    background-color: #10CED1; /* Green */
    border: none;
    color: white;
    padding: 4px 28px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    
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
 


  <body id="bg">
      <div class="AA">
          <h1> <center>Rules!</center></h1>
          <br>
          <ol  style="font-size: 20px">
<li> Player need to hit at the centre of the dart board for a level to begin.</li>
<li>You cannot go back at any point and blank answer is considered wrong.</li>
<li>First is easy level : for each correct answer is +10 and wrong answer gives you -3.</li>
<li>There is internal cut off for each level which you have to clear in order to go for the next level(easy: 25, medium: 50)</li>
<li> Second level is medium with +20 for each right answer and -5 for each wrong.</li>
<li> Third and final is hard level where each right answer is +50 and wrong is -10.</li>
<li> Player with the  highest score is the winner.</li>
<li>In case of any discrepancies the decision of the organizing committee is held final.</li>
          </ol>
   
<br><center><button onclick="myFunction()" class="button button1">Start</button></center>   
  </body>
</html>
