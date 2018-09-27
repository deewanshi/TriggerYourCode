<%@page import="code.dao.UserDao"%>
<%@page import="code.model.Answers"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/styleeasy.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
</head>
</head>
<input type="hidden" name="Hours" id="Hours" value="">
<input type="hidden" name="Minutes" value="">
<input type="hidden" name="Seconds" value="">
  <% 
	UserDao user=new UserDao();
  	int score=user.getUserScore(session.getAttribute("username").toString());
  	session.setAttribute("score", score);
  	session.setAttribute("questionnumber",1);
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
      <img class="dart" src="http://www.i2clipart.com/cliparts/e/d/b/2/clipart-dartboard-256x256-edb2.png" width="250px">
       <h1 class="below">Click The Dart<br>To Flip The Card</h1>
      <img class="gif" src="https://oliveasia.com/newsletter/arrow.gif" width="50px">

    </div>
    <div class="back">
      <h1 style="text-decoration: underline;">Problem</h1><br>
      <p>void main(){<br/>
 		 int myPointer*p=(int myPointer*)0XC0563331;<br/>
   		 int myPointer*q=(int myPointer*)0xC2551341;<br/>
   		 *p=200;<br/>
   		  printf("%d",*q); <br/>
		}

</p>
    </div>
  </div>
</div>

  <div class="col-sm-6">
  <form>
      <fieldset>
        <div class="scroll-box">
    <p>
          <textarea name="answer" id="answer" placeholder="Lets see " style="height: 286px;width: 526px;"></textarea>
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
  <script>
function myFunction() {
	var answer=document.getElementById("answer").value;
	var param="?qnumber="+1+"&type=easy&answer="+answer;
	window.open("Question.jsp"+param,'_self');   
}
</script>
</html>