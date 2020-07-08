<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en" style="position: fixed;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>UserLoginRegister</title>
<!--  Start from here -->
<spring:url value="/resources/css/mystyle.css" var="mainCss" />

<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />
<link href="${c1}" rel="shortcut icon" />
<spring:url
	value="/resources/assets/fonts/font-awesome/css/font-awesome.min.css"
	var="c2" />
<link href="${c2}" rel="stylesheet" type='text/css' />

<spring:url
	value="/resources/assets/fonts/font-awesome/css/font-awesome.min.css"
	var="c3" />
<link href="${c3}" rel="stylesheet" type='text/css' />
<spring:url
	value="/resources/assets/materialize/css/materialize.min.css" var="c4" />
<link href="${c4}" rel="stylesheet" type='text/css' />
<spring:url value="/resources/assets/bootstrap/css/bootstrap.min.css"
	var="c5" />
<link href="${c5}" rel="stylesheet" type='text/css' />
<spring:url value="/resources/assets/css/shortcodes/login.css" var="c6" />
<link href="${c6}" rel="stylesheet" type='text/css' />
<spring:url value="/resources/assets/style.css" var="c7" />
<link href="${c7}" rel="stylesheet" type='text/css' />
<spring:url value="/resources/assets/css/pnotify.custom.min.css"
	var="c16" />
<link href="${c16}" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 
<style type="text/css">
    .login-register-form-section {
        max-width: 350px;
        margin: 0 auto;
    }

    .login-register-form-section i {
        width: 10px;
    }

    .login-register-form-section .nav-tabs > li > a {
        color: #2abb9b;
    }
 
    .login-register-form-section .nav-tabs > li.active > a {
        background-color: #2abb9b;
        border-color: #2abb9b;
        color: white;
    }

    .login-register-form-section .nav-tabs > li > a, 
    .login-register-form-section .nav-tabs > li.active > a {
        width: 160px;
        text-align: center; 
        border-radius: 0;
    }

    .login-register-form-section .nav-tabs {
        padding-bottom: 10px;
        margin-bottom: 10px;
    }


    .login-register-form-section .btn-custom {
        width: 100%;
        background-color: #2abb9b;
        border-color: #2abb9b;
        margin-bottom: 0.5em;
        border-radius: 0;
    }

    .login-register-form-section .btn-custom:hover {
        width: 100%;
        background-color: #48A497;
        border-color: #2abb9b;
    }
    .login-register-form-section .form-group {
        padding: 0 20px;
    }

</style>
 
</head>
<body>
	<div align="center" style="color:green; font-size: 25px;">
		<b>${message}</b>
	</div>
	
	 <div class="col-md-12 col-sm-12 col-xs-12 text-center">
	
		<section
			style="height: 100% !important; margin: 0px; background-color: #EFF1F3">
			<%-- <img src="<%=request.getContextPath()%>/resources/images/Logo.png"
				style="margin-top: -84px;"> --%>
			<div class="container">
				<div class="login-wrapper">
					<div class="card-wrapper"></div>
					<div class="card-wrapper">
					<div class="login-register-form-section">
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
	                                <a href="#" onclick="javascript:forgotPassword();" >Forgot password?</a>
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
												<form:password path="user.password" name="password"
													id="password" cssClass="form-control" required="true" placeholder="Password"/>
												<div class="bar"></div>
											</div>
										</div>
									</div>
									
									<div class="input-container">
										<div class="form-group ">
		                                	<div class="input-group">
		                                    <div class="input-group-addon"><i class="fa fa-lock"></i></div>
												<form:password path="user.confirmPassword" name="password"
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
					<!-- <h4 class="modal-title">Reset Password</h4> -->
					<span id="errorMessage" align="center" style="color:green; font-size: 15px;"></span>
					<span id="successMessage" align="center" style="color:green; font-size: 15px;"></span>
				</div>
				<div class="modal-body">
					<div role="tabpanel">
						<form name="resetPassword" class="form-horizontal" method="GET" modelAttribute="user" >
						<div class="input-container">
						<div class="form-group ">
							<div class="input-group">
									<div class="input-group-addon"><i class="fa fa-envelope"></i></div> 
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
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">OTP Verification</h4>
					<span id="otpMessage"></span>
				</div>
				<div class="modal-body">
					<div role="tabpanel">
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


	 <!-- jQuery -->

	<spring:url value="/resources/assets/js/jquery-2.1.3.min.js"
		var="mainJs1" />
	<script src="${mainJs1}"></script>
	<spring:url value="/resources/assets/bootstrap/js/bootstrap.min.js"
		var="mainJs2" />
	<script src="${mainJs2}"></script>
	<spring:url value="/resources/assets/materialize/js/materialize.min.js"
		var="mainJs3" />
	<script src="${mainJs3}"></script>
	<spring:url value="/resources/assets/js/menuzord.js" var="mainJs4" />
	<script src="${mainJs4}"></script>
	<spring:url value="/resources/assets/js/bootstrap-tabcollapse.min.js"
		var="mainJs5" />
	<script src="${mainJs5}"></script>
	<spring:url value="/resources/assets/js/jquery.easing.min.js"
		var="mainJs6" />
	<script src="${mainJs6}"></script>
	<spring:url value="/resources/assets/js/jquery.sticky.min.js"
		var="mainJs7" />
	<script src="${mainJs7}"></script>
	<spring:url value="/resources/assets/js/smoothscroll.min.js"
		var="mainJs8" />
	<script src="${mainJs8}"></script>
	<spring:url value="/resources/assets/js/jquery.stellar.min.js"
		var="mainJs9" />
	<script src="${mainJs9}"></script>
	<spring:url value="/resources/assets/js/jquery.inview.min.js"
		var="mainJs10" />
	<script src="${mainJs10}"></script>
	<spring:url value="/resources/assets/owl.carousel/owl.carousel.min.js"
		var="mainJs11" />
	<script src="${mainJs11}"></script>
	<spring:url
		value="/resources/assets/flexSlider/jquery.flexslider-min.js"
		var="mainJs12" />
	<script src="${mainJs12}"></script>
	<spring:url
		value="/resources/assets/magnific-popup/jquery.magnific-popup.min.js"
		var="mainJs13" />
	<script src="${mainJs13}"></script>
	<spring:url value="https://maps.googleapis.com/maps/api/js"
		var="mainJs14" />
	<script src="${mainJs14}"></script>
	<spring:url value="/resources/assets/js/scripts.js" var="mainJs15" />
	<script src="${mainJs15}"></script>
	<spring:url value="/resources/assets/scripts/custom.js" var="mainJs16" />
	<script src="${mainJs16}"></script>
	<spring:url value="/resources/assets/scripts/pnotify.custom.min.js"
		var="mainJs17" />
	<script src="${mainJs17}"></script>
	
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

	/* Pswd & ConfirmPswd validation */
	
			var firstName=$("#firstName").val();
			var lastName=$("#lastName").val();
			var mobileNumber=$("#mobileNumber").val();
			var email=$("#email").val();
			var password1=$("#password").val();
			var password2=$("#confirmPassword").val();
			console.log(password1+":::    "+password2+":::: "+mobileNumber);
			/* if (password1 == '') {
                alert ("Please enter Password"); 
			}else if(password2 == ''){
                alert ("Please enter Confirm Password"); 
			}else if (password1 != password2) { 
                alert ("\nPassword did not match: Please try again...") 
                return false; 
            } else{ 
                alert("Password Match!") 
                return true; 
            }  */


           /*  //Empty input validation
            if(firstName == '' || lastName == '' || mobileNumber == '' || email == '' || password1 == '' || password2 == ''){
            	notify("warning", "All fields are required");
            } */

    		//Mobile number validation
    		 if (/^\d{10}$/.test(mobileNumber)) {
                  // value is ok, use it
            } else {
                  notify("warning", "Invalid number; Number must be ten digits");
                  return false
            }


    		 /* var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    	     if (reg.test(email.value) == false) {
    	    	 notify("warning", "Invalid EmailId; Email must contain @");
    	          return false;
    	     }
    	     return true;  */

            
	          //Password validation   
			 /* if (password1 != password2) { 
				 notify("warning", "Password did not match please try again!");
			     return false; 
			 } */

      		 
			var userData={};
			userData["firstName"]=$("#firstName").val();
			userData["lastName"]=$("#lastName").val();
			userData["mobileNumber"]=$("#mobileNumber").val();
			userData["email"]=$("#email").val();
			userData["password"]=$("#password").val();

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
						window.open('user_login_register');
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