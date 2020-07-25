<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-Assess</title>


<style>
.sec_nav{
height: 550px;
overflow: scroll;
overflow-x: hidden;
}
.reddot {
  height: 35px;
  width: 35px;
  color: #ffffff;
  border-radius: 25%;
  display: inline-block;
  background-color: #ff0000;
  border-style: groove;
  font-weight: bold;
  text-align: center;
  margin:0.3em;
}
.yellowdot {
  height: 35px;
  width: 35px;
  color: #000000;
  border-radius: 25%;
  display: inline-block;
  background-color:  #ffff33;
  border-style: groove;
  font-weight: bold;
  text-align: center;
  margin:0.3em;
}
.greendot {
  height: 35px;
  width: 35px;
  color: #ffffff;
  border-radius: 25%;
  display: inline-block;
  background-color: #0ec00e;
  border-style: groove;
  font-weight: bold;
  text-align: center;
  margin:0.3em;
}
</style>

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
<spring:url value="/resources/css/pnotify.custom.min.css" var="c113" />

<link href="${c113}" rel="stylesheet" type="text/css" />
<spring:url
	value="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"
	var="mainJs1" />
<script src="${mainJs1}"></script>
<spring:url value="/resources/scripts/custom.js" var="mainJs2" />
<script src="${mainJs2}"></script>
<spring:url value="/resources/scripts/pnotify.custom.min.js"
	var="mainJs3" />
<script src="${mainJs3}"></script>
<spring:url value="/resources/scripts/html2canvas.js" var="mainJs4" />
<script src="${mainJs4}"></script>
<spring:url value="/resources/scripts/src-min-noconflict/ace.js"
	var="mainJs5" />
<script src="${mainJs5}"></script>

<!-- current added 1-05-2020 -->
<script src="./resources/scripts/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
		var active = 'true';
		var studentNameTaken = localStorage.getItem('${studentTestForm.firstName}${studentTestForm.lastName}');
		var testNameTaken = localStorage.getItem('testName-${studentTestForm.firstName}${studentTestForm.lastName}');
		var tc= localStorage.getItem('timeCounter-${studentTestForm.firstName}${studentTestForm.lastName}');
			
			
			if(studentNameTaken == 'yes' && testNameTaken == '${studentTestForm.firstName}${studentTestForm.lastName}-${studentTestForm.testName}'  && tc != null){
			timeCounter=tc;
			}
			else{
				timeCounter = 0;
			}
			
			if(tc == null){
				timeCounter= 0;
			}
			
		function setTimeOnLoad(){
		timeProcess();
		}	
		
		function timeProcess(){
		timeCounter = parseInt(timeCounter) + 1;
		var end = new Date();
		var hours =  (${studentTestForm.duration}/60) % 60;
		var minutes = (${studentTestForm.duration}) % 60;
		var seconds = (${studentTestForm.duration} * 60) % 60;
		
		end.setMinutes(minutes);
		end.setHours(hours);
		end.setSeconds(seconds);
		
		var start = new Date();
		start.setMinutes((timeCounter/60) % 60);
		start.setHours((timeCounter/(60*60)) % 60);
		start.setSeconds(timeCounter % 60);
		
		var t = Date.parse(end) - Date.parse(start);
		seconds = Math.floor( (t/1000) % 60 );
		minutes = Math.floor( (t/1000/60) % 60 );
		hours = Math.floor( (t/(1000*60*60)) % 24 );
		
		 if (hours   < 10) {hours   = "0"+hours;}
		 
		  if (minutes < 10) {minutes = "0"+minutes;}
		  
		   if (seconds < 10) {seconds = "0"+seconds;}
		
		//document.getElementById("examTimer").innerHTML = hours+":"+minutes+":"+seconds;
		document.getElementById("hours").innerHTML = hours;
		document.getElementById("min").innerHTML = minutes;
		document.getElementById("sec").innerHTML = seconds;
			
		}
		 	
		var submitTest = 'false';
		
		function examTimer(){
			if(submitTest == 'true'){
				return;
			}
			timeProcess();
		
			if((${studentTestForm.duration} * 60) - timeCounter <= 3 ){
				notify('Info', 'Test Time exceeding shortly! Your test will be auto submitted');
			}		
				
			if( timeCounter >= (${studentTestForm.duration} * 60)  ){
			submitTest();
			}
		}
		
		function takeScreenShot(){
			if(active == 'false'){
				notify('Info', 'The exam window looks to be in the background. This is a non-compliance. We are recording it in our system. If number of non-'+

	'compliances exceed a threshold, the Test Admin may mark this attempt as void. Please beware! ');
				var datasend="user=${studentTestForm.emailId}\ntestName=${studentTestForm.testName}\ncompanyId=${studentTestForm.companyId}";
				$.ajax({
				    type: "POST",
				    url: "registerNonCompliance",
				    data: { 
					data:datasend
				    }
				}).done(function(fileName) {
					alert("done");

				}); 
			}
			else if(active == 'true'){
				this.window.focus();
				 html2canvas(document.querySelector("#screenShotId"), {
				logging: true,
				allowTaint: true
			    }).then(function(canvas) {
				var dataImage = canvas.toDataURL("image/png");
				$.ajax({
				    type: "POST",
				    url: "uploadScreenSnapShot?testName=${studentTestForm.testName}",
				    data: { 
					data:dataImage
				    }
				}).done(function(fileName) {
					alert("done");

				}); 
			    });
			}
		}
		
		function activeScreen(){
		active = 'true';
		//alert(' active ' +active);
		}
		
		function passiveScreen(){
		active = 'false';
		//alert(' passicve ' +active);
		}
		window.addEventListener('focus', activeScreen);
		window.addEventListener('blur', passiveScreen);

		
		var myVar = setInterval(examTimer, 1000);
		var myVar2 = setInterval(takeScreenShot, 45000);
		
		</script>

<style>
body * {
	font-family: monospace !important
}
</style>
<style>
.header .userheader {
	float: right;
}

.header .userheader .userinfo {
	float: right;
	text-align: right;
}

.header .userheader .userinfo h4 {
	float: left;
	color: #4A4A4A;
	font-size: 16px;
	font-weight: 400;
	line-height: 19px;
	text-align: right;
	padding-right: 0px;
	margin-top:10px;
	margin-bottom: 0;
}

.header .userheader .userinfo span {
	color: #B2B2B2;
	float: right;
	width: 100%;
}

.logo img {
	width: 165px;
}
.durationinfo {
	font-size: 20px;
	background: black;
    color: beige;
    border-radius: 0.5rem;
    padding-left: 5px;
    padding-right: 5px;
}
.queno {
	background-color: #03a9f4;
	padding: 5px;
	color: #fff;
	float: left;
	width: 40px;
	margin-right: 20px;
	height: 40px;
	text-align: center;
	font-weight: bold;
	border-radius: 5px;
	font-size: 30px;
}

.hero-intro p {
	font-size: 22px;
	float: left;
	width: 92%;
}

.input-field {
	margin-top: 20px;
}

.fixht{
height:248px;
overflow:auto;
overflow-x:hidden;
}

@keyframes glowactive_unans {
  0% { box-shadow: 0 0 -10px #ff0000; }
  40% { box-shadow: 0 0 20px #ff0000; }
  60% { box-shadow: 0 0 20px #ff0000; }
  100% { box-shadow: 0 0 -10px #ff0000; }
}
.activeq_anim_unans {
	animation: glowactive_unans 500ms infinite;
}

@keyframes glowactive_ans {
  0% { box-shadow: 0 0 -10px #006622; }
  40% { box-shadow: 0 0 20px #006622; }
  60% { box-shadow: 0 0 20px #006622; }
  100% { box-shadow: 0 0 -10px #006622; }
}
.activeq_anim_ans {
	animation: glowactive_ans 500ms infinite;
}

@keyframes glowactive_review {
  0% { box-shadow: 0 0 -10px #ffff1a; }
  40% { box-shadow: 0 0 20px #ffff1a; }
  60% { box-shadow: 0 0 20px #ffff1a; }
  100% { box-shadow: 0 0 -10px #ffff1a; }
}
.activeq_anim_review {
	animation: glowactive_review 500ms infinite;
}


/* .next {
  position: fixed;
  top: 75%;
  float: right;
  margin-left: 1500px; 
}

#back{
 position: fixed;
  top: 75%;
} */
.border-tab .nav-tabs>li>div{
padding: 8px 30px;
}
.border-tab.primary-nav .nav-tabs>li.active>div.navhead, .border-tab.primary-nav .nav-tabs.nav-justified>li.active>a{
	background-color: #5dcb4c;
	color: white;
}
.border-tab.primary-nav .nav-tabs>li>div.row, .border-tab.primary-nav .nav-tabs>li>div.navhead{
	margin-bottom:0px;
}
.border-tab.primary-nav .nav-tabs>li>div.navhead, .border-tab.primary-nav .nav-tabs.nav-justified>li.active>a{
	background-color: #03a9f4;
	border:3px solid transparent;
}
.border-tab.primary-nav .nav-tabs>li>div.navhead>div>a, .border-tab.primary-nav .nav-tabs.nav-justified>li.active>a{
	color: white;
}

.leftside textarea {
	height: 200px;
	border: 1px solid #333;
}

.description {
	border: 1px solid #03a9f4;
	padding: 10px;
}
</style>
</head>
<body id="top" class="has-header-search" onload="setTimeOnLoad()">
	<form:form id="testForm" name="testForm" method="POST"
		modelAttribute="currentQuestion">
		<!--header start-->
		<header id="header" class="header tt-nav nav-border-bottom"
			style="height: auto;">
			<div class="header-sticky light-header ">
				<div class="container-fluid">
					<div class="col-md-12" style="margin-top:15px;">
						  <div class="col-md-2"  style="margin-top:15px;">
							  <div class="logo">
								<a href="javascript:void(0);"><img class="retina"
									src="/AssesmentApp/resources/images/Logo.png"></a>
							</div>
							
						</div>
						<div class="col-md-2" style="margin-top:15px;">
					<div class="promo-info" style="padding-right:0px;padding-top:18px" >
						<!-- <img
							src="<%=request.getContextPath()%>/resources/assets/images/testimage.png"
							style="float: left; padding-right: 15px;"> -->
						<h2 class="white-text text-bold text-uppercase no-margin"
							style="color: #000 !important;">${studentTestForm.testName}</h2>
						<!-- <span class="white-text text-uppercase"
							style="color: #000 !important;">Assessment</span> -->									
					</div>
					</div>
					
					
					
					<div class="col-md-3">
					<div class="promo-btn">
						<div class="durationinfo">
							<span class="time" id="timer" style="vertical-align: ;"><i id="hours"></i>:<i
									id="min"></i>:<i id="sec"></i></span>
									
						</div>
				</div>
							<video autoplay="true" id="videoElement" style="width:85px; height:85px; "></video>
				</div>
				
				<div class="col-md-5">
							<div class="userheader mt-15">
								<div class="userinfo">
									<h4>
										Welcome ${studentTestForm.userName}
									</h4>
									<img
										src="<%=request.getContextPath()%>/resources/images/userimg.png">
								</div>
							</div>
						</div>
					
						
					</div>
				</div>
			</div> 
		</header>
		<!--header end-->


		<div class="promo-box gray-bg border-box" style="padding:0">
			<!--  <div class="container">
				<div class="col-md-12">
				<div class="col-md-8">
					<div class="promo-info">
						<img
							src="<%=request.getContextPath()%>/resources/assets/images/testimage.png"
							style="float: left; padding-right: 15px;">
						<h2 class="white-text text-bold text-uppercase no-margin"
							style="color: #000 !important;">${studentTestForm.testName}</h2>
						<span class="white-text text-uppercase"
							style="color: #000 !important;">Assessment</span>
									
					</div>
		
					
					</div>
				<div class="col-md-4" style="padding-left: 345px">
					<div class="promo-btn">
						<div class="durationinfo" style="font-size: 20px;">
							<span class="time" id="timer" style="vertical-align: ;"><i id="hours"></i><sub>H</sub><i
									id="min"></i><sub> Min</sub><i id="sec"></i> <sub> Sec</sub></span>
									
						</div>
				</div>
							<video autoplay="true" id="videoElement" style="width:85px; height:85px; "></video>
				</div>
				</div>
			</div>-->

<div class="row">
<div class="col-md-3">
<div class="sec_nav">
			<div class="border-tab primary-nav mb-50">
				<ul class="nav nav-tabs nav-stacked hidden-xs">
					<!-- <li class="active"><a href="javascript:void(0);" id="section1"
					class="waves-effect waves-light">Basic</a></li>
				<li class=""><a href="javascript:void(0);" id="section2"
					class="waves-effect waves-light">Spring</a></li>
				<li class=""><a href="javascript:void(0);" id="section3"
					class="waves-effect waves-light">Coding</a></li>
				<li class=""><a href="javascript:void(0);" id="section4"
					class="waves-effect waves-light">Hibernate</a></li> -->
					<c:forEach var="sectionInstance" varStatus="status" items="${sectionInstanceDtos}">
						<li ${sectionInstance.style}>
							
							<div class="row navhead">
								<div class="col-md-10" onclick="javascript:changeSection('${sectionInstance.section.sectionName}');">
									<a class="sec_name" style="margin-left:0">${sectionInstance.section.sectionName}</a>
								</div>
								<div class="col-md-2">
									<a class="expand" data-val="${status.index}">+</a>
								</div>
							</div>
							
							<div class="row li_anuan" id="${status.index}">
							</div>
									
						</li>
						
						
					</c:forEach>
				</ul>
			</div>
</div>
</div>
<div class="col-md-9">
<div class="section">
				<div class="container">
					<div class="col-md-12">
						<div class="queanscenter" id="section1_content">
							<div class="row">
								<div class="col-md-4">
									<!--  <div class="progress-section">
										<span class="progress-title">${noAnswered} of
											${totalQuestions} answered</span> <label></label>
										<div class="progress">
											<div
												class="progress-bar brand-bg progress-dot six-sec-ease-in-out"
												role="progressbar" aria-valuenow="${percentage}%"
												aria-valuemin="0" aria-valuemax="100"
												style="width: ${percentage}%;">
												<span style="color: #0d0d0d">${percentage}%</span>
											</div>
										</div>
									</div>-->
								</div>
							</div>

							<c:choose>
								<c:when
									test="${currentQuestion.questionMapperInstance.questionMapper.question.type=='MCQ' || currentQuestion.questionMapperInstance.questionMapper.question.type ==null}">



									<section>
										<div class="container">
											<div class="row equal-height-row">
												<div class="col-md-12 mt-20">
													<div class="valign-wrapper equal-height-column">
														<div class="hero-intro valign-cell">
															<div class="queno">
																<span>${currentQuestion.position}</span>
															</div>
															<h3 class="qname">${currentQuestion.questionMapperInstance.questionMapper.question.questionText}</h3>
															&nbsp; &nbsp; &nbsp;
															<c:if
																test="${currentQuestion.questionMapperInstance.questionMapper.question.imageUrl != null && currentQuestion.questionMapperInstance.questionMapper.question.imageUrl.trim().length() > 0}">
																<img
																	src="${currentQuestion.questionMapperInstance.questionMapper.question.imageUrl}"
																	height="400" width="500">
															</c:if>

															<c:if
																test="${currentQuestion.questionMapperInstance.questionMapper.question.audioURL != null && currentQuestion.questionMapperInstance.questionMapper.question.audioURL.trim().length() > 0}">
							   &nbsp; &nbsp; &nbsp;  <audio controls
																	src="${currentQuestion.questionMapperInstance.questionMapper.question.audioURL}">
																	Your browser does not support the
																	<code>audio</code>
																	element.
																</audio>

															</c:if>

															<c:if
																test="${currentQuestion.questionMapperInstance.questionMapper.question.videoURL != null && currentQuestion.questionMapperInstance.questionMapper.question.videoURL.trim().length() > 0}">
								&nbsp; &nbsp; &nbsp; <video width="400" height="300" controls>
																	<source
																		src="${currentQuestion.questionMapperInstance.questionMapper.question.videoURL}">

																	Your browser does not support the video tag.
																</video>
															</c:if>
														</div>
													</div>
												</div>

											</div>
							<div class="row">
										<div class="col-md-12 mt-20">
						<div class="col-md-12 hero-thumb equal-height-column">
													<div class="col-md-12 fixht">
														<ul>
															<li
																style="${currentQuestion.questionMapperInstance.questionMapper.question.choice1 == null || 

			currentQuestion.questionMapperInstance.questionMapper.question.choice1.trim().length() == 0? 'display: none;':'clear:left; font-size: 14px;'}">
																<%-- 																																<form:checkbox path="one" label="" /> --%>
																<!-- 																																																																																																<input id="one1_1" name="one" type="checkbox" value="true"> -->
																<%-- 																																<label><form:checkbox path="one" label=""/></label> --%>
																<label for="one1_1"
																style="font-size: 15px; font-weight: normal; color: #0d0d0d">
																	<form:checkbox path="one" label="" id="one1_1" />
																	${currentQuestion.questionMapperInstance.questionMapper.question.choice1}
															</label> <input type="hidden" name="_one_1" value="on">
															</li>
															<li
																style="${currentQuestion.questionMapperInstance.questionMapper.question.choice2 == null || 

			currentQuestion.questionMapperInstance.questionMapper.question.choice2.trim().length() == 0? 'display: none;':'clear:left;font-size: 14px;'}">
																<%-- 																																<form:checkbox path="two" />  --%>
																<!-- 																																																																<input id="two1_1" name="two" type="checkbox" value="true"> -->
																<label for="two1_1"
																style="font-size: 15px; font-weight: normal; color: #0d0d0d">
																	<form:checkbox path="two" label="" id="two1_1" />
																	${currentQuestion.questionMapperInstance.questionMapper.question.choice2}
															</label>
															</li>
															<li
																style="${currentQuestion.questionMapperInstance.questionMapper.question.choice3 == null || 

			currentQuestion.questionMapperInstance.questionMapper.question.choice3.trim().length() == 0? 'display: none;':'clear:left;font-size: 14px;'}">
																<!-- 																																																																<input id="three1_1" name="three" type="checkbox" value="true"> -->
																<%-- 																																																																<form:checkbox path="three" /> --%>
																<label for="three1_1"
																style="font-size: 15px; font-weight: normal; color: #0d0d0d">
																	<form:checkbox path="three" label="" id="three1_1" />
																	${currentQuestion.questionMapperInstance.questionMapper.question.choice3}
															</label>
															</li>

															<li
																style="${currentQuestion.questionMapperInstance.questionMapper.question.choice4 == null || 

			currentQuestion.questionMapperInstance.questionMapper.question.choice4.trim().length() == 0? 'display: none;':'clear:left;font-size: 14px;'}">
																<%-- 																																<form:checkbox path="four" /> --%>
																<!-- 																																																																<input id="four1_1" name="four" type="checkbox" value="true"> -->
																<label for="four1_1"
																style="font-size: 15px; font-weight: normal; color: #0d0d0d">
																	<form:checkbox path="four" label="" id="four1_1" />
																	${currentQuestion.questionMapperInstance.questionMapper.question.choice4}
															</label>
															</li>
															<li
																style="${currentQuestion.questionMapperInstance.questionMapper.question.choice5 == null || 

			currentQuestion.questionMapperInstance.questionMapper.question.choice5.trim().length() == 0? 'display: none;':'clear:left;font-size: 14px;'}">
																<label for="five1_1"
																style="font-size: 15px; font-weight: normal; color: #0d0d0d"><form:checkbox
																		path="five" label="" id="five1_1" />
																	${currentQuestion.questionMapperInstance.questionMapper.question.choice5}</label>
															</li>
															<li
																style="${currentQuestion.questionMapperInstance.questionMapper.question.choice6 == null || 

			currentQuestion.questionMapperInstance.questionMapper.question.choice6.trim().length() == 0? 'display: none;':'clear:left;font-size: 14px;'}">
																<label for="six1_1"
																style="font-size: 15px; font-weight: normal; color: #0d0d0d">
																	<form:checkbox path="six" label=" " id="six1_1" />
																	${currentQuestion.questionMapperInstance.questionMapper.question.choice6}
															</label>
															</li>
														</ul>
													</div>
												</div>
											</div>
											</div>
										</div>
									</section>
								</c:when>
								<c:when
									test="${currentQuestion.questionMapperInstance.questionMapper.question.type=='CODING'}">


									<!--Code for coding Q -->
									<div class="col-md-12">
										<div class="col-md-7 leftside">
											<b>${currentQuestion.questionMapperInstance.questionMapper.question.qualifier1}
												${currentQuestion.questionMapperInstance.questionMapper.question.qualifier2}
												${currentQuestion.questionMapperInstance.questionMapper.question.qualifier3}
												${currentQuestion.questionMapperInstance.questionMapper.question.qualifier4}
												${currentQuestion.questionMapperInstance.questionMapper.question.qualifier5}</b>
											<a class="runcode" href="javascript:runCodeSystemTestCase();">Run
												System Test Case </a> <a class="runcode"
												href="javascript:runCode();">Run Code</a> <label>Code</label>

											<%-- 																						<form:textarea id="editor" path="code" wrap="physical" /> --%>
											<%-- 																						<form:hidden path="code" id="codeOfEditor" wrap="physical" /> --%>
											<%-- 																						<form:hidden path="code" id="codeOfEditor" wrap="physical" /> --%>
											<form:textarea id="editor" path="code" wrap="physical" />
											<input type="hidden" id="codeOfEditor" name="code"
												value="3487" /> <label>Input</label>
											<form:textarea path="input" style="height:30px" id="input"
												placeholder="Enter input" />

											<label>Output</label>
											<form:textarea style="overflow-y: scroll" path="output"
												id="output" disabled="true" />
										</div>
										<div class="col-md-5 rightside">
											<div class="description">
												<label>DESCRIPTION</label>
												<p>${currentQuestion.questionMapperInstance.questionMapper.question.questionText}</p>
												<code> Update code in Code Editor </code>
												<p>${currentQuestion.questionMapperInstance.questionMapper.question.instructionsIfAny}</p>
												<h4>Constraint</h4>
												<p>${currentQuestion.questionMapperInstance.questionMapper.question.constrnt}</p>

												<h4>Input</h4>
												<code>
													${currentQuestion.questionMapperInstance.questionMapper.question.hiddenInputPositive}
												</code>

												<h4>Output</h4>
												<code>
													${currentQuestion.questionMapperInstance.questionMapper.question.hiddenOutputPositive}
												</code>

											</div>
										</div>
									</div>
								</c:when>
								<c:when
									test="${currentQuestion.questionMapperInstance.questionMapper.question.type=='FULL_STACK_JAVA'}">



									<div class="queanscenter" id="section3_content">

										<div class="col-md-12">
											<div class="col-md-7 leftside">
												<b>${currentQuestion.questionMapperInstance.questionMapper.question.qualifier1}
													${currentQuestion.questionMapperInstance.questionMapper.question.qualifier2}
													${currentQuestion.questionMapperInstance.questionMapper.question.qualifier3}
													${currentQuestion.questionMapperInstance.questionMapper.question.qualifier4}
													${currentQuestion.questionMapperInstance.questionMapper.question.qualifier5}</b>
												&nbsp; &nbsp; &nbsp;
												<c:if
													test="${currentQuestion.questionMapperInstance.questionMapper.question.imageUrl != null && currentQuestion.questionMapperInstance.questionMapper.question.imageUrl.trim().length() > 0}">
													<img
														src="${currentQuestion.questionMapperInstance.questionMapper.question.imageUrl}"
														height="400" width="500">
												</c:if>

												<c:if
													test="${currentQuestion.questionMapperInstance.questionMapper.question.audioURL != null && currentQuestion.questionMapperInstance.questionMapper.question.audioURL.trim().length() > 0}">
							   &nbsp; &nbsp; &nbsp;  <audio controls
														src="${currentQuestion.questionMapperInstance.questionMapper.question.audioURL}">
														Your browser does not support the
														<code>audio</code>
														element.
													</audio>

												</c:if>

												<c:if
													test="${currentQuestion.questionMapperInstance.questionMapper.question.videoURL != null && currentQuestion.questionMapperInstance.questionMapper.question.videoURL.trim().length() > 0}">
								&nbsp; &nbsp; &nbsp; <video width="400" height="300" controls>
														<source
															src="${currentQuestion.questionMapperInstance.questionMapper.question.videoURL}">

														Your browser does not support the video tag.
													</video>
												</c:if>

												<br /> <label>Click to Open</label> <a
													href="javascript:showAndNavigate();">Open Project
													Documentation Template</a> <br /> <label>Click to Open</label>
												<a
													href="${currentQuestion.questionMapperInstance.workspaceUrl}"
													target="_blank">Open Code IDE in new Window</a> <br /> <label>Upload
													Project Documentation</label> <a class="addimage" href="#">Upload
													Documentation</a> <input type="file" name="addimage"
													id="addimage" style="display: none;"> <label
													class="queimage"></label> <br /> <a class="runcode"
													href="javascript:confirmWorkspace('${currentQuestion.questionMapperInstance.id}');">Submit
													my Workspace </a>
											</div>
											<div class="col-md-5 rightside">
												<div class="description">
													<label>DESCRIPTION</label>
													<p>${currentQuestion.questionMapperInstance.questionMapper.question.questionText}</p>
													<code> Click on 'Open Code IDE..' to start coding. </code>
													<p>${currentQuestion.questionMapperInstance.questionMapper.question.instructionsIfAny}</p>
													<h4>Constraint</h4>
													<p>${currentQuestion.questionMapperInstance.questionMapper.question.constrnt}</p>



												</div>
											</div>
										</div>

									</div>


								</c:when>
							</c:choose>

						</div>


						<div class="queanscenter" id="section2_content"
							style="display: none;">
							<div class="row">
								<div class="col-md-4">
									<div class="progress-section">
										<span class="progress-title">${noAnswered} of
											${totalQuestions} answered</span>
										<div class="progress">
											<div
												class="progress-bar brand-bg progress-dot six-sec-ease-in-out"
												role="progressbar" aria-valuenow="65" aria-valuemin="0"
												aria-valuemax="100" style="width: ${percentage}%;">
												<span>${percentage}%</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<section class="padding-bottom-50">
								<div class="container">
									<div class="row equal-height-row">
										<div class="col-md-8 mt-50">
											<div class="valign-wrapper equal-height-column">
												<div class="hero-intro valign-cell">
													<span class="queno">1</span>
													<p>Datastrutures - The searching technique that takes O
														(1) time to find a data is ?</p>
												</div>
											</div>
										</div>
										<div class="col-md-4 hero-thumb equal-height-column">
											<div class="col-md-12">
												<div class="input-field">
													<input id="one1_2" name="one_2" type="checkbox"
														value="true"> <label for="one1_2"
														style="font-size: 15px; font-weight: normal;">Ideally
														Linear Search</label> <input type="hidden" name="_one_2"
														value="on">
												</div>
												<div class="input-field">
													<input id="two1_2" name="two_2" type="checkbox"
														value="true"> <label for="two1_2"
														style="font-size: 15px; font-weight: normal;">Ideally
														Binary Search</label> <input type="hidden" name="_two_2"
														value="on">
												</div>
												<div class="input-field">
													<input id="three1_2" name="three_2" type="checkbox"
														value="true"> <label for="three1_2"
														style="font-size: 15px; font-weight: normal;">Ideally
														Hashing</label> <input type="hidden" name="_three_2" value="on">
												</div>
												<div class="input-field">
													<input id="four1_2" name="four_2" type="checkbox"
														value="true"> <label for="four1_2"
														style="font-size: 15px; font-weight: normal;">Tree
														Search</label> <input type="hidden" name="_four_2" value="on">
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>

						<div class="queanscenter" id="section3_content"
							style="display: none;">
							<div class="col-md-12">
								<div class="col-md-7 leftside">
									<div class="col-md-4" style="padding-left: 0;">
										<h3>
											<b>Coding_Java</b>
										</h3>
									</div>
									<div class="col-md-8 mb-50">
										<a class="runcode waves-effect waves-light btn submit-button"
											href="javascript:runCode();">Run Code</a> <a
											class="runcode waves-effect waves-light btn submit-button"
											href="javascript:runCodeSystemTestCase();">Run System
											Test Case </a>
									</div>

									<h3>
										<b>Code</b>
									</h3>
									<textarea></textarea>

									<h3>
										<b>Input</b>
									</h3>
									<textarea></textarea>

									<h3>
										<b>Output</b>
									</h3>
									<textarea></textarea>
								</div>
								<div class="col-md-5 rightside">
									<div class="description">
										<h3>DESCRIPTION</h3>
										<p>Jack's school teacher gave him an assignment to write a
											java program which calculates the area of a convex
											quadrilateral is described by the co-ordinates of four
											2-dimensional points:</p>
										<code> class Point: data field: X: integer variable
											denoting the x co-ordinate of </code>
										<p>Your task is to create a class named Quadrilateral
											which should be a subclass of triangle. The description is
											given below.</p>
										<h4>Constraint</h4>
										<p>Your task is to create a class named Quadrilateral
											which should be a subclass of triangle. The description is
											given below.</p>

										<h4>Input</h4>
										<code> Your task is to create a class named
											Quadrilateral which should be a subclass of triangle. The
											description is given. </code>

										<h4>Output</h4>
										<code> Your task is to create a class named
											Quadrilateral which should be a subclass of triangle. The
											description is given. </code>
										<h4>Execution Time Limit</h4>
										<p>10 Seconds</p>
									</div>
								</div>
							</div>
						</div>


						<div class="queanscenter" id="section4_content"
							style="display: none;">
							<div class="row">
								<div class="col-md-4">
									<div class="progress-section">
										<span class="progress-title">0 of 42 Answered</span>
										<div class="progress">
											<div
												class="progress-bar brand-bg progress-dot six-sec-ease-in-out"
												role="progressbar" aria-valuenow="65" aria-valuemin="0"
												aria-valuemax="100" style="width: 90%;">
												<span>65%</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<section class="padding-bottom-50">
								<div class="container">
									<div class="row equal-height-row">
										<div class="col-md-8 mt-50">
											<div class="valign-wrapper equal-height-column">
												<div class="hero-intro valign-cell">
													<span class="queno">1</span>
													<p>Datastrutures - The searching technique that takes O
														(1) time to find a data is ?</p>
												</div>
											</div>
										</div>
										<div class="col-md-4 hero-thumb equal-height-column">
											<div class="col-md-12">
												<div class="input-field">
													<input id="one1_3" name="one_3" type="checkbox"
														value="true"> <label for="one1_3"
														style="font-size: 15px; font-weight: normal;">Ideally
														Linear Search</label> <input type="hidden" name="_one_3"
														value="on">
												</div>
												<div class="input-field">
													<input id="two1_3" name="two_3" type="checkbox"
														value="true"> <label for="two1_3"
														style="font-size: 15px; font-weight: normal;">Ideally
														Binary Search</label> <input type="hidden" name="_two_3"
														value="on">
												</div>
												<div class="input-field">
													<input id="three1_3" name="three_3" type="checkbox"
														value="true"> <label for="three1_3"
														style="font-size: 15px; font-weight: normal;">Ideally
														Hashing</label> <input type="hidden" name="_three_3" value="on">
												</div>
												<div class="input-field">
													<input id="four1_3" name="four_3" type="checkbox"
														value="true"> <label for="four1_3"
														style="font-size: 15px; font-weight: normal;">Tree
														Search</label> <input type="hidden" name="_four_3" value="on">
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
</div>

						<!-- <a class="back waves-effect waves-light btn submit-button mt-30" -->
						<!-- 																										href="javascript:prev();">Back</a> <a -->
						<!-- 																										class="next waves-effect waves-light btn submit-button mt-30" -->
						<!-- 																										href="javascript:next();" id="next">Next</a> -->




					<div class="btns_psubn">
						<c:choose>
							<c:when test="${currentSection.first==true}">
							</c:when>
							<c:otherwise>
								<a class="back waves-effect waves-light btn submit-button mt-30"
									href="javascript:prev();" id="back">Back</a>
								<!-- 																<i class="fa fa-long-arrow-left"></i> -->
							</c:otherwise>
						</c:choose>
						<a class="next subm waves-effect waves-light btn btn-success mt-30"
									id="btn_subm">SUBMIT TEST</a>
				  	<a class="next subm waves-effect waves-light btn btn-success mt-30"
									id="btn_review" name="Mark">Mark for Review</a>
						 <c:choose>
							<c:when test="${currentSection.last==true}">
								
							</c:when>
							<c:otherwise>
								
								<a class="next waves-effect waves-light btn submit-button mt-30"
									href="javascript:next();" id="next">Next</a>
								<!-- 																<i class="fa fa-long-arrow-right"></i> -->
							</c:otherwise>
						</c:choose>
						
					</div>	
						
					</div>
				</div>
				
			</div>
</div>


</div>
	</form:form>
	
	
	<div id="modalSub" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title"><b>Test Submission</b></h4>
				</div>
				<div id="modalSub_body" class="modal-body">
				</div>
				<div class="modal-footer">
        			<button type="button" class="btn" style="background-color: green;border-radius: .25rem;" onclick="submitTest()">Submit</button>
        			<button type="button" class="btn" data-dismiss="modal" style="background-color: red;border-radius: .25rem;">Cancel</button>
				</div>
			</div>
		</div>
	</div>
	
	
<footer class="footer footer-four" style="bottom:0;position:fixed;left:0;width:100%;">
		<div class="secondary-footer brand-bg darken-2 text-center" style="">
			<div class="container">
				<p style="margin-bottom: 0;">Copyrigh Â© 2019 e-assess. All
					Rights Reserved â€“ Privacy Policy For E-Assess Inc</p>
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
	<spring:url value="/resources/assets/scripts/custom.js" var="mainJs16" />
	<script src="${mainJs16}"></script>
	<spring:url value="/resources/assets/scripts/pnotify.custom.min.js" var="mainJs17" />
	<script src="${mainJs17}"></script>
	<spring:url value="/resources/scripts/src-min-noconflict/ace.js" var="mainJs18" />
	<script src="${mainJs18}"></script>
	<spring:url value="/resources/scripts/html2canvas.js" var="mainJs19" />
	<script src="${mainJs19}"></script>

	<script>
	    var editor = ace.edit("editor");
	    editor.setTheme("ace/theme/solarized_light");
	   //editor.setTheme("ace/theme/theme-github");
	   
	   var language = '${currentQuestion.questionMapperInstance.questionMapper.question.language.language}';
		if(language == 'JAVA'){
			editor.session.setMode("ace/mode/java");
		}
		else if(language == 'C'){
			editor.session.setMode("ace/mode/c_cpp");
		}
		else if(language == 'C++'){
			editor.session.setMode("ace/mode/c_cpp");
		}
		else if(language == 'C#'){
			editor.session.setMode("ace/mode/csharp");
		}
		else if(language == 'PYTHON'){
			editor.session.setMode("ace/mode/python");
		}
	    
		
		editor.setValue('${currentQuestion.code}');
	    editor.setOptions({
	   enableBasicAutocompletion: true, // the editor completes the statement when you hit Ctrl + Space
	   enableLiveAutocompletion: true, // the editor completes the statement while you are typing
	   showPrintMargin: false, // hides the vertical limiting strip
	   maxLines: Infinity,
	   fontSize: "100%" // ensures that the editor fits in the environment
	});

	</script>




	<script>
	$(function () {
                $(".addimage").on('click', function (e) {
                    e.preventDefault();
                    $("#addimage").trigger('click');
                });
               
            });
	
	 $('#addimage').change(function () {
                var file = $('#addimage')[0].files[0].name;
                $('.queimage').text('Document to upload: '+file);
				uploadProjectDocs();
            });

	function changeSection(sectionName){
		//window.location = 'changeSection?sectionName='+sectionName+"&timeCounter="+timeCounter;
		//localStorage.setItem('timeCounter', timeCounter);
		var tp = '${currentQuestion.questionMapperInstance.questionMapper.question.type}';
			if(tp == 'CODING'){
				confirm(sectionName);
			}
			else{
				window.location = 'changeSection?sectionName='+sectionName+"&timeCounter="+timeCounter;
				localStorage.setItem('timeCounter', timeCounter);
			}
			
			storeTimeLocal();
	}
	
	
	function get_center_pos(width, top){
    // top is empty when creating a new notification and is set when recentering
		if (!top){
			top = 30;
			// this part is needed to avoid notification stacking on top of each other
			$('.ui-pnotify').each(function() { top += $(this).outerHeight() + 20; });
		}

		return {"top": top, "left": ($(window).width() / 2) - (width / 2)}
	}
	
	function confirm(sectionName) {
           (new PNotify({
		    title: 'Confirmation Needed',
		    text: 'For a coding Question if you change a section you may loose your changes. Either copy your code somewhere and then change section or use Next/Back to navigate',
		    icon: 'glyphicon glyphicon-question-sign',
		    hide: false,
		    confirm: {
			confirm: true
		    },
		    buttons: {
			closer: false,
			sticker: false
		    },
		    history: {
			history: false
		    },
			 before_open: function (PNotify) {
            PNotify.get().css(get_center_pos(PNotify.get().width()));
			}
		})).get().on('pnotify.confirm', function() {
		   window.location = 'changeSection?sectionName='+sectionName+"&timeCounter="+timeCounter;
			localStorage.setItem('timeCounter', timeCounter);
		}).on('pnotify.cancel', function() {
		   
		});
    }
	
	function runCode(){
	//editor
	//var editor = ace.edit("editor");
	var code = editor.getValue();
	var input = document.getElementById('input').value;
	var lang = '8';
	var language = '${currentQuestion.questionMapperInstance.questionMapper.question.language.language}';
		if(language == 'JAVA'){
			lang = '8';
		}
		else if(language == 'C'){
			lang = '7';
		}
		else if(language == 'CPLUSPLUS'){
			lang = '7';
		}
		else if(language == 'CHASH'){
			lang = '10';
		}
		else if(language == 'DotNet'){
			lang = '10';
		}
		else if(language == 'PYTHON'){
			lang = '0';
		}
	
	var url = 'compile';
	var data = {}; 
	data.language = lang;
	data.code = code;
	data.stdin = input;
	//var json = "{language:"+lang+", code:"+code+", stdin:"+input+"}";
	document.getElementById('output').value = 'Executing your code...';	
	document.getElementById("output").focus();
	document.getElementById("output").scrollIntoView();
	dta = JSON.stringify(data);
	//dta = dta.slice(1,-1);
	//dat = "'"+dta+"'";
		$.ajax({
				type : 'POST',
				url : url,
				contentType: "application/json; charset=utf-8",
				data: dta,
				success : function(data) {
					
					document.getElementById('output').value = data;
					//document.getElementById('output').value = 'eee';
					console.log("SUCCESS: ", data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					
				}
			});
	}
	
	function runCodeSystemTestCase(){
		//var editor = ace.edit("editor");
	var code = editor.getValue();
	var input = '${currentQuestion.questionMapperInstance.questionMapper.question.hiddenInputPositive}';
	document.getElementById('input').value = input;
	var lang = '8';
	var language = '${currentQuestion.questionMapperInstance.questionMapper.question.language.language}';
		if(language == 'JAVA'){
			lang = '8';
		}
		else if(language == 'C'){
			lang = '7';
		}
		else if(language == 'CPLUSPLUS'){
			lang = '7';
		}
		else if(language == 'CHASH'){
			lang = '10';
		}
		else if(language == 'DotNet'){
			lang = '10';
		}
		else if(language == 'PYTHON'){
			lang = '0';
		}
	
	var url = 'compileAndRunSystemTest';
	
	var data = {}; 
	data.language = lang;
	data.code = code;
	data.stdin = input;
	document.getElementById('output').value = 'Executing your code...';	
	document.getElementById("output").focus();
	document.getElementById("output").scrollIntoView();
	dta = JSON.stringify(data);
	
		$.ajax({
				type : 'POST',
				url : url,
				contentType: "application/json; charset=utf-8",
				data: dta,
				success : function(data) {
					console.log("SUCCESS: ", data);
					//document.getElementById('output').value = data;
					if(data == '${currentQuestion.questionMapperInstance.questionMapper.question.hiddenOutputPositive}'){
						document.getElementById('output').value = (data + '\n' +'SUCCESS');
					}
					else{
					document.getElementById('output').value = (data + '\n' +'FAILED');
					}
					
				},
				error : function(e) {
					console.log("ERROR: ", e);
					
				}
			});
	}
	
	function next(){
	 $("#next").removeAttr('href');
	var qType = '${currentQuestion.questionMapperInstance.questionMapper.question.type}';
	if(qType == 'CODING'){
		var textarea = document.getElementById('codeOfEditor');
 		edt = editor.getSession().getValue();
		textarea.value = edt;
	}
 
//edt.value = editor.getSession().getValue();
	var linktext=document.getElementById('next').text;
		if(linktext == 'Finish Test'){
		submitTest();
		}
		else{
		document.testForm.action = "nextQuestion?questionId=${currentQuestion.questionMapperInstance.questionMapper.id}&timeCounter="+timeCounter;
		storeTimeLocal();
	 document.testForm.submit();
		}
	}
	
	function prev(){
	$("#back").removeAttr('href');
	var qType = '${currentQuestion.questionMapperInstance.questionMapper.question.type}';
	if(qType == 'CODING'){
		var textarea = document.getElementById('codeOfEditor');
 		edt = editor.getSession().getValue();
		textarea.value = edt;
	}
	
	document.testForm.action = "prevQuestion?questionId=${currentQuestion.questionMapperInstance.questionMapper.id}&timeCounter="+timeCounter;
	storeTimeLocal();
	document.testForm.submit();
	}
	
	function submitTest(){
	var qType = '${currentQuestion.questionMapperInstance.questionMapper.question.type}';
	if(qType == 'CODING'){
		var textarea = document.getElementById('codeOfEditor');
 		edt = editor.getSession().getValue();
		textarea.value = edt;
	}
	//var textarea = document.getElementById('codeOfEditor');
	//edt = editor.getSession().getValue();
	//textarea.value = edt;
	document.testForm.action = "submitTest?questionId=${currentQuestion.questionMapperInstance.questionMapper.id}&timeCounter="+timeCounter;
	resetTimeLocal();
	//modal.style.display = "block";
	//document.getElementById("showAlert").innerHTML = 'You have exceeded your time limit to complete the test. The test will auto submit in a moment...';
	document.testForm.submit();
	submitTest = 'true';
	
	}
	
	function existsInArray( arrtosrch , elem ) {
        var bool=false;
        for(var x=0 ; x<arrtosrch.length ; x++)
        {
            if(arrtosrch[x] == elem)
            {
                bool = true;
                break;
            }
        }
        return bool;
    }	
	
	function submitTestCheckNoAnswer(activesec , activeq){
		$.ajax({
			url:"submDetails?questionMapperId=${currentQuestion.questionMapperInstance.questionMapper.id}",
			type:"GET",
	        data : $('form[name=testForm]').serialize(),
			contentType:"application/json",
			success:function( secwiseDet ){
				
				var i = 0;
				for( var k_sectName in secwiseDet )
				{
					var str="";
					var totQ = 0;
					var ans = new Array();
					var uans = new Array();
					var review = new Array();
					
					for( var k_auans in secwiseDet[k_sectName] )
					{
						totQ = totQ + secwiseDet[k_sectName][k_auans].length;
						
						if(k_auans == "answered")
							ans = secwiseDet[k_sectName][k_auans];
						else if (k_auans =="unanswered")
							uans = secwiseDet[k_sectName][k_auans];
						else
							review = secwiseDet[k_sectName][k_auans];
					}
					for(var x = 1 ; x<=totQ ; x++){
						if( (i == activesec) && (x == activeq) ){
							if( existsInArray( ans, x) ){
								str = str + "<a style='margin-left:7px;' onclick=\"javascript:redirectFun('"+k_sectName+"',"+x+")\" class='greendot activeq_anim_ans'>"+x+"</a>";
							}
							else if( existsInArray( uans, x) ){
								str = str + "<a style='margin-left:7px;' onclick=\"javascript:redirectFun('"+k_sectName+"',"+x+")\" class='reddot activeq_anim_unans'>"+x+"</a>";
								
							}
							else if( existsInArray( review , x) ){
								str = str + "<a style='margin-left:7px;' onclick=\"javascript:redirectFun('"+k_sectName+"',"+x+")\" class='yellowdot activeq_anim_review'>"+x+"</a>";
								$("#btn_review").attr('name','Unmark');
								$('#btn_review').html('Unmark');
							}
						}
						else{
							if( existsInArray( ans, x) ){
								str = str + "<a style='margin-left:7px' onclick=\"javascript:redirectFun('"+k_sectName+"',"+x+")\" class='greendot'>"+x+"</a>";
							}
							else if( existsInArray( uans, x) ){
								str = str + "<a style='margin-left:7px' onclick=\"javascript:redirectFun('"+k_sectName+"',"+x+")\" class='reddot'>"+x+"</a>";
							}
							else if( existsInArray( review , x) ){
								str = str + "<a style='margin-left:7px;' onclick=\"javascript:redirectFun('"+k_sectName+"',"+x+")\" class='yellowdot'>"+x+"</a>";
							}
							
						}
						
					}
					$('#'+i).html(str);
					i++;
				}
				str="";
			}
		});	
	}
	
	function redirectFun(sectionName,question_no){
		//alert(sectionName +":"+ question_no);
		//timeCounter = localStorage.getItem('timeCounter-${studentTestForm.firstName}${studentTestForm.lastName}')
 		document.testForm.action = "redirect?sectionName="+sectionName+"&question_seq="+question_no+"&timeCounter="+timeCounter;
		storeTimeLocal();
		document.testForm.submit();
		
	}
	
	
	
	function storeTimeLocal(){
	localStorage.setItem('${studentTestForm.firstName}${studentTestForm.lastName}', 'yes');
	localStorage.setItem('testName-${studentTestForm.firstName}${studentTestForm.lastName}', '${studentTestForm.firstName}${studentTestForm.lastName}-'+

'${studentTestForm.testName}');
	localStorage.setItem('timeCounter-${studentTestForm.firstName}${studentTestForm.lastName}', timeCounter);
	}
	
	function resetTimeLocal(){
	localStorage.setItem('${studentTestForm.firstName}${studentTestForm.lastName}', 'no');
	localStorage.setItem('testName-${studentTestForm.firstName}${studentTestForm.lastName}', null);
	localStorage.setItem('timeCounter-${studentTestForm.firstName}${studentTestForm.lastName}', 0);
	}
	
	function confirmWorkspace(qMapperInstanceId){
		(new PNotify({
		    title: 'Confirmation Needed',
		    text: 'Are you sure you have uploaded the project documentation. Your reviewer may take a dim view of your efforts if no documentation is found? If yes you can submit the workspace?',
		    icon: 'glyphicon glyphicon-question-sign',
		    hide: false,
		    confirm: {
			confirm: true
		    },
		    buttons: {
			closer: false,
			sticker: false
		    },
		    history: {
			history: false
		    }
		})).get().on('pnotify.confirm', function() {
		    submitFullStackCode(qMapperInstanceId);
		}).on('pnotify.cancel', function() {
		   
		});
	}
	
	function showAndNavigate(){
		(new PNotify({
		    title: 'About this',
		    text: 'Yes to this will download a Project Documentation template that you are expected to update and then upload. Kindly make sure the How-to use part is crystal clear for your reviewer to gro through and start your app. Do you want to proceed now?',
		    icon: 'glyphicon glyphicon-question-sign',
		    hide: false,
		    confirm: {
			confirm: true
		    },
		    buttons: {
			closer: false,
			sticker: false
		    },
		    history: {
			history: false
		    }
		})).get().on('pnotify.confirm', function() {
		    window.open('http://159.65.148.176/file-server/assessment/docs/Project_ReadMe.docx', '_blank');
		}).on('pnotify.cancel', function() {
		   
		});
	}
	
	
	function submitFullStackCode(qMapperInstanceId){
		
		
		
		var url = 'submitFullStackCode?qMapperInstanceId='+qMapperInstanceId;
	
	var data = {}; 
	
	
		$.ajax({
				type : 'GET',
				url : url,
				contentType: "application/json; charset=utf-8",
				data: data,
				success : function(data) {
					console.log("SUCCESS: ", data);
					notify('Information', data);
					
				},
				error : function(e) {
					console.log("ERROR: ", e);
					
				}
			});
	}
	
	function uploadProjectDocs(){
		qMapperInstanceId = '${currentQuestion.questionMapperInstance.id}';
		 var formData = new FormData();
		  var file = $('#addimage')[0].files[0];
		  console.log('1 file is '+file);
		  if(file != null){
			formData.append('addimage', file);
            console.log("form data " + formData);
            $.ajax({
                url : 'uploadProjectDocs?qMapperInstanceId='+qMapperInstanceId,
				enctype: 'multipart/form-data',
                data : formData,
                processData : false,
                contentType : false,
                type : 'POST',
                success : function(data) {
                     notify('Information','Your file has been uploaded. Check this link <br\>-<a href="'+data+'" >Click here</a> ');
                },
                error : function(err) {
                   notify('Information',err);
                }
            });
		  }
		  else{
			  notify('Information', 'Kindly upload the Project Documentations word file');
		  }
            
	}

	</script>

	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<p id="showAlert">Some text in the Modal..</p>
		</div>

	</div>

	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
			
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		    modal.style.display = "none";
		}	
		
		function notify(messageType, message){
		 var notification = 'Information';
			 $(function(){
				 new PNotify({
				 title: notification,
				 text: message,
				 type: messageType,
				 width: '60%',
				 styling: 'bootstrap3',
				 hide: false
			     });
			 }); 	
		}


		function finalSubmit() {
			  $("#next").removeAttr('href');
				var uanswered = '${totalQuestions - (noAnswered+1)}';
					if(uanswered == '0'||uanswered=='-1'){

						(new PNotify({
					    title: 'Confirmation Needed',
					    text: 'Are you sure you want to submit the test?',
					    icon: 'glyphicon glyphicon-question-sign',
					    hide: false,
					    confirm: {
						confirm: true
					    },
					    buttons: {
						closer: true,
						sticker: true
					    },
					    history: {
						history: false
					    }
					})).get().on('pnotify.confirm', function() {
					   submitTest();
					}).on('pnotify.cancel', function() {
					   
					});
					}
					else{
						(new PNotify({
					    title: 'Confirmation Needed',
					    text: 'Are you sure you want to submit the test? You still have unanswered Questions?',
					    icon: 'glyphicon glyphicon-question-sign',
					    hide: false,
					    confirm: {
						confirm: true
					    },
					    buttons: {
						closer: true,
						sticker: true
					    },
					    history: {
						history: false
					    }
					})).get().on('pnotify.confirm', function() {
					   submitTest();
					}).on('pnotify.cancel', function() {
					   
					});
						
					}
					
				}
			
		
		$(document).ready(function () {
    			//Disable cut copy paste
    			$('body').bind('cut copy paste', function (e) {
        			e.preventDefault();
    			});
   
    			//Disable mouse right click
    			$("body").on("contextmenu",function(e){
       				return false;
    			});
		});
		
		$(document).ready(function(){
			
			$(".li_anuan").css("display","none");
			$("li.active > div.li_anuan").css("display","block");
			$("li.active > div.navhead > div > a.expand").html("<b>-</b>");
			$(".expand").on("click",function(){
				var id=$(this).data("val");
				
				if($("li > div#"+id).css("display") == "block")	{
					$(this).html("<b>+</b>");
					$("li > div#"+id).css("display","none");
				}
				else {
					$(this).html("<b>-</b>");
					$("li > div#"+id).css("display","block");
				}
			});
			
			var activesec_id = $( "li.active > div.li_anuan" ).attr("id");
			var active_queno = $( "div.queno>span" ).html();
			
			submitTestCheckNoAnswer( activesec_id , active_queno );
			
			$("#btn_review").on("click",function(){
				var sec_name = $("li.active > div.navhead > div.col-md-10 > a").html();
				var que_txt = $(".qname").html();
				var btn_nm = $(this).attr("name");
				
				var newbtntxt="";
				var status_rev;
				
				if(btn_nm == "Mark"){
					status_rev = 1;
					newbtntxt="Unmark";
				}
				else{
					status_rev = 0;
					newbtntxt = "Mark for Review";
				}
				
				$.ajax({
					url:"reviewToggle",
					method: "POST",
					data : {
						revstatus:status_rev,
						sectName: sec_name,
						qText: que_txt
					},
					success:function(data){
						$("#btn_review").html(newbtntxt);
						if($("#btn_review").attr("name") == "Mark"){
							$("#btn_review").attr("name","Unmark");
						}
						else{
							$("#btn_review").attr("name","Mark");
						}
						submitTestCheckNoAnswer( activesec_id , active_queno );
					}
				});
				
			});
			
			
			$("#btn_subm").on('click',function(){
				var uanswered = '${totalQuestions - (noAnswered+1)}';
				var modaltxt = "";
				if( uanswered == '0' || uanswered == '-1')
					{
						modaltxt = "Are you sure you want to submit the test?";
					}
				else
					{
						modaltxt = "Are you sure you want to submit the test? You still have unanswered questions?";
					}
				$('#modalSub_body').html(modaltxt);
				$('#modalSub').modal("show");
			});
		});
	</script>
<script>
var video = document.querySelector("#videoElement");

if (navigator.webkitGetUserMedia) {
	
navigator.webkitGetUserMedia({ video: true })
    .then(function (stream) {
      video.srcObject = stream;
    })
    .catch(function (err0r) {
      console.log("Something went wrong!");
    });
}
</script>
<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
</body>
</html>