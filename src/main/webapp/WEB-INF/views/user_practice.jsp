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
  display: block;
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
						<li><a href="showReports">Results</a></li>
						<li><a href="practice">Practice</a></li>
						<li><a href="codingSessions">Code Analysis Reports</a></li>
						<li><a href="showSkillTags">Skill based Reports</a></li>
						<li><a href="showProfileParams">Recomm Setting</a></li>
						<li>
						<a class="dropbtn">Profiler</a>
						<div class="dropdown">
							<div class="dropdown-content">
							 	<a href="#">Practice</a>
								<a href="#">Compete</a>
								<a href="#">Coding</a>
								<a href="learningpath">Learning Path</a>
							 </div>
						</div>
						</li>
						<li class="active">
							<a class="dropbtn">Practice</a>
							<div class="dropdown">
								<div class="dropdown-content skilldiv" style="background:#b3bdc7">
									<c:forEach var="s1" varStatus="status" items="${skills}">
										<a class="skillcontent" onclick="loadPage('${s1}')" value="${s1}">${s1}</a>
									</c:forEach>
								 </div>
							</div>
						</li>
						<li><a href="listUsers">Users</a></li>
						<!-- <a href="/AssesmentApp/OnetPage">Assessment Profiler</a> -->
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
						<c:forEach var="test" varStatus="status" items="${tests}">
							<c:choose>
								<c:when test="${test.required == true}">
									<div class="testitem row">
										<div class="col-md-8">
											<div class="testname">${test.testName} <div class="reqlbl">Required</div></div>
												<div class="testlvl">${test.level} | will Take 30 minutes</div>
												<div class="testdetails">
													<a style="color:#999999" onclick="openTestDetails(${status.index})">More Details<span style="padding-left:15px;color:#4d90fe;" id="spantest${status.index}" class="glyphicon glyphicon-chevron-down"></span></a>
												</div>
												<div class="moretestdet" style="display:none;" id="moretestdet${status.index}">
													Your score: 0/100<br>
													Re-attempt the test to improve your score
												</div>	
										</div>
										<div class="col-md-4">
											<a class="pull-right btn strtbtn">Start</a>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="testitem row">
										<div class="col-md-8">
											<div class="testname">${test.testName}</div>
												<div class="testlvl">${test.level} | will Take 30 minutes</div>
												<div class="testdetails">
													<a style="color:#999999" onclick="openTestDetails(${status.index})">More Details<span style="padding-left:15px;color:#4d90fe;" id="spantest${status.index}" class="glyphicon glyphicon-chevron-down"></span></a>
												</div>
												<div class="moretestdet" style="display:none;" id="moretestdet${status.index}">
													Your score: 0/100<br>
													Re-attempt the test to improve your score
												</div>	
										</div>
										<div class="col-md-4">
											<a class="pull-right btn strtbtn">Start</a>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							
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
								<c:when test="${status.index == 0}">
									<div class="stepdiv">
										<a id="stpnm${status.index}" onclick="loadStepTests('${stepnm.stepName}')">${stepnm.stepName}</a>
										<a class="pull-right" id="link${status.index}" onclick="openStepDetails(${status.index})"><span id="span${status.index}" class="glyphicon glyphicon-chevron-up"></span></a>
									</div>
									<div id="stepdet${status.index}" class="activestep stepdetails">
										Total Tests:${counts[status.index][0]}<br>
										Mandatory:${counts[status.index][1]}
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
	
	<footer class="footer footer-four">
		<div class="secondary-footer brand-bg darken-2 text-center">
			<div class="container">
				<ul>
					<li><a href="javascript:void(0)">Dashboard</a></li>
					<li><a href="question_list">Question Bank</a></li>
					<li><a href="testlist">Tests</a></li>
					<li><a href="javascript:void(0)">Skills</a></li>
					<li><a href="showReports">Results</a></li>
					<li><a href="practice">Practice</a></li>
					<li><a href="codingSessions">Code Analysis Reports</a></li>
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
	
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	
	<script>
		function loadPage(skn){
			window.location.href = "userpractice?skilln="+skn;
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
			alert(stepname);
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
</body>

</html>