<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Practice</title>

  
<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />
<link href="${c1}" rel="shortcut icon" />

<spring:url
	value="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900"
	var="c2" />

<link href="${c2}" rel="stylesheet" type="text/css" />
<!-- Vaisnavi's addition jquery ui -->
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!-- end -->
<!-- Material Icons CSS -->
<spring:url value="/resources/assets/fonts/iconfont/material-icons.css"
	var="c3" />

<link href="${c3}" rel="stylesheet" type="text/css" />

<!-- FontAwesome CSS -->
<spring:url
	value="/resources/assets/fonts/font-awesome/css/font-awesome.min.css"
	var="c4" />

<link href="${c4}" rel="stylesheet" type="text/css" />

<!-- magnific-popup -->
<spring:url value="/resources/assets/magnific-popup/magnific-popup.css"
	var="c5" />

<link href="${c5}" rel="stylesheet" type="text/css" />

<!-- owl.carousel -->
<spring:url
	value="/resources/assets/owl.carousel/assets/owl.carousel.css" var="c6" />

<link href="${c6}" rel="stylesheet" type="text/css" />

<spring:url
	value="/resources/assets/owl.carousel/assets/owl.theme.default.min.css"
	var="c7" />

<link href="${c7}" rel="stylesheet" type="text/css" />
<!-- flexslider -->
<spring:url value="/resources/assets/flexSlider/flexslider.css" var="c8" />

<link href="${c8}" rel="stylesheet" type="text/css" />

<!-- materialize -->
<spring:url
	value="/resources/assets/materialize/css/materialize.min.css" var="c9" />

<link href="${c9}" rel="stylesheet" type="text/css" />

<!-- Bootstrap -->
<spring:url value="/resources/assets/bootstrap/css/bootstrap.min.css"
	var="c10" />

<link href="${c10}" rel="stylesheet" type="text/css" />

<!-- shortcodes -->
<spring:url value="/resources/assets/css/shortcodes/shortcodes.css"
	var="c11" />

<link href="${c11}" rel="stylesheet" type="text/css" />

<!-- Style CSS -->
<spring:url value="/resources/assets/style.css" var="c12" />

<link href="${c12}" rel="stylesheet" type="text/css" />

<!-- RS5.0 Main Stylesheet -->
<spring:url value="/resources/assets/revolution/css/settings.css"
	var="c13" />

<link href="${c13}" rel="stylesheet" type="text/css" />

<!-- RS5.0 Layers and Navigation Styles -->
<spring:url value="/resources/assets/revolution/css/layers.css"
	var="c14" />

<link href="${c14}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/revolution/css/navigation.css"
	var="c15" />

<link href="${c15}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/css/pnotify.custom.min.css"
	var="c16" />

<link href="${c16}" rel="stylesheet" type="text/css" />
<!--  
 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.3/css/fixedHeader.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
-->


<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css">
<style type="text/css">
        .login-register-form-section {
        max-width: 80%;
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


      .modal-title{
      	color:black;
      	font-size: 20px;
      	font-weight: bold;
      }

 .tooltip {
	position: relative;
	display: inline-block;
	opacity: 12;
}

.tooltip .tooltiptext {
	visibility: hidden;
	width: 120px;
	background-color: #ececec;
  color: black;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
	opacity: 1;
	
  top: 100%;
  left: 50%;
  margin-left: -60px;
}
.tooltip .tooltiptext::after {
  content: " ";
  position: absolute;
  bottom: 100%;  /* At the top of the tooltip */
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: transparent transparent black transparent;
}

.tooltip:hover .tooltiptext {
	visibility: visible;
}



</style>
<style>
.switch {
  position: relative;
  display: inline-block;
  width: 45px;
  height: 18px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  height:18px;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 10px;
  width: 10px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
.bigmodal>.modal-dialog {
          width: 60%;
          height: 80%; /* New width for default modal */
        }
.dropdown-menu {
	min-width: 387px !important;
	height: 300px !important;
	overflow: auto !important;
}
</style>

<style >
.drp{
	display:block;
	inline-size:auto;
	font-size:16px;
	margin-top:15px;
	border-radius:0.5rem;
	border-bottom:3px solid #fff;
	background: #647687;
	color: #fff;
}
.drp>option{
	padding:7px;
}
.skilldiv{
	border:2px solid #b3bdc7;
	border-radius:0.7rem;
}
.skillcontent{
	margin:20px;
	padding:20px;
	background:#ffffff;
	height:60px;
	border-radius:0.7rem;
	width:200px;
	text-align:right;
	color:black;
}
li>a.dropbtn{
	position: relative;
}
.dropdown {
  position: relative;
  display: none;
}

.errorclass {
	color: red;
	font-style: italic;
}

.dropdown-content {
  display: block;
  position: fixed;
  background-color: #f1f1f1;
  min-width: 160px;
  opacity:100;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 10;
}

.dropdown-content>a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropbtn:hover > .dropdown{display:block}
.dropdown-content a:hover {
	background-color: #03A9F4;
	color:#ffffff;
}

div.container{
    padding-left: 0px;
    padding-right: 0px;
}

div.dataTables_wrapper div.dataTables_filter input{
    margin-bottom: 0px;
    margin-left: 0px;
    border-style: ridge;
    height: auto;
    border-radius: 0.7rem;
}
.headingrow{
	background: #647687;
	color: #fff;
	height:60px;
	font-size:18px;
	vertical-align: center;
	margin-bottom:30px;
}

.stepdiv{
	height:52px;
	font-size: 18px;
	font-weight:bold;
	padding: 15px;
	border: hidden;
}
.stepdetails{
	display:none;
	color:#999999;
	padding-left:30px;
}
.panels{
	padding:0px;
	font-size: 16px;
	border:1px solid #dadada;
	border-radius:1rem;
}
.stepdetails{
	border-bottom: 1px solid #dadada;
}
.activestep{
	display:block;
}
.inactivestep{
	display:none;
}
.stepTitle{
	padding:15px;
	height:67px;
	border-radius:1rem;
	border:2px solid #dadada;
	font-weight:bold;
	font-size: 22px;
}
.testitem{
	padding:15px 0px 15px;
	border-bottom:1px solid #dadada;
}
.testname{
	font-weight:bold;
	font-size: 20px;
	width:fit-content;
}
.testlvl{
	font-size: 16px;
	width:fit-content;
}
.testdetails{
	font-size: 14px;
	margin-left: 40px;
	color:#999999;
	width:fit-content;
}
.moretestdet{
	font-size: 16px;
	margin-left: 30px;
	color:#647687;
	display:none;
	width:fit-content;
}
.strtbtn{
	border:1px solid #dadada;
	border-radius:0.7rem;
	vertical-align: center;
}
.reqlbl{
	border:1px solid #b01212;
	color:#b01212;
	font-size:12px;
	border-radius:15rem;
	line-height:18px;
	display:inline-block;
	padding:6px;
	margin-left:20px;
}
</style>
</head>

<body id="top" class="has-header-search">

	<!--header start-->
	<header id="header" class="tt-nav nav-border-bottom">
		<div class="header-sticky light-header ">
			<div class="container">
				<div id="materialize-menu" class="menuzord">
					<!--logo start-->
					<a href="javascript:void(0);" class="logo-brand"> <img
						class="retina"
						src="<%=request.getContextPath()%>/resources/images/Logo.png"
						alt="" />
					</a>
					<!--logo end-->
					<!--mega menu start-->
					<ul class="nav navbar-nav">
						<li><a
							href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>

                       <li>
							<a class="dropbtn">Practice</a>
							<div class="skilldiv dropdown">
								<div class="dropdown-content" style="background:#b3bdc7">
									<c:forEach var="s1" varStatus="status" items="${skills}">
										<a class="skillcontent" onclick="loadPage('${s1}')" value="${s1}">${s1}</a>
									</c:forEach>
								 </div>
							</div>
						</li>	
						
						<li class="tooltip">
								<a href="getSubSkill">Coding </a> <span class="tooltiptext">
									<c:forEach items="${skillList}" var="skill" varStatus="loop">
										<a style="font-size: x-large;" href="getSubSkill?skill=${skill}"><c:out
												value="${skill}" /></a><br>

									</c:forEach>
								</span>
							
						</li>
						<li><a href="#">Compete</a></li>			
						<li><a href="practice">Code-GIG</a></li>
					</ul>
					<!--mega menu end-->
				</div>
			</div>
		</div>
	</header>
	<!--header end-->


	<section>
		<div class="col-md-12 headingrow">
			<div class='col-md-9' id="learnpathdisp" style="margin-top:15px;">Home // Practice // ${curskill}</div>
			<div class='col-md-3'>
				<select class='drp pull-right' id="ddl_subsk">
					<c:forEach var="s2" varStatus="status" items="${subskills}">
						<c:choose>
							<c:when test="${status.index == subsidx}">
								<option value="${s2}" selected>${s2}</option>
							</c:when>
							<c:otherwise>
								<option value="${s2}">${s2}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="panels col-md-7">
					<div class="stepTitle">${curStep.stepName}</div>
					<div style="padding:15px">
					<c:set var="count" value="0"/>
						<c:forEach var="test" varStatus="status" items="${tests}">
							<div class="testitem row">
									<div class="col-md-8">
										<c:choose>
											<c:when test="${test.required == true}">
														<div class="testname">${test.testName} <div class="reqlbl">Required</div></div>
											</c:when>
											<c:otherwise>
														<div class="testname">${test.testName}</div>
											</c:otherwise>
										</c:choose>
										<div class="testlvl">${test.level} | will take 30 minutes</div>
										<div class="testdetails">
											<a style="color:#999999" onclick="openTestDetails(${status.index})">More Details<span style="padding-left:15px;color:#4d90fe;" id="spantest${status.index}" class="glyphicon glyphicon-chevron-down"></span></a>
										</div>
										<div class="moretestdet" style="display:none;" id="moretestdet${status.index}">
											Your score: ${usertestsessionlist[status.index].totalMarksRecieved} / ${usertestsessionlist[status.index].totalMarks} <br>
											Number of attempts: ${usertestsessionlist[status.index].noOfAttempts}<br>
											
										</div>
									</div>
									<div class="col-md-4">
										<c:choose>
											<c:when test="${userId==null}">
												<a class="pull-right btn strtbtn" onclick="openLoginModal(${test.testId})">Start</a>
											</c:when>
											<c:otherwise>
												<!--<c:set var="app_stat_n" value="Not Appeared"></c:set>-->
												<!--<c:set var="app_stat_y" value="Appeared"></c:set>-->
												<div class="pull-right" style="display:grid;">
												
													<c:if test="${appearedlist[status.index]=='Not Appeared'}">
														<a class="btn strtbtn" href="startTestSession?userId=${userId}&companyId=${test.companyId}&testId=${test.testId}">Start</a>
													
													</c:if>
													<c:if test="${appearedlist[status.index] == 'Appeared'}">
														<a class="btn strtbtn" href="startTestSession?userId=${userId}&companyId=${test.companyId}&testId=${test.testId}">Re-Start</a> 
														<c:set var="count" value="${count + 1}"/>
													</c:if>
													<div class="reqlbl" style="margin-top: 10px;text-align: center;">${appearedlist[status.index]}</div>
												</div>
											</c:otherwise>
										</c:choose>
										
									</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-md-1">
				</div>
				<div class="col-md-4">
					<div class="panels">
						<c:forEach var="stepnm" varStatus="status" items="${defaultSteps}">
							<div style="border-bottom:1px solid #dadada;">
							<c:choose>
								<c:when test="${status.index == curStepIdx}">
									<div class="stepdiv">
										<a id="stpnm${status.index}" onclick="loadStepTests('${stepnm.stepName}')">${stepnm.stepName}</a>
										<a class="pull-right" id="link${status.index}" onclick="openStepDetails(${status.index})"><span id="span${status.index}" class="glyphicon glyphicon-chevron-up"></span></a>
									</div>
									<div id="stepdet${status.index}" class="activestep stepdetails">
										Total Tests:${counts[status.index][0]}<br>
										Mandatory:${counts[status.index][1]}<br>
										Appeared:${count}
									</div>
								</c:when>
								<c:otherwise>
									<div class="stepdiv">
										<a id="stpnm${status.index}" onclick="loadStepTests('${stepnm.stepName}')">${stepnm.stepName}</a>
										<a class="pull-right" id="link${status.index}" onclick="openStepDetails(${status.index})"><span id="span${status.index}" class="glyphicon glyphicon-chevron-down"></span></a>
									</div>
									<div id="stepdet${status.index}" class="inactivestep stepdetails">
										Total Tests:${counts[status.index][0]}<br>
										Mandatory:${counts[status.index][1]}
									</div>
								</c:otherwise>
							</c:choose>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	
							
	
<!-- Modal for Login-->
	<div id="login_modal" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	    	<div class="modal-header">
	        	<h4 class="modal-title">Please Login to start the test</h4>
	      	</div>
	      	<div class="modal-body" style="text-align: center">
	      		<div class="login-register-form-section" style="box-sizing: border-box; border: 1px solid; border-color: #F7F7F7 ;border-radius: 13px; background-color:  #F7F7F7  ;">
	                <ul class="nav nav-tabs" role="tablist">
	                    <li class="active"><a href="#login" data-toggle="tab">SignIn</a></li>
	                    <li><a href="#register" data-toggle="tab">SignUp</a></li>
	                </ul>
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
											<div class="input-group-addon"><i class="glyphicon glyphicon-eye-open" onclick="showPassword()"></i></div>
											<div class="bar"></div>
										</div>
									</div>
								</div>
								<input type="hidden" name="from" id="from" value="fromval">
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
												<div class="input-group-addon"><i class="glyphicon glyphicon-eye-open" onclick="showPassword()"></i></div>
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
								<p  style="color:red; font-size: 25px;">
									<span><b>${msgtype}</b></span>
								</p>
							</div>
							<div>
								<p>
									<span>OR Continue With:</span>
									<!-- <a href="student/showForm" data-return_url="https://www.techgig.com/home?login=true" > 
										<img src="https://static.techgig.com/Themes/Release/images/tg_images_new/google-plus-icon.svg" alt="GMailIcon" /> 
									</a> -->
									<!-- <a href="student/fbLogin"  data-return_url="https://www.techgig.com/home?login=true" style="background-color:blue;"> 
										<img src="https://static.techgig.com/Themes/Release/images/tg_images_new/fb-icon.svg" alt="FBIcon" /> 
									</a> -->
									<a>
										<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
										      <img id="myImg"><br>
										      <p id="name"></p>
										      <button onclick="myFunction()">Sign Out</button>
									</a>
									<a>
										<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
									</a>
									<a href=""></a>
								</p>
							</div>
					</div>
					
						
					</div>
	      	</div>
	    </div>
	  </div>
	</div>
<!-- Modal for Login end-->
	
	
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
	
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	
	<script>
		function loadPage(skn){
			window.location.href = "userpractice?skilln="+skn;
		}
		
		function openLoginModal(testid){
			$('#from').val(testid);
			alert($('#from').val());
			$('#login_modal').modal('show');
		}
		
		function openStepDetails(index){
			var divid = "stepdet"+index;
			var statusdisp = document.getElementById(divid).className;
			if( statusdisp === "inactivestep stepdetails" ) {
				document.getElementById(divid).className = "activestep stepdetails";
				document.getElementById("span"+index).className = "glyphicon glyphicon-chevron-up";
			}
			else {
				document.getElementById(divid).className = "inactivestep stepdetails";
				document.getElementById("span"+index).className = "glyphicon glyphicon-chevron-down";
			}
		}
		
		function loadStepTests(stepname) {
			var subsn = $('#ddl_subsk').find('option:selected').text();
			window.location.href = "userpractice?skilln=${curskill}&subs="+subsn+"&stepn="+stepname;
		}
		
		function openTestDetails(index){
			var divid = "moretestdet"+index;
			var statusdisp = document.getElementById(divid).style.display;
			if( statusdisp === "none" ) {
				document.getElementById(divid).style.display = "block";
				document.getElementById("spantest"+index).className = "glyphicon glyphicon-chevron-up";
			}
			else {
				document.getElementById(divid).style.display = "none";
				document.getElementById("span"+index).className = "glyphicon glyphicon-chevron-down";
			}
		}
		
		function updLearnPathDisp(){
			$("#learnpathdisp").html(window.lp_disp + " // "+$('#ddl_subsk').find('option:selected').text() );
		}
		
		$(document).ready(function(){
			window.lp_disp = $("#learnpathdisp").text();
			updLearnPathDisp();
			$('#ddl_subsk').on("change",function(){
				var selsub = $(this).find('option:selected').text();
				window.location.href = "userpractice?skilln=${curskill}&subs="+selsub;
			});	
		});
	</script>
	<script type="text/javascript">
	$(function() {
		$('[data-toggle="tooltip"]').tooltip()
	})
	
	function loadPage(skn){
		window.location.href = "userpractice?skilln="+skn;
	}
	
	$(document).ready(function(){
		$('li>a.dropbtn').hover(function(){
			$('.dropdown').css('display','block');
		},
		function(){
			$('.dropdown').css('display','none');
		});
		$('.dropdown').hover(function(){
			$('.dropdown').css('display','block');
		},
		function(){
			$('.dropdown').css('display','none');
		});
	});
	

    function showPassword(){
    	var a = document.getElementById("password1");
    	  if (a.type == "password") {
    	    a.type = "text";
    	  } else {
    	    a.type = "password";
    	  }

    	  var b = document.getElementById("password");
    	  if (b.type == "password") {
    	    b.type = "text";
    	  } else {
    	    b.type = "password";
    	  }
    }
    
/* Registration OTP Verifiaction */
    function registerClick(){

    		
	
			var firstName=$("#firstName").val();
			var lastName=$("#lastName").val();
			var mobileNumber=$("#mobileNumber").val();
			var password1=$("#password1").val();
			var password2=$("#confirmPassword").val();
			console.log(password1+":::    "+password2+":::: "+mobileNumber);
			
             //Empty input validation
            if(firstName == "" || lastName == "" || mobileNumber == "" || email == "" || password1 == "" || password2 == ""){
            	//notify("warning", "All fields are required");
            	alert("All fields are required!");
            	return false;
            } 
            
    		//Mobile number validation
    		 if (/^\d{10}$/.test(mobileNumber)) {
                  // value is ok, use it
            } else {
                	alert("Invalid mobile number; Number must be ten digits");
                  //notify("warning", "Invalid number; Number must be ten digits");
                  return false
            }
             
		 	/* var reg="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"; */
//    	     var mailformat = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
//     	     if(email.match(mailformat))
//     	   	if (!mailformat.test(email.value))
//     	     {
// 	    	   	 alert("You have entered an invalid email address!");
// 	    	     //notify("warning", "You have entered an invalid email address! ");
// 	    	     return false;
//     	     }
//     	     else{
//     	     	return true;
        	    
//     	     }  

			var emailId=$("#email").val();
			var atposition=emailId.indexOf("@");  
			var dotposition=emailId.lastIndexOf(".");  
			if (atposition<1 || dotposition<atposition+2 || dotposition+2>=emailId.length){  
			  alert("Please enter a valid e-mail address!");  
			  return false;  
			}  
            
	          /* Pswd & ConfirmPswd validation */ 
	          if(password1.length<8){
		          alert("Password must be at least 8 characters long!");
		          return false;  
		      }
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
                    //window.open('practiceCode');
                    location.href ="practiceCode";
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

/* Social Login */
    function statusChangeCallback(response) {
		console.log('statusChangeCallback');
		console.log(response);
		// The response object is returned with a status field that lets the
		// app know the current login status of the person.
		// Full docs on the response object can be found in the documentation
		// for FB.getLoginStatus().
		if (response.status === 'connected') {
			// Logged into your app and Facebook.
			testAPI();
		} else if (response.status === 'not_authorized') {
			// The person is logged into Facebook, but not your app.
			document.getElementById('status').innerHTML = 'Login with Facebook ';
		} else {
			// The person is not logged into Facebook, so we're not sure if
			// they are logged into this app or not.
			document.getElementById('status').innerHTML = 'Login with Facebook ';
		}
	}
	// This function is called when someone finishes with the Login
	// Button. See the onlogin handler attached to it in the sample
	// code below.
	function checkLoginState() {
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
	}
	window.fbAsyncInit = function() {
		FB.init({
			appId : '731780804253893',
			cookie : true, // enable cookies to allow the server to access 
			// the session
			xfbml : true, // parse social plugins on this page
			version : 'v2.2' // use version 2.2
		});
		// Now that we've initialized the JavaScript SDK, we call 
		// FB.getLoginStatus(). This function gets the state of the
		// person visiting this page and can return one of three states to
		// the callback you provide. They can be:
		//
		// 1. Logged into your app ('connected')
		// 2. Logged into Facebook, but not your app ('not_authorized')
		// 3. Not logged into Facebook and can't tell if they are logged into
		// your app or not.
		//
		// These three cases are handled in the callback function.

		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
	};
	// Load the SDK asynchronously
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	// Here we run a very simple test of the Graph API after login is
	// successful. See statusChangeCallback() for when this call is made.
	function testAPI() {
		console.log('Welcome! Fetching your information.... ');
		FB.api('/me?fields=name,email', function(response) {
			console.log('Successful login for: ' + response.name);

			document.getElementById("status").innerHTML = '<p>Welcome '
					+ response.name
					+ '! <a href=fblogincontroller.jsp?user_name='
					+ response.name.replace(" ", "_") + '&user_email='
					+ response.email
					+ '>Continue with facebook login</a></p>'
		});
	}

	//Gmail
	 function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=loginsuccess?email='+email+'&name='+name+'/>Continue with Google login</a></p>'
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

    function myFunction() {
        gapi.auth2.getAuthInstance().disconnect();
        location.reload();
     }

	</script>
	
</body>

</html>