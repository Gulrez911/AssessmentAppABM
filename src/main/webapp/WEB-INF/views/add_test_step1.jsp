<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Add Test</title>


<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />

<link href="${c1}" rel="shortcut icon" />

<spring:url value="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900" var="c2" />

<link href="${c2}" rel="stylesheet" type="text/css" />

<!-- Material Icons CSS -->
<spring:url value="/resources/assets/fonts/iconfont/material-icons.css" var="c3" />

<link href="${c3}" rel="stylesheet" type="text/css" />

<!-- FontAwesome CSS -->
<spring:url value="/resources/assets/fonts/font-awesome/css/font-awesome.min.css" var="c4" />

<link href="${c4}" rel="stylesheet" type="text/css" />

<!-- magnific-popup -->
<spring:url value="/resources/assets/magnific-popup/magnific-popup.css" var="c5" />

<link href="${c5}" rel="stylesheet" type="text/css" />

<!-- owl.carousel -->
<spring:url value="/resources/assets/owl.carousel/assets/owl.carousel.css" var="c6" />

<link href="${c6}" rel="stylesheet" type="text/css" />

<spring:url value="/resources/assets/owl.carousel/assets/owl.theme.default.min.css" var="c7" />

<link href="${c7}" rel="stylesheet" type="text/css" />
<!-- flexslider -->
<spring:url value="/resources/assets/flexSlider/flexslider.css" var="c8" />

<link href="${c8}" rel="stylesheet" type="text/css" />

<!-- materialize -->
<spring:url value="/resources/assets/materialize/css/materialize.min.css" var="c9" />

<link href="${c9}" rel="stylesheet" type="text/css" />

<!-- Bootstrap -->
<spring:url value="/resources/assets/bootstrap/css/bootstrap.min.css" var="c10" />

<link href="${c10}" rel="stylesheet" type="text/css" />

<!-- shortcodes -->
<spring:url value="/resources/assets/css/shortcodes/shortcodes.css" var="c11" />

<link href="${c11}" rel="stylesheet" type="text/css" />

<!-- Style CSS -->
<spring:url value="/resources/assets/style.css" var="c12" />

<link href="${c12}" rel="stylesheet" type="text/css" />

<!-- RS5.0 Main Stylesheet -->
<spring:url value="/resources/assets/revolution/css/settings.css" var="c13" />

<link href="${c13}" rel="stylesheet" type="text/css" />

<!-- RS5.0 Layers and Navigation Styles -->
<spring:url value="/resources/assets/revolution/css/layers.css" var="c14" />

<link href="${c14}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/revolution/css/navigation.css" var="c15" />

<link href="${c15}" rel="stylesheet" type="text/css" />


</head>

<body id="top" class="has-header-search">

		<!--header start-->
		<header id="header" class="tt-nav nav-border-bottom">
				<div class="header-sticky light-header ">
						<div class="container">
								<div id="materialize-menu" class="menuzord">
										<!--logo start-->
										<a href="javascript:void(0);" class="logo-brand"> <img class="retina"
												src="<%=request.getContextPath()%>/resources/images/Logo.png" alt="" />
										</a>
										<!--logo end-->
										<!--mega menu start-->
										<ul class="menuzord-menu pull-right">
												<li><a href="javascript:void(0)">Dashboard</a></li>
												<li><a href="question_list">Question Bank</a></li>
												<li class="active"><a href="testlist">Tests</a></li>
												<li><a href="javascript:void(0)">Skills</a></li>
												<li><a href="showReports">Results</a></li>
												<li><a href="javascript:void(0)">Code Analysis Reports</a></li>
												<li><a href="javascript:void(0)">Skill based Reports</a></li>
												<li><a href="listUsers">Users</a></li>
										</ul>
										<!--mega menu end-->
								</div>
						</div>
				</div>
		</header>
		<!--header end-->


		<section>
				<div class="container">
						<div class="row no-gutter">
								<div class="col-md-12 mb-20">
										<div class="col-md-3 col-sm-6 text-center">
												<div class="stepsitem active">
														<span>1</span>
														<div class="intro-header">
																<i class="fa fa-cog"></i>
																<h2 class="white-text">Set Your Test</h2>
														</div>
												</div>
										</div>
										<div class="col-md-3 col-sm-6 text-center">
												<div class="stepsitem">
														<span>2</span>
														<div class="intro-header">
																<i class="fa fa-question-circle"></i>
																<h2 class="white-text">Add Questions</h2>
														</div>
												</div>
										</div>
										<div class="col-md-3 col-sm-6 text-center">
												<div class="stepsitem">
														<span>3</span>
														<div class="intro-header">
																<i class="fa fa-user-plus"></i>
																<h2 class="white-text">Add Candidates</h2>
														</div>
												</div>
										</div>
										<div class="col-md-3 col-sm-6 text-center">
												<div class="stepsitem">
														<span>4</span>
														<div class="intro-header">
																<i class="fa fa-envelope"></i>
																<h2 class="white-text">Send Invitation</h2>
														</div>
												</div>
										</div>
								</div>


								<div class="col-md-12 mb-20">
										<form id="step1" method="POST" action="saveAndGoToStep2" modelattribute="test">
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<input id="testName" name="testName" type="text" value="" required=""> <label
																				for="testName">Question Type</label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<input id="qualifier1" name="qualifier1" type="text" value="" required="">
																		<label for="qualifier1">Category</label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<input id="qualifier2" name="qualifier2" type="text" value=""> <label
																				for="qualifier2">Sub Category</label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<input id="qualifier3" name="qualifier3" type="text" value=""> <label
																				for="qualifier3">Category of Sub Category</label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<select id="skls" name="skls" class="mdb-select md-form" multiple>
																				<option value="3">Java-BASIC</option>
																				<option value="4">Java-INTERMEDIATE</option>
																				<option value="5">Java-EXPERT</option>
																				<option value="90">Testing-BASIC</option>
																				<option value="92">Test Management-EXPERT</option>
																				<option value="102">Testing-INTERMEDIATE</option>
																				<option value="105">1-BASIC</option>
																				<option value="112">Project mangement-INTERMEDIATE</option>
																				<option value="113">testing expert-EXPERT</option>
																				<option value="119">Software Testing-INTERMEDIATE</option>
																				<option value="2963">General Knowledge-BASIC</option>
																				<option value="2964">Attitude-BASIC</option>
																		</select> <label for="skls" style="top: -30px;">Skills</label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-3">
																<div class="input-field">
																		<input id="testTimeInMinutes" name="testTimeInMinutes" type="text" value="">
																		<label for="testTimeInMinutes">Duration (Enter time in minutes)</label>
																</div>
														</div>
														<div class="col-md-3">
																<div class="input-field">
																		<select>
																				<option selected="">Minutes</option>
																		</select>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<input id="passPercent" name="passPercent" type="text" value="60.0"> <label
																				for="passPercent">Passmark in Percentage</label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6 mb-20">
																<div class="input-field">
																		<input id="email" name="email" type="text" disabled=""
																				value="contact@thev2technologies.com"> <label for="passPercent"
																				style="font-size: 16px;">Conducted by</label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6 mb-20">
																<div class="input-field">
																		<label style="font-size: 16px; top: -40px;">Displayed upon exam completion
																				and email communications relating to the exam</label> <input type="checkbox"
																				id="sentToStudent1" name="sentToStudent1" value="true" /> <label
																				style="font-size: 12px;" for="sentToStudent1">Email a copy of the
																				student's results to above contact</label> <input type="hidden" name="_sentToStudent"
																				value="on">
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<label style="font-size: 16px; top: -40px;">Shuffle Questions in Test</label> <input
																				type="checkbox" id="random" name="randomQuestions" value="true"
																				checked="checked" /> <label for="randomQuestions"></label> <input type="hidden"
																				name="_randomQuestions" value="on">
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<input id="domainEmailSupported" name="domainEmailSupported" type="text" value="*">
																		<label for="domainEmailSupported">Email Domain for Test Givers </label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6">
																<div class="input-field">
																		<select id="testType" name="testType">
																				<option value="Java" selected="selected">Java</option>
																				<option value="Microsoft technologies">Microsoft technologies</option>
																				<option value="C/C++">C/C++</option>
																				<option value="Python">Python</option>
																				<option value="General Knowledge">General Knowledge</option>
																				<option value="Composite Test">Composite Test</option>
																		</select> <label for="testType" style="top: -30px;">Test Type </label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6 mb-50">
																<div class="input-field">
																		<label style="font-size: 16px; top: -40px;">Proctor Settings</label> <input
																				type="checkbox" checked="" disabled=""> <label style="font-size: 12px;"
																				for="sentToStudent1">Allow webcam proctoring </label> <input type="hidden"
																				name="_sentToStudent" value="on">
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6 mt-30 mb-30">
																<div class="input-field">
																		<label style="font-size: 18px; top: -65px;">Notification & Messages</label> <label
																				style="font-size: 16px; top: -40px;">Exam Introduction Text</label> <label
																				style="font-size: 12px; top: -10px;">Users see this text just before
																				they begin the exam</label>
																		<textarea id="intro" name="intro" class="materialize-textarea"></textarea>
																		<label for="intro"></label>
																</div>
														</div>
												</div>
												<div class="row">
														<div class="col-md-6 mt-30">
																<div class="input-field">
																		<label style="font-size: 18px; top: -65px;">Text - Completion Success</label> <label
																				style="font-size: 16px; top: -40px;">Exam Introduction Text</label> <label
																				style="font-size: 12px; top: -10px;">Shown to the user if they pass the
																				exam. A copy is also sent via email</label>
																		<textarea id="postTestCompletionText" name="postTestCompletionText"
																				class="materialize-textarea"></textarea>
																		<label for="intro"></label>
																</div>
														</div>
												</div>


										</form>
										<button type="button" class="waves-effect waves-light btn submit-button indigo mt-30">Cancel</button>
										<a id="next" class="waves-effect waves-light btn mt-30" href="#">Next</a>
								</div>
						</div>

				</div>
		</section>



		<footer class="footer footer-four">
				<div class="secondary-footer brand-bg darken-2 text-center">
						<div class="container">
								<ul>
										<li><a href="javascript:void(0)">Dashboard</a></li>
										<li><a href="question_list">Question Bank</a></li>
										<li><a href="testlist">Tests</a></li>
										<li><a href="javascript:void(0)">Skills</a></li>
										<li><a href="showReports">Results</a></li>
										<li><a href="javascript:void(0)">Code Analysis Reports</a></li>
										<li><a href="javascript:void(0)">Skill based Reports</a></li>
										<li><a href="listUsers">Users</a></li>
								</ul>
						</div>
				</div>
		</footer>

		<!-- jQuery -->

		<spring:url value="/resources/assets/js/jquery-2.1.3.min.js" var="mainJs1" />
		<script src="${mainJs1}"></script>
		<spring:url value="/resources/assets/bootstrap/js/bootstrap.min.js" var="mainJs2" />
		<script src="${mainJs2}"></script>
		<spring:url value="/resources/assets/materialize/js/materialize.min.js" var="mainJs3" />
		<script src="${mainJs3}"></script>
		<spring:url value="/resources/assets/js/menuzord.js" var="mainJs4" />
		<script src="${mainJs4}"></script>
		<spring:url value="/resources/assets/js/bootstrap-tabcollapse.min.js" var="mainJs5" />
		<script src="${mainJs5}"></script>
		<spring:url value="/resources/assets/js/jquery.easing.min.js" var="mainJs6" />
		<script src="${mainJs6}"></script>
		<spring:url value="/resources/assets/js/jquery.sticky.min.js" var="mainJs7" />
		<script src="${mainJs7}"></script>
		<spring:url value="/resources/assets/js/smoothscroll.min.js" var="mainJs8" />
		<script src="${mainJs8}"></script>
		<spring:url value="/resources/assets/js/jquery.stellar.min.js" var="mainJs9" />
		<script src="${mainJs9}"></script>
		<spring:url value="/resources/assets/js/jquery.inview.min.js" var="mainJs10" />
		<script src="${mainJs10}"></script>
		<spring:url value="/resources/assets/owl.carousel/owl.carousel.min.js" var="mainJs11" />
		<script src="${mainJs11}"></script>
		<spring:url value="/resources/assets/flexSlider/jquery.flexslider-min.js" var="mainJs12" />
		<script src="${mainJs12}"></script>
		<spring:url value="/resources/assets/magnific-popup/jquery.magnific-popup.min.js" var="mainJs13" />
		<script src="${mainJs13}"></script>
		<spring:url value="https://maps.googleapis.com/maps/api/js" var="mainJs14" />
		<script src="${mainJs14}"></script>
		<spring:url value="/resources/assets/js/scripts.js" var="mainJs15" />
		<script src="${mainJs15}"></script>


		<script>
			$(document).ready(function() {
				$('select').material_select();
			});
		</script>
		<script>
			$('#next').on('click', function() {
				//addteststep2
				document.getElementById("step1").submit();
			});
		</script>
		<spring:url value="/resources/scripts/custom.js" var="mainJs" />
		<script src="${mainJs}"></script>
</body>
</html>
</html>