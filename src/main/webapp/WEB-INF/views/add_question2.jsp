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
<title>Question List</title>

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
						<li><a href="javascript:void(0)">Dashboard</a></li>
						<li class="active"><a href="question_list">Question Bank</a></li>
						<li><a href="testlist">Tests</a></li>
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

			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="mb-30">
						<h2 class="section-title">Add new Question</h2>
					</div>
					<form name="questionForm" method="post" modelattribute="question"
						action="saveQuestion" enctype="multipart/form-data">

						<div class="input-field">
						<label for="questionText">Question</label>
							<input type="text" name="questionText" id="questionText"
						   class="materialize-textarea" required=""></textarea>
							
						</div>

						<div class="row">
							<div class="col-md-6 questiontypedrp">
								<div class="input-field">
									<select id="questionType" name="type" onchange="changeQType()">
										<option value="MCQ" selected="selected">MCQ</option>
										<option value="CODING">CODING</option>
									</select> <label for="questionType" style="top: -30px;">Question
										Type</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="input-field">
									<select id="level" name="level">
										<option value="EASY" selected="selected">EASY</option>
										<option value="MEDIUM">MEDIUM</option>
										<option value="DIFFICULT">DIFFICULT</option>
									</select>
								</div>
							</div>
						</div>


						<div id="mcqDiv" class="formfield">
							<div class="row">
								<div class="col-md-12 mt-20 mb-20" style="padding: 0;">
									<div class="col-md-1" style="font-weight: 700;">Options</div>
									<div class="col-md-8"></div>
									<div class="col-md-3" style="font-weight: 700;">Correct
										Choice</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-1">A</div>
									<div class="col-md-8">
										<input id="choice1" name="choice1" required="" type="text"
											value="">
									</div>
									<div class="col-md-3 text-center">
										<input type="checkbox" id="one1" name="one" value="true"
											class="filled-in" /> <label for="one1"></label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-1">B</div>
									<div class="col-md-8">
										<input id="choice2" name="choice2" required="" type="text"
											value="">
									</div>
									<div class="col-md-3 text-center">
										<input type="checkbox" id="two1" name="two" value="true"
											class="filled-in" /> <label for="two1"></label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-1">C</div>
									<div class="col-md-8">
										<input id="choice3" name="choice3" required="" type="text"
											value="">
									</div>
									<div class="col-md-3 text-center">
										<input type="checkbox" id="three1" name="three" value="true"
											class="filled-in" /> <label for="three1"></label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-1">D</div>
									<div class="col-md-8">
										<input id="choice4" name="choice4" required="" type="text"
											value="">
									</div>
									<div class="col-md-3 text-center">
										<input type="checkbox" id="four1" name="four" value="true"
											class="filled-in" /> <label for="four1"></label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-1">E</div>
									<div class="col-md-8">
										<input id="choice5" name="choice5" required="" type="text"
											value="">
									</div>
									<div class="col-md-3 text-center">
										<input type="checkbox" id="five1" name="five" value="true"
											class="filled-in" /> <label for="five1"></label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-1">F</div>
									<div class="col-md-8">
										<input id="choice6" name="choice6"  type="text"
											value="">
									</div>
									<div class="col-md-3 text-center">
										<input type="checkbox" id="six1" name="six" value="true"
											class="filled-in" /> <label for="six1"></label>
									</div>
								</div>
							</div>
						</div>


						<div id="codingDiv" class="formfield" style="display: none;">
							<div class="row">
								<div class="col-md-6">
									<div class="input-field">
										<select id="lang" name="lang">
											<option value="JAVA" selected="selected">JAVA</option>
											<option value="C">C</option>
											<option value="CPLUSPLUS">CPLUSPLUS</option>
											<option value="DotNet">DotNet</option>
											<option value="CHASH">CHASH</option>
											<option value="PYTHON">PYTHON</option>
										</select> <label for="lang" style="top: -30px;">Programming
											Language</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="input-field">
										<textarea name="inputCode" id="inputCode"
											class="materialize-textarea"></textarea>
										<label for="inputCode">Code Input</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="input-field">
										<textarea name="hiddenInputPositive" id="hiddenInputPositive"
											class="materialize-textarea"></textarea>
										<label for="hiddenInputPositive">System Input 1</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="input-field">
										<textarea name="hiddenOutputPositive"
											id="hiddenOutputPositive" class="materialize-textarea"></textarea>
										<label for="hiddenOutputPositive">System Output 1</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="input-field">
										<textarea name="hiddenInputNegative" id="hiddenInputNegative"
											class="materialize-textarea"></textarea>
										<label for="hiddenInputNegative">System Input 2</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="input-field">
										<textarea name="hiddenOutputNegative"
											id="hiddenOutputNegative" class="materialize-textarea"></textarea>
										<label for="hiddenOutputNegative">System Output 2</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="input-field">
										<textarea name="constrnt" id="constrnt"
											class="materialize-textarea"></textarea>
										<label for="constrnt">Constraints</label>
									</div>
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-12 mt-30">
								<a class="addimage waves-effect waves-light btn"><i
									class="addimage"></i>Add Image</a> 
									<a class="addaudio waves-effect waves-light btn"><i
									class="addaudio"></i>Add Audio</a> <a
									class="addvideo waves-effect waves-light btn"><i
									class="addvideo"></i>Add Video</a>
							</div>

							<input type="file" name="addimage" id="addimage"
								style="display: none;"> <input type="file"
								name="addaudio" id="addaudio" style="display: none;"> <input
								type="file" name="addvideo" id="addvideo" style="display: none;">
							<div class="col-md-12 mt-30">
								<label class="queimage" style="font-size: 18px; color: #000;"></label>
								<label class="queaudio" style="font-size: 18px; color: #000;"></label>
								<label class="quevideo" style="font-size: 18px; color: #000;"></label>
							</div>
						</div>


						<div class="row">
							<div class="col-md-12 mt-20 mb-20" style="padding: 0;">
								<div class="col-md-12" style="font-weight: 700;">Choose
									Categories for Question</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-1">A</div>
								<div class="col-md-11">
									<input id="qualifier1" name="qualifier1" type="text" value=""
										required="">
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-1">B</div>
								<div class="col-md-11">
									<input id="qualifier2" name="qualifier2" type="text" value=""
										required="">
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-1">C</div>
								<div class="col-md-11">
									<input id="qualifier3" name="qualifier3" type="text" value=""
										required="">
								</div>
							</div>
						</div>


						<div class="input-field">
							<textarea name="instructionsIfAny" id="output"
								class="materialize-textarea"></textarea>
							<label for="output">Instructions, if any</label>
						</div>

						<button type="submit" name="submit"
							class="waves-effect waves-light btn submit-button mt-30">Save</button>
						<button type="button"
							class="waves-effect waves-light btn submit-button indigo mt-30"
							onclick="goback()">Cancel</button>
						<div class="mb-30"></div>
					</form>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
	</section>

	<footer class="footer footer-four">
		<div class="secondary-footer brand-bg darken-2 text-center">
			<div class="container">
				<ul>
					<li><a href="javascript:void(0)">Dashboard</a></li>
					<li><a href="javascript:void(0)">Question Bank</a></li>
					<li><a href="javascript:void(0)">Tests</a></li>
					<li><a href="javascript:void(0)">Skills</a></li>
					<li><a href="javascript:void(0)">Results</a></li>
					<li><a href="javascript:void(0)">Code Analysis Reports</a></li>
					<li><a href="javascript:void(0)">Skill based Reports</a></li>
					<li><a href="javascript:void(0)">Users</a></li>
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




</body>

</html>