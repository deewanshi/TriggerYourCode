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
  String username=session.getAttribute("username").toString();
	UserDao user=new UserDao();
  	int score=user.getUserScore(username);
  	session.setAttribute("score", score);
  	session.setAttribute("questionnumber",1);
  	user=new UserDao();
  	//int t=user.getUserTime(username);
  	user=new UserDao();
	user.updateCurrentPage(session.getAttribute("username").toString(),"easy1.jsp");
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
      <h1>Easy Level</h1>
      <img class="dart" src="images/dart.png" width="250px">
       <h1 class="below">Click The Dart<br>To Flip The Card</h1>
      <img class="gif" src="images/arrowicon.gif" width="50px">

    </div>
    <div class="back">
      <h1 style="text-decoration: underline;">Problem</h1><br>
      <p>What will be the output of the following conditional operator?<br><br>
 		 a=0?(3>2?23:(2>5?(7<6?34:48):64)):1;<br>
   		 printf("%d",a);<br>
   		 
</p>
    </div>
  </div>
</div>

  <div class="col-sm-6">
  <form>
      <fieldset>
        <div class="scroll-box">
    <p>
          <textarea name="answer" id="answer" placeholder="Write your answer here!" style="height: 286px;width: 526px;"></textarea>
        </p>

    </div>
    
      </fieldset>
    </form>
  <!-- <button type="button" class="btn btn-primary"  style="font-size: 20px;">Submit</button> -->
<button type="button" class="btn btn-success" onclick="myFunction()" style="font-size: 20px;">Next</button>

</div>
</div>
  
    
</body>
<script type="text/javascript" src="js/timer.js"></script>
<script type="text/javascript" src="js/flip.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script>
function myFunction() {
	var answer=document.getElementById("answer").value;
	var param="?qnumber="+1+"&type=easy&answer="+answer;//+"&username=";
	window.open("Question.jsp"+param,'_self');   
}
function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };
</script>
</html>