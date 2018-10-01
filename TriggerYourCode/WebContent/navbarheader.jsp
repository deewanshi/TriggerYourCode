 <%@page import="code.dao.UserDao"%>
 <% 
	UserDao user=new UserDao();
  	int score=user.getUserScore(session.getAttribute("username").toString());
  	session.setAttribute("score", score);
	session.setAttribute("timeleft", 180);	
  %>
<input type="hidden" id="min" />
<!-- <input type="hidden" id="hours"/> 
<input type="hidden" id="min"/>
<input type="hidden" id="hours"/>-->
  <div class="nav-container">
     <div class="navbar">
      <div class="mobileMenu"></div>
      <p class="left-item">Score <span id="score" > <%=score%>  </span></p>
     <div id="clockdiv"></div> 
      
    </div>
    
  </div>
  