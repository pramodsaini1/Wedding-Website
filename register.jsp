<%-- 
    Document   : register
    Created on : 23 Feb, 2023, 10:19:36 AM
    Author     : Genius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  try{
            String email = null;
            Cookie c[] = request.getCookies();
            for(int i=0;i<c.length;i++){
                if(c[i].getName().equals("login")){
                    email = c[i].getValue();
                    break;
                }
            }
            if(email!=null){
                response.sendRedirect("Profile.jsp");
            }
            else{
%>
 <!DOCTYPE html>
<html>
    <head>
        <title>Shaadi Website</title>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <script src="https://use.fontawesome.com/09901d9403.js"></script>

   <script>
  window.console = window.console || function(t) {};

  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
  <link rel='stylesheet' href='https://unpkg.com/aos@2.3.0/dist/aos.css'>
  <style>
.fa {
  padding: 20px;
  font-size: 25px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}
.fa-linkedin {
  background: #007bb5;
  color: white;
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
}
.fa-instagram {
  background: #125688;
  color: white;
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
}
.parallax {
  /* The image used */
  background-image: url('images/39.jpg');

  /* Full height */
 height:auto;
  width:100%;
  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.parallax2 {
  /* The image used */
  background-image: url('images/39.jpg');

  /* Full height */
 height:auto;
  width:100%;
  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.flip-card {
  background-color: transparent;
  width: 500px;
  height: 750px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
p{
font-family: 'Texturina';font-size: 22px;	
}
 
  
</style>
    </head>
    <body>
       <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
  <!-- Brand -->
  <a class="navbar-brand" href="index.jsp">Wedding Website</a>

  <!-- Toggler/collapsibe Button -->
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
       
	  	  
	   <li class="nav-item">
        <a class="nav-link" style="cursor:pointer;color:white" href="login.jsp"> Login</a>
      </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       

    </ul>
  </div>
</nav>
         
        <div class="container-fluid">
            <div class="row" style="background-image:url(images/back.png);height:auto;">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                    <div class="col-sm-12"></div><br><br><br><br><br><br> 
                    <div class="card bg-light text-dark" >
                        <div class="card-header">Register<span style="float:right;">
                                <%
                              if(request.getParameter("empty")!=null){
                                  out.println("<div class='alert alert-info'>All Field Required</div>");
                              }
                              else if(request.getParameter("img_success")!=null){
                                  out.println("<div class='alert alert-primaryh>Registration Successfully</div>");
                              }
                              else if(request.getParameter("img_error")!=null){
                                  out.println("<div class='alert alert-success'>Try Again</div>");
                              }   
                             %>
                            </span></div>
                        <div class="card-body">
                              
                            <form method="post" action="insert_rec.jsp">
                                <label>First Name: </label>
                                  <input type="text" name="fname" class="form-control"required><br>
                                  <label>Last Name:<span class="form-required"  title="This field is required."></span></label>
                                  <input type="text" name="lname" class="form-control"   required><br>
                                  <label>Email-Id:<span class="form-required"   title="This field is required."></span></label>
                                  <input type="email" name="email" class="form-control"   required><br>
                                  <label>Password:<span class="form-required"   title="This field is required."></span></label>
                                  <input type="password" name="pass" class="form-control"   required><br>
                                  <label>Gender:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="male">Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female<br><br>
                                    <label class="form-label">Caste :<span class="form-required"   title="This field is required.">*</span></label>&nbsp;&nbsp;
                                                                        <select name="caste" class="form-control">
                                                                                <option value="Saini">Saini</option>
                                                                                <option value="Kumawat">Kumawat</option>
                                                                                <option value="Rajput">Rajput</option>
                                                                                <option value="Goyal">Goyal</option>
                                                                                <option value="Sinha">Sinha</option>
                                                                                <option value="Singh">Singh</option>
                                                                                <option value="Khan">Khan</option>
                                                                                <option value="Khan">Dudi</option>
                                                                                <option value="Khan">Nai</option>
                                                                                <option value="Khan">Koshik</option>
                                                                                <option value="Khan">Saharan</option>
                                                                                <option value="Khan">Dhedu</option>
                                                                                <option value="Khan">Bhadu</option>
                                                                                <option value="Khan">Sharma</option>
                                                                                <option value="Khan">Modi</option>
                                                                                <option value="Khan">Bansal</option>
                                                                        </select><br>
                                                                      <label class="form-label">Religion :<span class="form-required"   title="This field is required.">*</span></label>&nbsp;&nbsp;
                                                                        <select name="religion" class="form-control">
                                                                                <option value="Hindu">Hindu</option>
                                                                                <option value="Muslim">Muslim</option>
                                                                                <option value="Sikh">Sikh</option>
                                                                                <option value="Parsi">Parsi</option>
                                                                                <option value="Buddhism">Buddhism</option>
                                                                                <option value="not defien">Other</option>
                                                                        </select><br> 
                                                                       <label class="form-label">State :<span class="form-required"   title="This field is required.">*</span></label>&nbsp;&nbsp;
                                                                        <select name="state" class="form-control">
                                                                                <option value="Asam">Asam</option>
                                                                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                                                <option value="Bihar">Bihar</option>
                                                                                <option value="Goa">Goa</option>
                                                                                <option value="Gujrat">Gujrat</option>
                                                                                <option value="Odisha">Odisha</option>
                                                                                <option value="Rajsthan">Rajsthan</option>
                                                                                <option value="not define">Other</option>
                                                                        </select> <br>
                                                                       <label class="form-label">Country :<span class="form-required"   title="This field is required.">*</span></label>&nbsp;&nbsp;
                                                                        <select name="country" class="form-control"> 
                                                                                <option value="India">India</option>
                                                                                <option value="United States">United States</option>
                                                                                <option value="Australia">Australia</option>
                                                                                <option value="China">China</option>
                                                                                <option value="Bangladesh">Bangladesh</option>
                                                                                <option value="Russia">Russia</option>
                                                                                <option value="not define">Other</option>
                                                                        </select> <br>
                                                                       <label class="form-label">DOB :<span class="form-required"   title="This field is required.">*</span></label>
                                                        <input type="date" name="dob" class="form-control"   required><br>
                                                        <input type="submit" value="Register" class="btn btn-primary">
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
            
            
            
        </div>
        
   <!-- parallex -->
<div class="container-fluid parallax"  style="background-color:#DEDFE3;" id="header">
  
	<div class="col-sm-12" ><br><br><br><center><h2 style="color:#93F217">Trusted by Millions</h2></br></br></br></center>  </div> 
<div class="row">
			  <div class="col-sm-3" style="color:white">
		     <h3>Company</h3>
		     <table class="table table-hover table-borderless">
			     <tr style="color:white"><td  style="border:none" style="color:white">About Us </td></tr>
				  <tr style="color:white"><td style="border:none">Shaadi Blog</td></tr>
				   <tr style="color:white"><td style="border:none">Careers</td></tr>
				    <tr style="color:white"><td style="border:none">Award</td></tr>
					 <tr style="color:white"><td style="border:none">Contact Us</td></tr>
					  
			 </table>
		
		  </div>
		  <div class="col-sm-3" style="color:white">
		     <h3>More</h3>
		     <table class="table table-hover table-borderless">
			     
	        <tr style="color:white"><td  style="border:none" style="color:white">VIP Shaadi </td></tr>
				  <tr style="color:white"><td style="border:none">Select Shaadi</td></tr>
				   <tr style="color:white"><td style="border:none">Sangam</td></tr>
				    <tr style="color:white"><td style="border:none">Shaadi Centers</td></tr>
					 <tr style="color:white"><td style="border:none">Success Stories</td></tr>
					  
					  
			 </table>
		
		</div>
		<div class="col-sm-3" style="color:white">
		   <h3>Privacy & You</h3>
		     <table class="table table-hover table-borderless">
			   
					     <tr style="color:white"><td  style="border:none" style="color:white">Terms of Use </td></tr>
				  <tr style="color:white"><td style="border:none">Be Safe Online</td></tr>
				   <tr style="color:white"><td style="border:none">Shaadi Centers</td></tr>
				    <tr style="color:white"><td style="border:none">Report Misuse</td></tr>
					 <tr style="color:white"><td style="border:none">Events</td></tr>
					   
			 </table>
		
		
		</div>
				<div class="col-sm-3" style="color:white">
		    <h3>Contact</h3>
			<h4> Pugal Road<br> Karni Industrial Area<br> Bikaner<br> Rajasthan<br> 334004<br>
		
		</div>
		</div>
		<div class="row">
	    <div class="col-sm-12">
	        <center> <h3 style="color:white">Follow Us :  <a href="https://www.facebook.com/profile.php?id=100060203576938"  class="social-network social-circle" target="_blank"><i class="fa fa-facebook"></i></a> &nbsp;<a href="https://twitter.com/PramodK82377407" target="_blank"><i class="fa fa-twitter"></i></a> &nbsp; <a href="https://www.linkedin.com/in/pramod-kumar-saini-98813b1b4/" target="_blank"><i class="fa fa-linkedin"></i></a>&nbsp; <a href="https://www.instagram.com/pramodkumarsaini12/" target="_blank"><i class="fa fa-instagram"></i></a></h3></center>
	    </div>
	</div>
				<br>
    		<div class="clearfix"> </div>
    		<div class="copy">
		       <center><p><b><h1 style="color:white">Shaadi.com © 2021</h1>  .<h3 style="color:white">All Rights Reserved  <br> Design by <a href="#" target="_blank">Pramod Kumar Saini</a></b></h3> </p></center>
	        </div>
        
	  
	  
	    
        
    </div>       
        
    </body>
</html>
<%
            }
        }
        catch(NullPointerException e){
            response.sendRedirect("index.jsp");
        }  
%> 