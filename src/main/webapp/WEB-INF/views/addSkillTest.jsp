<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Add SkillTest</title>
<link href="./resources/assets/img/ico/favicon.png" rel="shortcut icon" />
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900"
	rel="stylesheet" type="text/css" />
<!-- Material Icons CSS -->
<link href="./resources/assets/fonts/iconfont/material-icons.css"
	rel="stylesheet" type="text/css" />
<!-- FontAwesome CSS -->
<link
	href="./resources/assets/fonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- magnific-popup -->
<link href="./resources/assets/magnific-popup/magnific-popup.css"
	rel="stylesheet" type="text/css" />
<link href="./resources/assets/owl.carousel/assets/owl.carousel.css"
	rel="stylesheet" type="text/css" />
<link
	href="./resources/assets/owl.carousel/assets/owl.theme.default.min.css"
	rel="stylesheet" type="text/css" />
<!-- flexslider -->
<link href="./resources/assets/flexSlider/flexslider.css"
	rel="stylesheet" type="text/css" />
<!-- Bootstrap -->
<link href="./resources/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- shortcodes -->
<link href="./resources/assets/css/shortcodes/shortcodes.css"
	rel="stylesheet" type="text/css" />
<!-- Style CSS -->
<link href="./resources/assets/style.css" rel="stylesheet"
	type="text/css" />
<!-- RS5.0 Main Stylesheet -->
<link href="./resources/assets/revolution/css/settings.css"
	rel="stylesheet" type="text/css" />
<!-- RS5.0 Layers and Navigation Styles -->
<link href="./resources/assets/revolution/css/layers.css"
	rel="stylesheet" type="text/css" />
<link href="./resources/assets/revolution/css/navigation.css"
	rel="stylesheet" type="text/css" />
<link href="./resources/assets/css/pnotify.custom.min.css"
	rel="stylesheet" type="text/css" />
<script>
	function goback() {
		window.location = "skillTest";
	}
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
<script>
	function onPageLoad() {
		var check = $("#smt").val();
		if (check !== null) {
			document.getElementById("chkPassport").checked = false;
		}

	}
</script>

<style>
.dropdown-menu {
	min-width: 387px !important;
	height: 300px !important;
	overflow: auto !important;
}
</style>

<style>
li>a.dropbtn {
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
	opacity: 100;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 10;
}

.dropdown-content>a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropbtn:hover>.dropdown {
	display: block
}

.dropdown-content a:hover {
	background-color: #03A9F4;
	color: #ffffff;
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
						<li><a href="skills">Skills</a></li>
						<li><a class="dropbtn">Profiler</a>
							<div class="dropdown">
								<div class="dropdown-content">
									<a href="learningpath">Practice</a> <a href="skillTestLabel">Coding</a>
									<a href="compete">Compete</a> <a href="skillTest"
										class="active">Skill Test</a>
								</div>
							</div></li>
						<li><a class="dropbtn">Result</a>
							<div class="dropdown">
								<div class="dropdown-content">
									<a href="showReports">Result</a> <a href="codingSessions">Code
										Reports</a> <a href="showSkillTags">Skill Reports</a>
								</div>
							</div></li>
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
		<form:form name="tenantForm" method="post" modelAttribute="skillTest"
			action="saveSkillTest" id="frm">
			<div class="container">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="mb-30">
							<h2 class="section-title">&nbsp;Add New Skill</h2>
						</div>

						<div class="col-md-12">
							<div class="col-md-6">
								<div class="row formfields">
									<div class="col-md-4">
										<label class="fieldtitle">Skill Name </label>
									</div>
									<div class="col-md-8">
										<div class="input-field">
											<form:input path="parentSkill" name="skillName" id="pskill"
												required="true" />
											<form:hidden path="id" />

										</div>
										<span style="color: red">${msg}</span>
									</div>
								</div>

							</div>

							<div class="col-md-6">
								<div class="row formfields">
									<div class="col-md-6">
										<!-- <label class="fieldtitle">Nested Skill</label> -->
									</div>
									<div class="col-md-8">
										<div class="input-field">
											<form:checkbox path="isCheckedFlag" id="chkPassport" />
											Nested Skill
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- close div -->

						<div class="col-md-12">
							<div id="drp">
								<div class="col-md-6">
									<div class="row formfields">
										<div class="col-md-4">
											<label class="fieldtitle">Skill List</label>
										</div>
										<div class="col-md-8">
											<form:select path="childSkill" id="smt"
												style="width: 130px;height: 26px" disabled="true">
												<option value="select">--Select Skill--</option>
												<form:options items="${listSkill}" />

											</form:select>
										</div>
									</div>
								</div>
							</div>

						</div>


					</div>


					<div class="buttons text-center">
						<div class="col-md-12">
							<div class="col-md-8">
								<button id="sbtn" type="button" class="btn btn-primary">Save</button>&nbsp;
								<button type="button" class="btn btn-success" onclick="goback()">Cancel</button>
							</div>
						</div>
					</div>


					<div class="col-md-3"></div>
				</div>

			</div>
			</div>
		</form:form>
	</section>

	<!-- <footer class="footer footer-four">
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
					<li><a href="showProfileParams">Recomm Setting</a></li>
					<li><a href="listUsers">Users</a></li>
				</ul>
			</div>
		</div>
	</footer>
 -->

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
	<script
		src="./resources/assets/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script src="./resources/assets/js/scripts.js"></script>
	<script src="./resources/assets/scripts/custom.js"></script>
	<script src="./resources/assets/scripts/pnotify.custom.min.js"></script>

	<script>
		$("#chkPassport").click(function() {
			if ($(this).prop("checked") == true) {
				$("#pskill").attr("name", "childSkill");
				$("#smt").attr("name", "parentSkill");
				$("#smt").prop("disabled", false);
			} else {
				$("#pskill").attr("name", "parentSkill");
				$("#smt").attr("name", "childSkill");
				$("#smt").prop("disabled", "disabled");
			}
		});

		$("#sbtn").click(function() {
			if ($("#chkPassport").prop('checked') == true) {
				var msg = $("#smt").val();
				if (msg === "select") {
					notify("Info", "Select Skill from list");
				} else {
					var sname = $("#pskill").val();
					if (sname == "") {
						notify("Info", "Skill cannot be empty");
					} else {
						$("#frm").submit()
					}
				}
			} else {
				var sname = $("#pskill").val();
				if (sname == "") {
					notify("Info", "Skill cannot be empty");
				} else {
					$("#frm").submit()
				}
			}
		});

		function notify(messageType, message) {
			var notification = 'Information';
			$(function() {
				new PNotify({
					title : notification,
					text : message,
					type : messageType,
					width : '60%',
					styling : 'bootstrap3',
					hide : false
				});
			});
		}
	</script>
	<script type="text/javascript">
		
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
	<script>
		
	</script>

</body>

</html>