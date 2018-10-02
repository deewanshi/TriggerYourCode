<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
    <link href="https://fonts.googleapis.com/css?family=Galada" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
    <title>Registration Form</title>
  </head>

  <style>

  .line{
    border-style: bold;
    border-color: #339999;
  }

  .d{
    background-color: #315e8e;
    border-radius: 25px;
    padding-top: 10px;
  }

  #header{        
      padding-top: 30px;
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
  height: 500px;
  margin: 0 auto;
  margin-top: 50px;
  padding-top: 10px;
  padding-left: 20px;
  padding-right: 20px;
  border-radius: 15px;
  color: #3366FF;
  
}

.AA input[type="text"]{
  border-radius: 5px;
  border-color: black;
}
.AA input[type="email"]{
  border-radius: 5px;
  border-color: black;
}
.AA input[type="tel"]{
  border-radius: 5px;
  border-color: black;
}
.AA select{
  border-radius: 5px;
  border-color: black;
}


.btn{

}
#bg{
  background-image: url(images/targets.png);
  
  background-size: 1500px 830px;
}


  </style>



  <script>
function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    var y= document.forms["myForm"]["college"].value;
    var phn=document.forms["myForm"]["number"].value;
    var phoneNum = phn.replace(/[^\d]/g, '');
    var w= document.forms["myForm"]["branch"].value;
    var e=document.forms["myForm"]["email"].value;
    var u=document.forms["myForm"]["username"].value;
    var p=document.forms["myForm"]["password"].value;
     var reEmail = /^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/;
     //document.getElementByName("name1") = document.forms["myForm"]["name"].value;
 	/* document.forms["myForm"]["college1"].value= document.forms["myForm"]["college"].value;
 	document.forms["myForm"]["number1"].value=document.forms["myForm"]["number"].value;
 	document.forms["myForm"]["branch1"].value= document.forms["myForm"]["branch"].value;
 	document.forms["myForm"]["email1"].value=document.forms["myForm"]["email"].value;
 	document.forms["myForm"]["username1"].value=document.forms["myForm"]["username"].value;
 	document.forms["myForm"]["password1"].value=document.forms["myForm"]["password"].value;
 	document.forms["myForm"]["gender1"].value=document.forms["myForm"]["gender"].value;
 	document.forms["myForm"]["year1"].value=document.forms["myForm"]["year"].value;
    */
   
    if(x=="" && y=="" && e=="" && phoneNum=="" && w=="" && document.myForm.inputGender.selectedIndex=="" && document.myForm.inputState.selectedIndex=="" && !this.myForm.checkbox.checked && u=="" && p==""){
      alert("you have left all the fields empty! please fill to proceed");
      return false;
    }

    else if (x == "") {
        alert("Name must be filled out");
        return false;
      }
    else if(y == ""){
      alert("College must be filled out");
      return false;
    }

    else if(!e.match(reEmail)){
      alert("Invalid email address");
      return false;
    }

    else if(phoneNum.length>10 || phoneNum.length<10){
      alert("phone number is not in valid form");
                return false; 
    }

    else if(w == ""){
    alert("branch must be filled out");
    return false;
    }
    else if(document.myForm.inputState.selectedIndex==""){
      alert("Year must be filled out");
      return false;
    }
    else if(document.myForm.inputGender.selectedIndex==""){
           alert("gender must be filled out");
                 return false;
    }

    else if(u==""){
      alert("Username must be filled out");
      return false;
    }

    else if(p==""||p.length<5){
      alert("Password must be filled out and minimum length should be 5");
      return false;

    }

    else if(!this.myForm.checkbox.checked){
      alert("you must agree to the terms first");
      return false;
    }
    else{
    	//console.log("In else pleasepahuch ja yaha!!!");
    	
    /* swal({
  title: "You have been Registered successfully!!",
  type: "success",
  text: "press OK to continue.."
 },
function(){
  //event.preventDefault();
	document.getElementById("myForm").submit();

});*/
document.getElementById("myForm").submit();
    return true;
    }
    
    }
  

  

  

function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };


</script>



  <body id="bg">
    <div id="header">
    <h1 class="d"><center>Registration Form</h1>

    <hr class="style-four">

    </div>

    <div class="container">
      
      <div class="AA">
      <form name="myForm" action="UserRegister.jsp" method="get" id="myForm">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputName">Name</label>
              <input type="text" name="name" class="form-control" id="inputName" placeholder="Full Name">
              
            </div>
            <div class="form-group col-md-6">
              <label for="inputCollege">College</label>
              <input type="text" name="college" class="form-control" id="inputCollege" placeholder="College">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail">Email</label>
            <input type="email" name="email" class="form-control" id="inputEmail" placeholder="Email Address">
            </div>
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1">+91 </span>
            </div>
            <input type="tel" name="number" class="form-control" placeholder="Phone Number" aria-label="number" aria-describedby="basic-addon1" >
            </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputBranch">Branch</label>
              <input type="text" name="branch" class="form-control" id="inputBranch" placeholder="Branch" >
            </div>
            <div class="form-group col-md-4">
              <label for="input">Year</label>
              <select id="inputState" class="form-control" name="year">
                <option>Select</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="input">Gender</label>
              <select id="inputGender" class="form-control" name="gender">
                <option>Select</option>
                <option>Male</option>
                <option>Female</option>
              </select>
            </div>
          </div>
          

           <div class="form-row">
          <div class="form-group col-md-6">
              <label for="inputName">Username</label>
              <input type="text" name="username" class="form-control" id="inputUsername" placeholder="Username">
            </div>

          <div class="form-group col-md-6">
              <label for="inputCollege">Password</label>
              <input minlength="5" type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required="true">
            </div>

          </div>

           <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck" name="checkbox">
              <label class="form-check-label" for="gridCheck">
                <b>I accept that above mentioned details are correct<b>
              </label>
            </div>
            <br>
            <button type="reset" class="btn btn-primary">Reset</button>
          
            <button type="button" onClick="return validateForm()" class="btn btn-primary">Submit Details</button>
     		
     	</div>
         
          
          
           
          </a>
</form>
    </div>
      </div>
    <div>
     
  </body>
</html>