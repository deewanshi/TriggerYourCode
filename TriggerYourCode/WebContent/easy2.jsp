<%@page import="code.dao.UserDao"%>
<%@page import="code.model.Answers"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/styleeasy.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
	<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"> -->
</head>
<% 
	UserDao user=new UserDao();
	String username=session.getAttribute("username").toString();
  	int score=user.getUserScore(username);
  	session.setAttribute("score", score);
  	session.setAttribute("questionnumber",2);
 	//int h,s,m;
 	user=new UserDao();
 	user.updateCurrentPage(session.getAttribute("username").toString(),"easy2.jsp");
 	//h=Integer.parseInt(request.getParameter("hours"));
 	//m=Integer.parseInt(request.getParameter("min"));
 	//s=Integer.parseInt(request.getParameter("sec"));
 	//int temp=user.getUserTime(username);
 	
 %>
 
<!-- <input type="hidden" id="temp" value="temp value here"/>-->  
<input type="hidden" id="hours"/> 
<input type="hidden" id="min"/>
<input type="hidden" id="sec"/>

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
      <h1>Easy Level</h1>
      <img class="dart" src="images/dart.png" width="250px">
       <h1 class="below">Click The Dart<br>To Flip The Card</h1>
      <img class="gif" src="images/arrowicon.gif" width="50px">

    </div>
    <div class="back">
      <h1 style="text-decoration: underline;">Problem</h1><br>
      <p>What is the output of the following code? Assume that the address of x is 2000 (in decimal) and an integer requires 
      four bytes in memory.<br><br>
int main()<br>
{ <br>
	unsigned int x[4][3]={{1,2,3},{4,5,6},{7,8,9},{10,11,12}};<br>
	printf("%u,%u,%u",x+3,*(x+3),*(x+2)+3);<br>
}<br>
</p>
    </div>
  </div>
</div>

  <div class="col-sm-6">
  <form>
      <fieldset>
        <div class="scroll-box">
    <p>
          <textarea placeholder="Write your answer here!" name="answer" id="answer" style="height: 286px;width: 526px;"></textarea>
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
	var param="?qnumber="+2+"&type=easy&answer="+answer;
	window.open("Question.jsp"+param,'_self');  
}

function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };
</script>
</html>