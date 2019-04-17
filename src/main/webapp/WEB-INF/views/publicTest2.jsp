
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-Assess</title>
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
<style>
.header .userheader {
	float: right;
}

.headerinfos li {
	font-size: 18px;
	float: left;
}

.headerinfos li i {
	margin-right: 10px;
}

.headerinfos li:first-child {
	padding-right: 30px;
}

.logo img {
	width: 200px;
}

.featured-item img {
	width: 150px !important;
	height: 150px;
}
</style>
</head>
<body id="top" class="has-header-search">
	<!--header start-->
	<header id="header" class="header tt-nav nav-border-bottom" style="height: auto;">
		<div class="header-sticky light-header ">
			<div class="container">
				<div class="col-md-12">
					<div class="col-md-6">
						<div class="logo">
							<a href="javascript:void(0);"><img class="retina"
								src="<%=request.getContextPath()%>/resources/assets/images/Logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="userheader headerinfos mt-20">
							<ul>
								<!-- 																<li><i class="fa fa-envelope"></i>admin@e-assess.com</li> -->
								<li><i class="fa fa-phone"></i>+91 97696 06550</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--header end-->

	<section class="feature-presentation padding-top-50 padding-bottom-20">
		<div class="container">

			<div class="row">

				<div class="col-md-12 col-sm-12">
					<div class="col-md-4"></div>
					<div class="col-md-4 text-center">
						<div class="featured-item feature-icon icon-hover icon-hover-brand">
							<img src="<%=request.getContextPath()%>/resources/assets/images/Freshers.png">
						</div>
					</div>
					<div class="col-md-4"></div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div
						class="featured-item feature-icon icon-hover icon-hover-brand right-icon mt-50">
						<img
							src="<%=request.getContextPath()%>/resources/assets/images/Experienced.png">
					</div>
					<div
						class="featured-item feature-icon icon-hover icon-hover-brand right-icon mt-50">
						<img src="<%=request.getContextPath()%>/resources/assets/images/All_Tech.png">
					</div>
				</div>

				<div class="col-md-4">

					<form name="testloginform" class="userform" method="post"
						modelAttribute="testUserData" action="publicTestAuthenticate">
						<form:hidden path="testUserData.testId" />
						<form:hidden path="testUserData.user.companyName" />
						<form:hidden path="testUserData.user.companyId" />
						<div class="row">
							<div class="col-md-12">
								<div class="input-field">
									<label style="top: -20px; transform: none; font-size: 16px;">User
										Name</label>
									<form:input type="email" path="testUserData.user.email" name="email"
										id="username" placeholder="Email" required="true" />
								</div>
							</div>
							<div class="col-md-12">
								<div class="input-field">
									<label style="top: -20px; transform: none; font-size: 16px;">First
										Name</label>

									<form:input path="testUserData.user.firstName" name="firstName"
										id="firstName" placeholder="First Name" required="true" />

								</div>
							</div>
							<div class="col-md-12">
								<div class="input-field">
									<label style="top: -20px; transform: none; font-size: 16px;">Last
										Name</label>
									<form:input path="testUserData.user.lastName" name="lastName" id="lastName"
										placeholder="Last Name" required="true" />

								</div>
							</div>
							<div class="col-md-12">
								<div class="input-field">
									<label style="top: -20px; transform: none; font-size: 16px;" class="active">Test
										Name</label>
									<form:input path="testUserData.testName" name="testName" id="testName"
										required="true" disabled="true" />


								</div>
							</div>
							<div class="col-md-12">
								<div class="input-field">
									<label style="top: -20px; transform: none; font-size: 16px;" class="active">Company</label>
									<form:input path="testUserData.user.companyName" name="companyName"
										id="companyName" disabled="true" />
								</div>
							</div>
							<div class="col-md-12 text-right">
								<button type="submit" name="submit"
									class="waves-effect waves-light btn submit-button mt-20">Sign in</button>
							</div>
						</div>

					</form>

				</div>

				<div class="col-md-4 col-sm-6">
					<div class="featured-item feature-icon icon-hover icon-hover-brand mt-50">
						<img src="<%=request.getContextPath()%>/resources/assets/images/Managers.png">
					</div>
					<div class="featured-item feature-icon icon-hover icon-hover-brand mt-50">
						<img src="<%=request.getContextPath()%>/resources/assets/images/Reports.png">
					</div>
				</div>

				<div class="col-md-12 col-sm-12">
					<div class="col-md-4"></div>
					<div class="col-md-4 text-center">
						<div class="featured-item feature-icon icon-hover icon-hover-brand">
							<img
								src="<%=request.getContextPath()%>/resources/assets/images/TimeAndMoney.png">
						</div>
					</div>
					<div class="col-md-4"></div>
				</div>

			</div>
		</div>
	</section>

	<footer class="footer footer-four">
		<div class="secondary-footer brand-bg darken-2 text-center">
			<div class="container">
				<p style="margin-bottom: 0;">Copyrigh © 2019 E-Assess. All Rights Reserved –
					Privacy Policy For E-Assess Inc.</p>
			</div>
		</div>
	</footer>
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

</body>
</html>
