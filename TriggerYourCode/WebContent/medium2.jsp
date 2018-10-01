<%@page import="code.dao.UserDao"%>
<%@page import="code.model.Answers"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/stylemedium.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
	<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"> -->
</head>
<% 
	UserDao user=new UserDao();
  	int score=user.getUserScore(session.getAttribute("username").toString());
  	session.setAttribute("score", score);
  	session.setAttribute("questionnumber",2);
  %>

<body style="background-image: url(images/background.jpg)">
  <div class="nav-container">
    <div class="navbar">
      <div class="mobileMenu"></div>
      <p class="left-item">Score <span id="score" ><%=score %></span></p>
     <div id="clockdiv"></div> 
      
    </div>
    
  </div>
<div class="container">
<div class="col-sm-6">
	<div class="card" onclick="flip(event)">
    <div class="front">
      <h1>Medium Level</h1>
      <img class="dart" src="images/dart.png" width="250px">
       <h1 class="below">Click The Dart<br>To Flip The Card</h1>
      <img class="gif" src="images/arrowicon.gif" width="50px">

    </div>
    <div class="back">
      <h1 style="text-decoration: underline;">Problem</h1><br>
      <p>Assume that the value of a = 1, b = 2, c = 3, ... , z = 26. You are given a numeric string S. Write a program to return the list of all possible codes that can be generated from the given string.<br><br>
<b>Note : The order of codes are not important. And input string does not contain 0s.</b><br><br> Input format : 
A numeric string <br>
Constraints : 
1 <= Length of String S <= 10<br> Sample Input: 
1123 <br>
Sample Output: 
aabc kbc alc 
aaw kw 
</p>
    </div>
  </div>
</div>

  <div class="col-sm-6">
  <form>
      <fieldset>
        <div class="scroll-box">
    <p>
          <textarea placeholder="Lets see " name="answer" id="answer" style="height: 286px;width: 526px;"></textarea>
        </p>

    </div>
    
      </fieldset>
    </form>
  
<button type="button" class="btn btn-success" onclick="myFunction()" style="font-size: 20px;">Next</button>

</div>
</div>
  
</body>
<script type="text/javascript" src="js/timer.js"></script>
<script type="text/javascript" src="js/flip.js"></script>

  <script>
function myFunction() {
	var answer=document.getElementById("answer").value;
	var param="?qnumber="+2+"&type=medium&answer="+answer;
	window.open("Question.jsp"+param,'_self');   

}
function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };

</script>
</html>