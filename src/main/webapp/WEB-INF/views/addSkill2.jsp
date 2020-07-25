<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Add User</title>
<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />

<link href="${c1}" rel="shortcut icon" />

<spring:url
	value="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900" var="c2" />

<link href="${c2}" rel="stylesheet" type="text/css" />

<!-- Material Icons CSS -->
<spring:url value="/resources/assets/fonts/iconfont/material-icons.css" var="c3" />

<link href="${c3}" rel="stylesheet" type="text/css" />

<!-- FontAwesome CSS -->
<spring:url value="/resources/assets/fonts/font-awesome/css/font-awesome.min.css"
	var="c4" />

<link href="${c4}" rel="stylesheet" type="text/css" />

<!-- magnific-popup -->
<spring:url value="/resources/assets/magnific-popup/magnific-popup.css" var="c5" />

<link href="${c5}" rel="stylesheet" type="text/css" />

<!-- owl.carousel -->
<spring:url value="/resources/assets/owl.carousel/assets/owl.carousel.css" var="c6" />

<link href="${c6}" rel="stylesheet" type="text/css" />

<spring:url value="/resources/assets/owl.carousel/assets/owl.theme.default.min.css"
	var="c7" />

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
<spring:url value="/resources/assets/css/pnotify.custom.min.css" var="c16" />

<link href="${c16}" rel="stylesheet" type="text/css" />
<script>
	function goback() {
		window.location = "goback";
	}
</script>

<style>
	.dropdown-menu {
		min-width: 387px !important;
		height: 300px !important;
		overflow: auto !important;
	}
	</style>
	
	<style >
	li>a.dropbtn{
		position: relative;
	}
	.dropdown {
	  position: relative;
	  display: none;
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
						src="<%=request.getContextPath()%>/resources/assets/images/Logo.png"
						alt="" />
					</a>
					
						
					<!--logo end-->
					<!--mega menu start-->
					<ul class="menuzord-menu pull-right">
						<li><a
							href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
						<li><a href="question_list">Question Bank</a></li>
						<li><a href="testlist">Tests</a></li>
						<li class="active"><a href="skills">Skills</a></li>
						<li>
						<a class="dropbtn">Profiler</a>
						<div class="dropdown">
							<div class="dropdown-content">
								<a href="learningpath">Practice</a>
								<a href="skillTestLabel">Coding</a>
								<a href="compete">Compete</a>
								<a href="skillTest">Skill Test</a>
							 </div>
						</div>
						</li>
						<li>
						<a class="dropbtn">Result</a>
							<div class="dropdown">
								<div class="dropdown-content">
									<a href="showReports">Result</a>
									<a href="codingSessions">Code Reports</a>
									<a href="showSkillTags">Skill Reports</a>
								 </div>
							</div>
						</li>
						<li><a href="showProfileParams">Recomm Setting</a></li>
						<li><a href="listUsers">Users</a></li>
<!-- 						<a href="/AssesmentApp/OnetPage">Assessment Profiler</a> -->
					</ul>
					<!--mega menu end-->
					 </div>
				
			</div>
		</div>
		
	</header>
	<!--header end-->

	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="mb-30">
						<h2 class="section-title">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAdd
							New Skill</h2>
					</div>
					<form name="tenantForm" method="post" modelAttribute="skill" action="saveSkill">

						<div class="col-md-12">
							<div class="col-md-8">
								<div class="row formfields">
									<div class="col-md-4">
										<label class="fieldtitle">Skill Name</label>
									</div>
									<div class="col-md-8">
										<div class="input-field">
											<form:input path="skill.skillName" name="skillName" id="skillName"
												required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-8">
								<div class="row formfields">
									<div class="col-md-4">
										<label class="fieldtitle">Skill Level</label>
									</div>
									<div class="col-md-8">
										<div class="input-field">
											<form:select path="skill.level">

												<form:options items="${levels}" itemValue="level" itemLabel="level" />
											</form:select>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="col-md-12">
							<div class="col-md-8">
								<button type="submit" name="submit"
									class="waves-effect waves-light btn submit-button mt-30">Save</button>
								<button type="button"
									class="waves-effect waves-light btn submit-button indigo mt-30"
									onclick="goback()">Cancel</button>
							</div>
						</div>
					</form>

					<div class="col-md-3"></div>
				</div>

			</div>
		</div>
	</section>

<!-- 	<footer class="footer footer-four"> -->
<!-- 		<div class="secondary-footer brand-bg darken-2 text-center"> -->
<!-- 			<div class="container"> -->
<!-- 				<ul> -->
<!-- 					<li><a href="javascript:void(0)">Dashboard</a></li> -->
<!-- 					<li><a href="question_list">Question Bank</a></li> -->
<!-- 					<li><a href="testlist">Tests</a></li> -->
<!-- 					<li><a href="javascript:void(0)">Skills</a></li> -->
<!-- 					<li><a href="showReports">Results</a></li> -->
<!-- 					<li><a href="javascript:void(0)">Code Analysis Reports</a></li> -->
<!-- 					<li><a href="javascript:void(0)">Skill based Reports</a></li> -->
<!-- 					<li><a href="showProfileParams">Recomm Setting</a></li> -->
<!-- 					<li><a href="listUsers">Users</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->


	<!-- jQuery -->

	<spring:url value="/resources/assets/js/jquery-2.1.3.min.js" var="mainJs1" />
	<script src="${mainJs1}"></script>
	<spring:url value="/resources/assets/bootstrap/js/bootstrap.min.js" var="mainJs2" />
	<script src="${mainJs2}"></script>
	<spring:url value="/resources/assets/materialize/js/materialize.min.js"
		var="mainJs3" />
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
	<spring:url value="/resources/assets/owl.carousel/owl.carousel.min.js"
		var="mainJs11" />
	<script src="${mainJs11}"></script>
	<spring:url value="/resources/assets/flexSlider/jquery.flexslider-min.js"
		var="mainJs12" />
	<script src="${mainJs12}"></script>
	<spring:url value="/resources/assets/magnific-popup/jquery.magnific-popup.min.js"
		var="mainJs13" />
	<script src="${mainJs13}"></script>
	<spring:url value="https://maps.googleapis.com/maps/api/js" var="mainJs14" />
	<script src="${mainJs14}"></script>
	<spring:url value="/resources/assets/js/scripts.js" var="mainJs15" />
	<script src="${mainJs15}"></script>
	<spring:url value="/resources/assets/scripts/custom.js" var="mainJs16" />
	<script src="${mainJs16}"></script>
	<spring:url value="/resources/assets/scripts/pnotify.custom.min.js" var="mainJs17" />
	<script src="${mainJs17}"></script>


	<script>
		$(document).ready(function() {
			$('select').material_select();
		});

		$(function() {
			$(".addimage").on('click', function(e) {
				e.preventDefault();
				$("#addimage").trigger('click');
			});
			$(".addaudio").on('click', function(e) {
				e.preventDefault();
				$("#addaudio").trigger('click');
			});
			$(".addvideo").on('click', function(e) {
				e.preventDefault();
				$("#addvideo").trigger('click');
			});
		});

		$('#addimage').change(function() {
			var file = $('#addimage')[0].files[0].name;
			$('.queimage').text('Image: ' + file);
			$('.queimage').css('width', '100%');
		});
		$('#addaudio').change(function() {
			var file = $('#addaudio')[0].files[0].name;
			$('.queaudio').text('Audio: ' + file);
			$('.queaudio').css('width', '100%');
		});
		$('#addvideo').change(function() {
			var file = $('#addvideo')[0].files[0].name;
			$('.quevideo').text('Video: ' + file);
			$('.quevideo').css('width', '100%');
		});

		function changeQType() {
			var selectedValue = $("#questionType").val();
			$('.questiontypedrp .select-dropdown').html(selectedValue);
			if (selectedValue == 'CODING') {

				document.getElementById("mcqDiv").style.display = 'none';
				document.getElementById("codingDiv").style.display = '';

				document.getElementById("choice1").required = false;
				document.getElementById("choice2").required = false;

				document.getElementById("input").required = true;
				document.getElementById("output").required = true;
			} else {
				document.getElementById("mcqDiv").style.display = '';
				document.getElementById("codingDiv").style.display = 'none';

				document.getElementById("choice1").required = true;
				document.getElementById("choice2").required = true;
				document.getElementById("input").required = false;
				document.getElementById("output").required = false;
			}
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


</body>

</html>