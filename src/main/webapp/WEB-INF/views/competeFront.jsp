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
<title>Compete</title>

<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />
<link href="${c1}" rel="shortcut icon" />

<spring:url
	value="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900"
	var="c2" />

<link href="${c2}" rel="stylesheet" type="text/css" />
<!-- Vaisnavi's addition jquery ui -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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

<!-- Popover cdn  -->
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.popover {
	max-width: 600px;
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
	bottom: 100%; /* At the top of the tooltip */
	left: 50%;
	margin-left: -5px;
	border-width: 5px;
	border-style: solid;
	border-color: transparent transparent black transparent;
}

.tooltip:hover .tooltiptext {
	visibility: visible;
}

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
	height: 18px;
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

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
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

<style>
.drp {
	display: block;
	inline-size: auto;
	font-size: 16px;
	margin-top: 15px;
	border-radius: 0.5rem;
	border-bottom: 3px solid #fff;
	background: #647687;
	color: #fff;
}

.drp>option {
	padding: 7px;
}

.skilldiv {
	border: 2px solid #b3bdc7;
	border-radius: 0.7rem;
}

.skillcontent {
	margin: 20px;
	padding: 20px;
	background: #ffffff;
	height: 60px;
	border-radius: 0.7rem;
	width: 200px;
	text-align: right;
	color: black;
}

li>a.dropbtn {
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

div.container {
	padding-left: 0px;
	padding-right: 0px;
}

div.dataTables_wrapper div.dataTables_filter input {
	margin-bottom: 0px;
	margin-left: 0px;
	border-style: ridge;
	height: auto;
	border-radius: 0.7rem;
}

.headingrow {
	background: #647687;
	color: #fff;
	height: 60px;
	font-size: 18px;
	vertical-align: center;
	margin-bottom: 30px;
}

.stepdiv {
	height: 52px;
	font-size: 18px;
	font-weight: bold;
	padding: 15px;
	border: hidden;
}

.stepdetails {
	display: none;
	color: #999999;
	padding-left: 30px;
}

.panels {
	padding: 0px;
	font-size: 16px;
	border: 1px solid #dadada;
	border-radius: 1rem;
}

.stepdetails {
	border-bottom: 1px solid #dadada;
}

.activestep {
	display: block;
}

.inactivestep {
	display: none;
}

.stepTitle {
	padding: 15px;
	height: 67px;
	border-radius: 1rem;
	border: 2px solid #dadada;
	font-weight: bold;
	font-size: 22px;
}

.testitem {
	padding: 15px 0px 15px;
	border-bottom: 1px solid #dadada;
}

.testname {
	font-weight: bold;
	font-size: 20px;
	width: fit-content;
}

.testlvl {
	font-size: 16px;
	width: fit-content;
}

.testdetails {
	font-size: 14px;
	margin-left: 40px;
	color: #999999;
	width: fit-content;
}

.moretestdet {
	font-size: 16px;
	margin-left: 30px;
	color: #647687;
	display: none;
	width: fit-content;
}

.strtbtn {
	border: 1px solid #dadada;
	border-radius: 0.7rem;
	vertical-align: center;
}

.reqlbl {
	border: 1px solid #b01212;
	color: #b01212;
	font-size: 12px;
	border-radius: 15rem;
	line-height: 18px;
	display: inline-block;
	padding: 6px;
	margin-left: 20px;
}
</style>

</head>

<body id="top" class="has-header-search" onload="leaderboard('${testName}')">
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
						<li class="active"><a class="dropbtn">Practice</a>
							<div class="skilldiv dropdown">
								<div class="dropdown-content" style="background: #b3bdc7">
									<c:forEach var="s1" varStatus="status" items="${skills}">
										<a class="skillcontent" onclick="loadPage('${s1}')"
											value="${s1}">${s1}</a>
									</c:forEach>
								</div>
							</div></li>
						<li class="tooltip"><a href="getSubSkill">Coding </a> <span
							class="tooltiptext"> <c:forEach items="${skillList}"
									var="skill" varStatus="loop">
									<a style="font-size: x-large;"
										href="getSubSkill?skill=${skill}"><c:out value="${skill}" /></a>
									<br>
								</c:forEach>
						</span></li>
						<!-- 						<li><a href="#">Compete</a></li> -->
						<li class="tooltip"><a>Compete </a>
							<ul class="tooltiptext" style="list-style-type: none;">
								<li style="margin: 0 0 8px 0;"><a href="competeFrontSkill">SkillChallenge</a></li>
								<li><a href="competeFrontCoding">CodingChallenge</a></li>
							</ul></li>

						<li><a href="practice">Code-GIG</a></li>
						<!-- 						<li class="dropdown" style="display: block;width: 150px;"> -->
						<!-- 							<a href="competeFront" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Compete <span class="caret"></span></a> -->
						<!-- 							<ul class="dropdown-menu" role="menu"> -->
						<!-- 								<li><a href="competeFrontSkill">Skill Challenge</a></li> -->
						<!-- 	       						<li><a href="competeFrontCoding">Coding Challenge</a></li> -->
						<!-- 							</ul> -->
						<!-- 						</li> -->

					</ul>
					<!--mega menu end-->
				</div>
			</div>
		</div>
	</header>
	<!--header end-->

	<section>
		<div class="col-md-12 headingrow">
			<div class='col-md-9' id="competeTest" style="margin-top: 15px;">Home
				// Compete // ${challengeType} Challenge // ${skillName}</div>
			<div class='col-md-3'>
				<select class='drp pull-right' id="slct" required="required"
					onchange="competeTest()" style="width: 50%;">
					<c:forEach var="skillList" varStatus="status" items="${skillList}">
						<c:choose>
							<c:when test="${status.index == skillIndex}">
								<option value="${skillList}" selected>${skillList}</option>
							</c:when>
							<c:otherwise>
								<option value="${skillList}">${skillList}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="panels col-md-7">
					<div class="stepTitle">${skillName}</div>
					<div style="padding: 15px">
						<c:set var="count" value="0" scope="page" />
						<c:forEach items="${tests}" var="tests" varStatus="loop">
							<div class="testitem row">
								<div class="col-md-8">
									<div class="testname">${tests}</div>
									<c:set var="count" value="${count+1}"/>
									<div class="testlvl">Level <c:out value="${count}" />|Will Take 60 minutes</div>
									<div class="testdetails">
										<a style="color: #999999" onclick="openTestDetails(${loop.index})">More Details<span style="padding-left: 15px; color: #4d90fe;" id="spantest${loop.index}" class="glyphicon glyphicon-chevron-down"></span></a>
									</div>
									<div class="moretestdet" style="display: none;" id="moretestdet${loop.index}">
												Your score: ${dtoList.score}  0/100<br> Re-attempt the test to improve your score
									</div>
								</div>
								<div class="col-md-4">
									<c:forEach var="id" varStatus="status" items="${testId}">
										<c:choose>
											<c:when test="${status.index == loop.index}">
												<a class="pull-right btn strtbtn" href="startTestSession?userId=${userId}&testId=${id}&companyId=${companyId}&sharedDirect=yes">Start</a>
											</c:when>
										</c:choose>
									</c:forEach>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-4">
					<h4>Leaderboard</h4>
					<div id="popoverTitle" style="border:2px solid #DADADA;border-radius: 10px; ; padding: 15px">
						<form:form method="GET" modelAttribute="compete">
							<form:select path="testName" class="form-control" id="slctTest"
								required="required" onchange="javascript:leaderboard(this.value);">
								<form:options items="${tests}" />
							</form:select>
						</form:form>
						<br>
						<table class="table table-striped" id="tbl">
							<thead style="background-color: #03a9f4;">
								<tr>
									<th>Name</th>
									<th>Rank</th>
									<th>Score</th>
								</tr>
							</thead>

						</table>
					</div>
				</div>

			</div>
		</div>
	</section>

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

	<script
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

	<script type="text/javascript">

  function competeTest() {
		var challengeType= new URL(location.href).searchParams.get("challengeType");
		var skillName = $("#slct").val();
		console.log("SkillName:"+skillName+"\nChallenge Type:"+challengeType);
		window.location = 'competeFront?challengeType='+challengeType+'&skillName='+skillName;
	}

	function leaderboard(testName){
		console.log("testName:"+testName);
		$.ajax({
			url : 'leaderboard?testName='+testName,
			type : 'GET',
			success : function(response) {
				console.log("success leaderboard");
				$(".tr").remove();
				for (var i = 0; i < response.dtoList.length; i++) {
					var scoreInPercent=response.dtoList[i].score + "%";
					var fName=response.dtoList[i].fName;
					var lName=response.dtoList[i].lName;
					var name= fName + " " +lName;
					console.log("Full name"+name);
					
					$("#tbl").append(
							"<tr class='tr'><td>"
							+ name+
							"</td><td>"
							+ response.dtoList[i].rank+
							"</td><td>"
							+ scoreInPercent +
							"</td></tr>"
						)
				} 
			}
		});
	}

	function openTestDetails(index){
		console.log(index);
		var divid = "moretestdet"+index;
		var statusdisp = document.getElementById(divid).style.display;
		console.log(statusdisp);
		if( statusdisp === "none" ) {
			document.getElementById(divid).style.display = "block";
			document.getElementById("spantest"+index).className = "glyphicon glyphicon-chevron-up";
		}
		else {
			document.getElementById(divid).style.display = "none";
			document.getElementById("spantest"+index).className = "glyphicon glyphicon-chevron-down";
		}
	}
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
</script>
</body>
</html>