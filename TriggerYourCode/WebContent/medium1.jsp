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
  	session.setAttribute("questionnumber",1);
	user.updateCurrentPage(session.getAttribute("username").toString(),"medium1.jsp");
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
      <p>An Internet Service Provider(ISP) has the following chunk of CIDR-based IP addresses available with it:245.248.128.0/20. 
      The ISP wants to give half of this chunk of addreses to Organization A, and a quarter to 
      Organization B, while retaining the remaining with itself. 
      Which of the following is a valid allocation of addresses to A and B?
      <br>(a)245.248.136.0/21 and 245.248.128.0/22 
	<br>(b)	245.248.128.0/21 and 245.248.128.0/22 
	<br>(c)	245.248.132.0/22 and 245.248.132.0/21 
	<br>(d)	245.248.136.0/22 and 245.248.132.0/21
	<br><br>Write correct option as <b>a</b> or <b>b</b> or <b>c</b> or <b>d</b> in answer 
      
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
		var param="?qnumber="+1+"&type=medium&answer="+answer;
		window.open("Question.jsp"+param,'_self');   
	}

  function preventBack() { window.history.forward(); }
  setTimeout("preventBack()", 0);
  window.onunload = function () { null };
</script>
</html>