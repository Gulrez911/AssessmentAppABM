<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en" style="position: fixed;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
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

</head>
<body>
	<div class="col-md-12 col-sm-12 col-xs-12 text-center">


		<section
			style="height: 100% !important; margin: 0px; background-image: url('<%=request.getContextPath()%>/resources/images/loginbg2.jpg');">
			<img src="<%=request.getContextPath()%>/resources/images/Logo.png"
				style="margin-top: -84px;">
			<div class="container">
				<div class="login-wrapper">
					<div class="card-wrapper"></div>
					<div class="card-wrapper">
						<h1 class="title">Login</h1>
						<form name="userloginform" class="userform" method="post"
							modelAttribute="user" action="authenticate">
							<div class="input-container">
								<form:input type="email" path="user.email" name="email"
									id="username" cssClass="form-control" required="true" />
								<label for="username">Username</label>
								<div class="bar"></div>
							</div>
							<div class="input-container">
								<form:password path="user.password" name="password"
									id="password" cssClass="form-control" required="true" />
								<label for="password">Password</label>
								<div class="bar"></div>
							</div>
							<div class="input-container">
								<form:input path="user.companyName" name="companyName"
									id="companyName" cssClass="form-control" required="true" />
								<label for="Company">Company</label>
								<div class="bar"></div>
							</div>
							<div class="button-container">
								<button type="submit" name="submit"
									class="btn-block waves-effect waves-light btn">Login</button>

							</div>
							<div class="footer">
								<a href="http://beforesubmit.com/qe-assess/login.html#">Forgot
									your password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>

		</section>
	</div>
	<script src="css/jquery-2.1.3.min.js.download"></script>
	<script src="css/bootstrap.min.js.download"></script>
	<script type="text/javascript">
		function myFunction() {
			var x = document.getElementById("userpassword");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
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