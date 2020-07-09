<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- magnific-popup -->
	<link href="./resources/assets/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
	<link href="./resources/assets/owl.carousel/assets/owl.carousel.css" rel="stylesheet"
		type="text/css" />
	<link href="./resources/assets/owl.carousel/assets/owl.theme.default.min.css" rel="stylesheet"
		type="text/css" />
    
    <style type="text/css">

        body {
            background-image: url('<%=request.getContextPath()%>/resources/images/960x0.jpg');
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            background-size: cover; 
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Header Design */
        .topnav {
        overflow: hidden;
        width: 100%;
        background-color: #333;
        }

        .topnav a {
        float: left;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
        }

        .topnav a:hover {
        background-color: #ddd;
        color: black;
        }

        .topnav a.active {
        background-color: #5CB85C;
        color: white;
        }

        .topnav-right {
        float: right;
        }

        /* Container Design */
        .login-register-form-section {
        max-width: 30%;
        margin: 0 auto;
    }

    .login-register-form-section i {
        width: 10px;
    }

    .login-register-form-section .nav-tabs > li > a {
        color: #5CB85C;
    }
 
    .login-register-form-section .nav-tabs > li.active > a {
        background-color: #5CB85C;
        border-color: #5CB85C;
        color: white;
    }

    .login-register-form-section .nav-tabs > li > a, 
    .login-register-form-section .nav-tabs > li.active > a {
        width: 160px;
        text-align: center; 
        border-radius: 5px;
    }

    .login-register-form-section .nav-tabs {
        padding-bottom: 10px;
        margin-bottom: 10px;
    }


    .login-register-form-section .btn-custom {
        width: 95%;
        background-color: #5CB85C;
        border-color: #5CB85C;
        margin-bottom: 0.5em;
        border-radius: 0;
        border-radius: 4px;
    }

    .login-register-form-section .btn-custom:hover {
        width: 100%;
        background-color: #5CB85C;
        border-color: #5CB85C;
    }
    .login-register-form-section .form-group {
        padding: 0 20px;
    }
    
 
        /* Social Icon Style */
        .fa:hover {
            opacity: 0.7;
        }

/*          .fa-facebook { 
             background: #3B5998; *
             color: white; 
             padding: 20px; 
             font-size: 20px; 
             width: 20px; 
             text-align: center; 
             text-decoration: none; 
             margin: 5px 2px; 
         } 
 */
/*         .fa-twitter { */
/*             background: #55ACEE; */
/*             color: white; */
/*             padding: 20px; */
/*             font-size: 20px; */
/*             width: 30px; */
/*             text-align: center; */
/*             text-decoration: none; */
/*             margin: 5px 2px; */
/*         } */

/*         .fa-linkedin { */
/*             background: #007bb5; */
/*             color: white; */
/*             padding: 20px; */
/*             font-size: 20px; */
/*             width: 30px; */
/*             text-align: center; */
/*             text-decoration: none; */
/*             margin: 5px 2px; */
/*         } */

/*         .fa-instagram { */
/*             background: #125688; */
/*             color: white; */
/*             padding: 20px; */
/*             font-size: 20px; */
/*             width: 30px; */
/*             text-align: center; */
/*             text-decoration: none; */
/*             margin: 5px 2px; */
/*         } */

        /* Footer Design */
        .page-footer{
            background-color:#2D1846;
            color: white;
            background-color: #EFF1F3
            left: 0;
            bottom: 0;
            width: 100%;
            height:38%;
            overflow: hidden;
        }

    </style>
</head>
<body style="background-color: black;">
    <!-- Header start -->
    <div class="topnav">
			<a href="home" class="logo-brand"> 
				<img class="retina"
					src="<%=request.getContextPath()%>/resources/assets/images/Logo.png" width="100" height="30"
					alt="" />
			</a>        
			<div class="topnav-right">
            <a href="practice">Practice</a>
            <a href="compete">Compete</a>
            <a href="coding">Coding</a>
            <a href="competative">Competative</a>
            <a href="business">Business</a>
            <a href="loginRegister">Login</a>
        </div>
    </div>
    <!-- Header end -->

    <div align="center" style="color:red; font-size: 25px;">
		<b>${message}</b>
	</div>
	
	 <div class="col-md-12 col-sm-12 col-xs-12 text-center">
	
		<section style="height: 100% !important; margin: 0px;">
			<div class="container">
				<div class="login-wrapper">
					<div class="card-wrapper"></div>
					<div class="card-wrapper">
					<div class="login-register-form-section" style="box-sizing: border-box; border: 1px solid; border-color: #F7F7F7 ;border-radius: 13px; background-color:  #F7F7F7  ;">
	                <ul class="nav nav-tabs" role="tablist">
	                    <li class="active"><a href="#login" data-toggle="tab">SignIn</a></li>
	                    <li><a href="#register" data-toggle="tab">SignUp</a></li>
	                </ul>
						<!-- <h1 class="title">Signin</h1> -->
						<!-- <a href="/AssesmentApp/OnetPage">Assessment Profiler</a> -->
					<div class="tab-content">
                    	<div role="tabpanel" class="tab-pane fade in active" id="login">
							<form name="userloginform" class="form-horizontal" method="post" modelAttribute="user" action="authenticateUser">
								<div class="input-container">
									<div class="form-group " >
		                                <div class="input-group">
		                                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
											<form:input type="email" path="user.email" name="email"
												id="username" cssClass="form-control" required="true" placeholder="Username or email"/>
											<div class="bar"></div>
										</div>
									</div>
								</div>
								<div class="input-container">
									<div class="form-group ">
		                                <div class="input-group">
		                                    <div class="input-group-addon"><i class="fa fa-key"></i></div>
											<form:password path="user.password" name="password"
												id="password" cssClass="form-control" required="true" placeholder="Password"/>
											<div class="bar"></div>
										</div>
									</div>
								</div>
								
								
								<div class="button-container">
									<button type="submit" name="submit" class="btn btn-success btn-custom">Login</button>
								</div>
								
								<div class="form-group">
	                                <!-- <input type="checkbox" id="rememberMe">
	                                <label for="rememberMe">Remember Me</label> -->
	                                <a href="#" onclick="javascript:forgotPassword();" style="color: black;" ><u>Forgot password?</u></a>
                            	</div>
							</form>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="register">
							<form name="userloginform" class="form-horizontal" method="post" modelAttribute="user" action="registerUser">
									<div class="input-container">
										<div class="form-group ">
		                                	<div class="input-group">
			                                    <div class="input-group-addon"><i class="fa fa-male"></i></div>
													<form:input type="text" path="user.firstName" name="firstName"
														id="firstName" cssClass="form-control" required="true" placeholder="FirstName"/>
													<div class="bar"></div>
												</div>
										</div>
									</div>
									<div class="input-container">
										<div class="form-group ">
	                                		<div class="input-group">
		                                   		<div class="input-group-addon"><i class="fa fa-male"></i></div>
												<form:input type="text" path="user.lastName" name="lastName"
													id="lastName" cssClass="form-control" required="true" placeholder="LastName"/>
												<div class="bar"></div>
											</div>
										</div>
									</div>
									
									<div class="input-container">
										<div class="form-group ">
			                                <div class="input-group">
				                                <div class="input-group-addon"><i class="fa fa-mobile"></i></div>
												<form:input type="number" path="user.mobileNumber" name="mobileNumber" 
													id="mobileNumber" cssClass="form-control" required="true" placeholder="MobileNumber"/>
												<div class="bar"></div>
											</div>
										</div>
									</div>
									
									<div class="input-container">
										<div class="form-group ">
		                                	<div class="input-group">
												<div class="input-group-addon"><i class="fa fa-envelope"></i></div>
												<form:input type="email" path="user.email" name="email"
													id="email" cssClass="form-control" required="true" placeholder="Email or Username" />
												<div class="bar"></div>
											</div>
										</div>
									</div>
									<div class="input-container">
										<div class="form-group ">
		                                	<div class="input-group">
		                                    <div class="input-group-addon"><i class="fa fa-lock"></i></div>
												<form:password path="user.password" name="password1"
													id="password1" cssClass="form-control" required="true" placeholder="Password"/>
												<div class="bar"></div>
											</div>
										</div>
									</div>
									
									<div class="input-container">
										<div class="form-group ">
		                                	<div class="input-group">
		                                    <div class="input-group-addon"><i class="fa fa-lock"></i></div>
												<form:password path="user.confirmPassword" name="password2"
													id="confirmPassword" cssClass="form-control" required="true" placeholder="Confirm Password"/>
												<div class="bar"></div>
											</div>
										</div>
									</div>
									
									<div class="input-container">
										<div class="form-group ">
				                            <div class="input-group">
												<form:input type="hidden" path="user.companyName" name="companyName" id="companyName" cssClass="form-control" required="true" placeholder="CompanyId"/>
												<div class="bar"></div>
											</div> 
										</div>
									</div>
									 
									<div class="button-container">
										<a href="#"  onclick="javascript:registerClick()" class="btn btn-success btn-custom">Register</a>
									</div>
								</form>
							</div>
							<div>
								<p>
									<span>OR Continue With:</span>
									<a href="student/showForm" data-return_url="https://www.techgig.com/home?login=true" > 
										<img src="https://static.techgig.com/Themes/Release/images/tg_images_new/google-plus-icon.svg" alt="GMailIcon" /> 
									</a>
									<a href="student/fbLogin"  data-return_url="https://www.techgig.com/home?login=true" style="background-color:blue;"> 
										<img src="https://static.techgig.com/Themes/Release/images/tg_images_new/fb-icon.svg" alt="FBIcon" /> 
									</a>
									<a href=""></a>
								</p>
							</div>
					</div>
					
						
					</div>
					</div>
				</div>
			</div>

		</section>
		
		
<!--  Popup for taking email to send Reset Password link-->
		<div id="resetPassword" class="modal fade modalcopy" role="dialog" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
<!-- 					 <h4 class="modal-title" style="align: center;">Reset Password</h4>  -->
					<span id="errorMessage" align="center" style="color:green; font-size: 15px;"></span>
					<span id="successMessage" align="center" style="color:green; font-size: 15px;"></span>
				</div>
				<div class="modal-body">
					<div role="tabpanel">
						<form name="resetPassword" class="form-horizontal" method="GET" modelAttribute="user" >
						<div class="input-container">
						<div class="form-group ">
							<div class="input-group">
<!-- 									<div class="input-group-addon"><i class="fa fa-envelope"></i></div>  -->
									<input path="user.email" type="email" name="email" id="emailR" required="true" class="modal-form-input" placeholder="Email/Username" />
									<div class="bar"></div>
								</div>
						</div>
						</div>
						<div class="button-container">
							<a href="#" onclick="javascript:reset() " class="btn btn-success btn-custom">Reset Password</a>
						</div>
						
							<a href="loginRegister">Back to Login</a>
						</form>
						</div>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="uploadTab">
							</div>
							<div role="tabpanel" class="tab-pane" id="browseTab"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		
<!-- Popup on click of register button for OTP verification-->
		<div id="modalshare" class="modal fade modalcopy" role="dialog" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style=" align-self:center;">OTP Verification</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- <span id="otpMessage"></span> -->
				</div>
				<div class="modal-body">
					<div role="tabpanel">
						<span id="otpMessage"></span>
						<form name="otpVerification" class="form-horizontal" method="GET" modelAttribute="user">
						<table id="tblVerify">
							<tr>
								<th>
									<input type="text" name="otp"  id="otp" required="true" placeholder="Enter OTP" />
									<input type="hidden" name="email"  id="vEmail" />
									<div class="bar"></div>
								</th>
							</tr>
							<tr>
								<th><a href="#" onclick="javascript:verifyOtp()" class="btn btn-success btn-custom">Submit</a></th> 
							</tr>
						</table>
						</form>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="uploadTab">
							</div>
							<div role="tabpanel" class="tab-pane" id="browseTab"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<!--     Footer start -->
<!-- <footer class="page-footer font-small mdb-color pt-4"> -->

<!--     Footer Links -->
<!--     <div class="container text-center text-md-left"> -->
  
<!--       Grid row -->
<!--       <div class="row"> -->
  
<!--         Grid column -->
<!--         <div class="col-md-2 mx-auto"> -->
  
<!--           Links -->
<!--           <h5 class="font-weight-bold text mt-3 mb-4">About Us</h5> -->
  
<!--           <ul class="list-unstyled"> -->
<!--             <li> -->
<!--               <a href="#!">About Us</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Contact Us</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Join Our Team</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">FAQ</a> -->
<!--             </li> -->
<!--           </ul> -->
  
<!--         </div> -->
<!--         Grid column -->
  
<!--         <hr class="clearfix w-100 d-md-none"> -->
  
<!--         Grid column -->
<!--         <div class="col-md-2 mx-auto"> -->
  
<!--           Links -->
<!--           <h5 class="font-weight-bold text mt-3 mb-4">For Developer</h5> -->
  
<!--           <ul class="list-unstyled"> -->
<!--             <li> -->
<!--               <a href="#!">BecomeExpertDeveloper</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Practice Problem</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Solve Challanges</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Coding Environment</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Hackathons</a> -->
<!--             </li> -->
<!--           </ul> -->
  
<!--         </div> -->
<!--         Grid column -->
  
<!--         <hr class="clearfix w-100 d-md-none"> -->
  
<!--         Grid column -->
<!--         <div class="col-md-2 mx-auto"> -->
  
<!--           Links -->
<!--           <h5 class="font-weight-bold text mt-3 mb-4">For Business</h5> -->
  
<!--           <ul class="list-unstyled"> -->
<!--             <li> -->
<!--               <a href="#!">Hiring Solutions</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Skill Assessment</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Brand Promotion</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Internal Training</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Organise Hackathons</a> -->
<!--             </li> -->
<!--           </ul> -->
  
<!--         </div> -->
<!--         Grid column -->
  
<!--         <hr class="clearfix w-100 d-md-none"> -->
  
<!--         Grid column -->
<!--         <div class="col-md-2 mx-auto"> -->
  
<!--           Links -->
<!--           <h5 class="font-weight-bold text mt-3 mb-4">For education</h5> -->
  
<!--           <ul class="list-unstyled"> -->
<!--             <li> -->
<!--               <a href="#!">Student Assessment</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">LMS</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Live Lectures</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Test Library</a> -->
<!--             </li> -->
<!--           </ul> -->
  
<!--         </div> -->
<!--         Grid column -->
  
<!--         <hr class="clearfix w-100 d-md-none"> -->
  
<!--         Grid column -->
<!--         <div class="col-md-3 mx-auto"> -->
  
<!--           Links -->
<!--           <h5 class="font-weight-bold text mt-3 mb-4">Follow Us</h5> -->
  
<!--           <ul class="list-unstyled"> -->
           
<!--             <li> -->
<!--               Social buttons -->
<!--               <ul class="list-unstyled list-inline text-center" style="margin: 0;"> -->
<!--                 <li class="list-inline-item"> -->
<!--                   <a class="btn-floating btn-li mx-1"> -->
<!--                     <i class="fa fa-linkedin" > </i> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li class="list-inline-item"> -->
<!--                   <a class="btn-floating btn-fb mx-1"> -->
<!--                     <i class="fa fa-facebook"> </i> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li class="list-inline-item"> -->
<!--                   <a class="btn-floating btn-tw mx-1"> -->
<!--                     <i class="fa fa-twitter"> </i> -->
<!--                   </a> -->
<!--              </li> -->
            
<!--             <li> -->
<!--               <P>Subscribe To Our Newsletter</p> -->
<!--             </li> -->
<!--             Grid column -->
<!--             <li> -->
<%-- 	          <form class="input-group"> --%>
<!-- 	            <input type="text" class="form-control form-control-sm" placeholder="Your email" -->
<!-- 	              aria-label="Your email" aria-describedby="basic-addon2" style="height:34px; width:150px; "> -->
<!-- 	            <div class="input-group-append"> -->
<!-- 	              <button class="btn btn-success" type="button" >Subscribe</button> -->
<!-- 	            </div> -->
<%-- 	          </form> --%>
<!--           </li> -->
<!--         </div> -->
<!--         Grid column -->
<!--           </ul> -->
  
<!--         </div> -->
<!--         Grid column -->
        
<!--       </div> -->
<!--       Grid row -->
  
<!--     </div> -->
<!--     Footer Links -->
  
<!--     Copyright -->
<!--     <div class="footer-copyright text-center py-3">Copyright @ E-Assess Pvt Ltd. 2020 | All Rights Reserved. -->
<!--     </div> -->
<!--     Copyright -->
  
<!--   </footer> -->
<!--   <!-- Footer end --> 


<!-- jQuery -->
	<script src="./resources/assets/js/jquery-2.1.3.min.js"></script>
	<script src="./resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="./resources/assets/materialize/js/materialize.min.js"></script>
	<script src="./resources/assets/js/menuzord.js"></script>
	<script src="./resources/assets/js/bootstrap-tabcollapse.min.js"></script>
	<script src="./resources/assets/js/jquery.easing.min.js"></script>
	<script src="./resources/assets/js/jquery.sticky.min.js"></script>
	<script src="./resources/assets/js/smoothscroll.min.js"></script>
	<script src="./resources/assets/js/jquery.stellar.min.js"></script>
	<script src="./resources/assets/js/jquery.inview.min.js"></script>
	<script src="./resources/assets/owl.carousel/owl.carousel.min.js"></script>
	<script src="./resources/assets/flexSlider/jquery.flexslider-min.js"></script>
	<script src="./resources/assets/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script src="./resources/assets/js/scripts.js"></script>
	<script src="./resources/assets/scripts/custom.js"></script>
	<script src="./resources/assets/scripts/pnotify.custom.min.js"></script>

  <script type="text/javascript">
    function myFunction() {
        var x = document.getElementById("userpassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }

    
/* Registration OTP Verifiaction */
    function registerClick(){
	
			var firstName=$("#firstName").val();
			var lastName=$("#lastName").val();
			var mobileNumber=$("#mobileNumber").val();
			var email=$("#email").val();
			var password1=$("#password1").val();
			var password2=$("#confirmPassword").val();
			console.log(password1+":::    "+password2+":::: "+mobileNumber);
			
             //Empty input validation
            if(firstName == "" || lastName == "" || mobileNumber == "" || email == "" || password1 == "" || password2 == ""){
            	//notify("warning", "All fields are required");
            	alert("All fields are required!");
            } 
            
    		//Mobile number validation
    		 if (/^\d{10}$/.test(mobileNumber)) {
                  // value is ok, use it
            } else {
                	alert("Invalid mobile number; Number must be ten digits");
                  //notify("warning", "Invalid number; Number must be ten digits");
                  return false
            }
             
    		 /* var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		 	/* var reg="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"; */
//     	     var mailformat = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$";
//     	     if(email.match(mailformat))
//     	     {
//     	     	return true;
//     	     }
//     	     else{
//         	     alert("You have entered an invalid email address!");
// 	    	     //notify("warning", "You have entered an invalid email address! ");
// 	    	     return false;
//     	     }  
            
	          /* Pswd & ConfirmPswd validation */ 
			  if (password1 != password2) { 
				  alert("password did not match please Try again!")
				// notify("warning", "Password did not match please try again!");
			     return false; 
			 } 
      		 
			var userData={};
			userData["firstName"]=$("#firstName").val();
			userData["lastName"]=$("#lastName").val();
			userData["mobileNumber"]=$("#mobileNumber").val();
			userData["email"]=$("#email").val();
			userData["password"]=$("#password1").val();
			console.log("userData>>>"+JSON.stringify(userData));
			$.ajax({
				url : "registerUser",
				data : JSON.stringify(userData),
				type : "POST",
				dataType:"json",
				contentType:"application/json",
				success : function(response) {
					// alert("done");
					console.log("saved");
					$("#otpMessage").text(response.msg);
					$("#vEmail").val(response.email); 
					$('#modalshare').modal('show');
				},
			});
		}
	
    function verifyOtp(){

        var otp=$("#otp").val();
        var vEmail=$("#vEmail").val();

        console.log("otp>>"+otp+"email>>"+vEmail);

        $.ajax({
            url : "verifyOtp?otp="+otp+"&email="+vEmail,
            type : "GET",
            success : function(response) {
                $("#otpMessage").text(response.msg);
                $("#vEmail").val(response.email); 
                console.log("ssssss   ");
                if(response.msg=="success"){
                    window.open('dashboard');
                    console.log("Dashboard opened");
                }
            },

        });
      }

/* Reset Password */
    function forgotPassword(){
        $('#resetPassword').modal('show');
    }

    function reset(){

        console.log("reset Called");
        var email=$("#emailR").val();
        console.log("email>>"+email);
        
        $.ajax({
            url : "forgotPassword?email="+email,
            type : "GET",
            success : function(response) {
                console.log("Success called");
                $("#errorMessage").text(response.errorMessage);
                $("#successMessage").text(response.successMessage);
                $("#vEmail").val(response.email); 
                console.log("ssssss   ");
            },
        }); 
    }

    function notify(messageType, message) {
        var notification = 'Information';
        $(function() {
            new PNotify({
                title : notification,
                text : message,
                type : messageType,
                styling : 'bootstrap3',
                hide : true
            });
        });
    }
    
</script>


<c:if test="${msgtype != null}">
    <script>
			var notification = 'Information';
			$(function() {
				new PNotify({
					title : notification,
					text : '${message}',
					type : '${msgtype}',
					styling : 'bootstrap3',
					hide : true
				});
			});
		</script>
</c:if>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>