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
<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />

<link href="${c1}" rel="shortcut icon" />

<spring:url
	value="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900"
	var="c2" />

<link href="${c2}" rel="stylesheet" type="text/css" />

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

<%-- <!-- materialize -->
<spring:url value="/resources/assets/materialize/css/materialize.min.css" var="c9" />

<link href="${c9}" rel="stylesheet" type="text/css" /> --%>

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
<script>
	function goback() {
		window.location = "goback";
	}
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('option[value="select"]').attr("disabled", "disabled");  // disable first option
		$("#chkPassport").click(function() {
			if ($(this).is(":checked")) {
				$("#sbtn").attr("disabled", true);

			} else {
				$("#sbtn").attr("disabled", false);
			}

		});
	});
</script>
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
					<ul class="menuzord-menu pull-right">
						<li><a
							href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
						<li><a href="question_list">Question Bank</a></li>
						<li><a href="testlist">Tests</a></li>
						<li><a href="skills">Skills</a></li>
						<li><a href="showReports">Results</a></li>
						<li><a href="practice">Practice</a></li>
						<li><a href="codingSessions">Code Analysis Reports</a></li>
						<li class="active"><a href="skillTest">Skill Test</a></li>
						<li><a href="showSkillTags">Skill based Reports</a></li>
						<li><a href="showProfileParams">Recomm Setting</a></li>
						<li><a href="listUsers">Users</a></li>
					</ul>
					<!--mega menu end-->
				</div>
			</div>
		</div>
	</header>
	<!--header end-->

	<section>
		<form:form name="tenantForm" method="post" modelAttribute="skillTest"
			action="saveSkillTest">
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
											<form:input path="subSkill" name="skillName" id="skillName"
												required="true" />

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
											<div class="dropdown" id="dropID">
												<form:select path="skillName" id="smt"
													style="width: 130px;height: 26px" onchange="btn()">
													<option name="" value="select">Select Skill</option>
													<c:forEach items="${skillTests}" var="skillTests">
														<%-- <option value="${skillTests.skillName}">${skillTests.skillName}</option> --%>
														<option value="${skillTests}">${skillTests}</option>
													</c:forEach>
												</form:select>

											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<%-- <div class="row formfields">
									<div class="col-md-4">
										<label class="fieldtitle">SubSkill List </label>
									</div>
									<div class="col-md-8">
										<div class="dropdown">
											<select  >
												<c:forEach items="${skillTests}" var="skillTests">
													<option value="${skillTests.subSkill}">${skillTests.subSkill}</option>
												</c:forEach>
											</select>
										 <input type="text" id="subSkill" name="subSkill">
										</div>
									</div>
								</div> --%>
							</div>
						</div>


					</div>


					<%-- <div class="col-md-8">
								<div class="row formfields">
									<div class="col-md-4">
										<label class="fieldtitle">Sub Skill</label>
									</div>
									<div class="col-md-8">
										<div class="input-field">
											<form:input path="skillTest.subSkill" name="subSkill" id="subSkill"
												required="true" />
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="col-md-8">
								<div class="row formfields">
									<div class="col-md-4">
										<label class="fieldtitle">Test Name</label>
									</div>
									<div class="col-md-8">
										<div class="dropdown">
											<form:select path="skillTest.testName">
                                                <c:forEach  items="${test}" var="test">
                                                
												<form:option value="${test.testName}">${test.testName}</form:option>
												
                                                </c:forEach>
											</form:select>
										</div>
									</div>
								</div>
							</div>

						</div> --%>
					<div class="col-md-12">
						<div class="col-md-8">
							<button type="submit" name="submit" id="sbtn"
								class="waves-effect waves-light btn submit-button mt-30">Save</button>
							<button type="button"
								class="waves-effect waves-light btn submit-button indigo mt-30"
								onclick="goback()">Cancel</button>
						</div>
					</div>


					<div class="col-md-3"></div>
				</div>

			</div>
			</div>
		</form:form>
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
					<li><a href="showProfileParams">Recomm Setting</a></li>
					<li><a href="listUsers">Users</a></li>
				</ul>
			</div>
		</div>
	</footer>


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
		function btn() {
			$(document).ready(function() {
				$("#sbtn").attr("disabled", false);
				$("#smt").click(function() {
					$("#chkPassport").prop("checked", true);
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
	<script>
		
	</script>

</body>

</html>