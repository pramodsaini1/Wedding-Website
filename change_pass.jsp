<%-- 
    Document   : change_pass
    Created on : 26 Feb, 2023, 7:40:08 AM
    Author     : Genius
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String email=null ;
Cookie c[] = request.getCookies();
for(int i=0;i<c.length;i++){
    if(c[i].getName().equals("login")){
        email=c[i].getValue();
        break;
    }
}
if(email==null){
    response.sendRedirect("login.jsp");
}
else{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery("select * from register where email='"+email+"'");
        if(rs.next()){
            %>
             <!DOCTYPE html>
<html>
    <head>
        <title>Shaadi Website</title>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
     <script src="https://use.fontawesome.com/09901d9403.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
  </button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
       
	  	  
	   <li class="nav-item">
        <a class="nav-link" style="cursor:pointer;color:white" href="Profile.jsp">View-Profile</a>
      </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a class="nav-link" style="cursor:pointer;color:white" href="Edit.jsp">Edit-Profile</a>
      </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a class="nav-link" style="cursor:pointer;color:white" href="inbox.jsp">Inbox</a>
      </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
      <li class="nav-item">
        <a class="nav-link" style="cursor:pointer;color:white" href="logout.jsp" >Logout</a>
      </li>

    </ul>
  </div>
</nav>
        
        
        <div class="container-fluid">
            <div class="row"  style="background-image:url(images/back.png);height:auto;">
                <div class="col-sm-12">
                    <div class="container">
                        <div class="row" style="margin-top:100px">
                            
                            <div class="col-sm-8">
                                 <%
                              if(request.getParameter("empty")!=null){
                                  out.println("<div class='alert alert-info'>All Field Required</div>");
                              }
                               else if(request.getParameter("success")!=null){
                                  out.println("<div class='alert alert-danger'>Password Updated</div>");
                              }
                              else if(request.getParameter("again")!=null){
                                  out.println("<div class='alert alert-primary'>Try Again</div>");
                              }
                               else if(request.getParameter("mismatch")!=null){
                                  out.println("<div class='alert alert-info'>Password Mismatch</div>");
                              }
                              else if(request.getParameter("invalid")!=null){
                                  out.println("<div class='alert alert-success'>Invalid Password</div>");
                              }
                             %>
                                <div class="row w3-card-4"  style="background-color:white">
                                     
                                    <div class="col-sm-12"><cener><i class="fa fa-password"></i><b>Change Password</b></center><br><br></div>
                                            
                                            <div class="col-sm-2"></div>
                                            <div class="col-sm-8">
                                                <form method="post" action="update_pass.jsp">
                                                    Current Password :<input type="password" name="cp" class="form-control"><br>
                                                    Retype Password :<input type="password" name="rp" class="form-control"><br>
                                                    New Password :<input type="password" name="np" class="form-control"><br>
                                                    <input type="submit" value="Change Password" class="btn btn-success"><br>
                                                    <br>
                                                </form>
                                            </div>
                                </div>
                                       <div class="col-sm-12"><br><br></div>
                            </div>
                            <div class="col-sm-4" style="padding-left:70px;">
                                <div class="card w3-card">
                                    <div class="card-header">Looking For :</div>
                                    <div class="card-body">
                                        <form method="post" action="search.jsp">
                                            <label>Gender : </label>
                                            <select id="search_gender" class="form-control" name="gender">
                                               <option value="Male">Male</option>
                                               <option value="Female">Female</option>
                                            </select><br>
                                            <label>Caste : </label>
                                            <select  class="form-control"  id="search_caste" name="caste">
                                                                    <option value="Sharma">Sharma</option>
                                                                    <option value="Kumar">Kumar</option>
                                                                    <option value="Singh">Singh</option>
                                                                    <option value="Bansal">Bansal</option>
                                                                    <option value="Nai">Nai</option>
                                                                    <option value="Gupta">Gupta</option>
                                                                    <option value="Rajput">Rajput</option>
                                                                    <option value="Jain">jain</option>
                                                                    <option value="Bhati">Bhati</option>
                                                                    <option value="Rathore">Rathore</option>
                                                                    <option value="Solanki">Solanki</option>
                                                                    <option value="Jaat">Jaat</option>
                                                                    <option value="Gurjar">Gurjar</option>
                                                                    <option value="Muslim">Muslim</option>
                                                                    <option value="Kumawat">Kumawat</option>
                                                                    <option value="Saini">Saini</option>
                                                                    <option value="Godara">Godara</option>
                                                                    <option value="Sharan">Sharan</option>
                                                                    <option value="Sardar">Sardar</option>
                                                                    <option value="Bhaat">Bhaat</option>
                                                                    <option value="Swami">Swami</option>
                                                                    <option value="Goswami">Goswami</option>
                                                                    <option value="Banjara">Banjara</option>
                                                                    <option value="Tulyani">Tulyani</option>
                                                            </select><br>			
                                            <label>Religion : </label>
                                            <select id="search_religion" class="form-control" name="religion">
                                                       <option value="Hindu">Hindu</option>
                                                       <option value="Islam">Islam</option>
                                                       <option value="Christian">Christian</option>
                                                       <option value="Sikh">Sikh</option>
                                                       <option value="Budhist">Budhist</option>
                                                       <option value="Other">Other</option>
                                                 </select><br>
                                            <input type="submit" value="Search" class="btn btn-info">  
                                        </form>
                                        <br><br>
                                        
                                    </div>
                                </div>
                            </div>    
                             
                        </div>
                    </div>
                </div>
                
            </div>
                <!--  random profile -->
                <div class="row">
                    <div class="col-sm-12"><br><center><h2>Profile Matches</h2></center><br></div>
                     <%
				Statement st1 = cn.createStatement();
                               ResultSet rs1 = st1.executeQuery("select * from register where email<>'"+email+"' ORDER by RAND() limit 0,4");
				while(rs1.next()){
					%>
			          	<div class="col-sm-3">
				     		<table class="table table-borderless w3-card">
					    		<tr><td align="center"><img style="width: 250px;height:250px;" src="Profile/<%=rs1.getString("code")%>.jpg" class="img-fluid"></td></tr>
                                                        <tr><td align="center"><strong class="user" style="cursor:pointer"><a href="msg.jsp?code=<%=rs1.getString("code")%>"><%=rs1.getString("fname")%>&nbsp;&nbsp;&nbsp;<%=rs1.getString("lname")%></a></strong></td></tr>
							</table>
					  	</div>
			        <%		
				  }
				%>
                             <div class="col-sm-12"><br><br></div>
                </div>
                            <!-- end random profile -->
                            
                            
                            
             
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
            
            
            <%
        }
        
    }
    catch(Exception er){
        out.print(er.getMessage());
    }
}
    
    
%>
