<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.assessment.data.*, java.text.*, java.util.*, com.assessment.web.dto.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Add Test</title>

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
						class="retina" src="images/Logo.png" alt="" />
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
						<div class="stepsitem">
							<span>1</span>
							<div class="intro-header">
								<i class="fa fa-cog"></i>
								<h2 class="white-text">Set Your Test</h2>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 text-center">
						<div class="stepsitem active">
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


				<div class="addteststeps2 col-md-12 mt-20">

					<div class="col-md-3">
						<div class="step2sections">
							<label class="addquestion">Sections <span>+</span>
							</label>

							<div class="quesectiondiv">
								<div class="quesection">
									<h4>Section 1</h4>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-9">
						<div class="col-md-12">
							<div class="mt-10"></div>
							<div class="col-md-5">
								<h2>Import Questions into Section</h2>
							</div>
							<div class="col-md-4">
								<div class="widget widget_search">
									<%-- <form role="search" method="get" class="search-form">
										<input type="text" class="form-control" value="" name="s"
											id="s" placeholder="Search a question">
										<button type="submit">
											<i class="fa fa-search"></i>
										</button>
									</form> --%>
									<div class="search-form">
								<input type="text" placeholder="Search a question"
									name="searchText" id="searchText">
								<button type="submit" id="search">
									<i class="fa fa-search"></i>
								</button>
							</div>
								</div>
							</div>
						</div>


						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>No</th>
											<th>Question</th>
											<th>Category</th>
											<th>Level</th>
											<th>Points</th>
											<th>Select</th>
										</tr>
									</thead>
									<tbody>
										<%
											int count = 0;
										%>
										<c:forEach items="${qs}" var="ques">
											<tr id="${ques.id}"
												bgcolor="${ques.selected? '#33FFF9':'transparent'}">


												<td><c:out value="${ques.questionText}"></c:out></td>

												<td>${ques.testCategory}</td>
												<td><c:out value="${ques.difficultyLevel.level}"></c:out>
												</td>

												<td><input type="text" placeholder="Marks, if Correct"
													value="1  " disabled style="width: 100%;"></td>

												<td id="${ques.id}-add"
													style="${ques.selected? 'display: none;':''}"><a
													href="javascript:addQ('${ques.id}', 'Core Java');">Click
														to Add</a></td>
												<td id="${ques.id}-remove"
													style="${ques.selected? '':'display: none;'}"><a
													href="javascript:removeQ('${ques.id}', 'Core Java');">Click
														to Remove</a></td>
											</tr>
											<%
												count++;
											%>
										</c:forEach>
									</tbody>
								</table>
							</div>

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
					<li><a href="javascript:void(0)">Code Analysis Reports</a></li>
					<li><a href="javascript:void(0)">Skill based Reports</a></li>
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

	<script>
		// Add section
		var counter = 1;
		$(document).on(
				'click',
				'.addquestion',
				function() {
					counter++;
					$(".quesectiondiv").append(
							"<div class='quesection'><h4>Section " + counter
									+ "</h4></div>");
				});
	</script>
	<!-- Script Start from here -->

	<script>
		function saveSection() {
			var name = document.getElementById('sectionTopic').value;
			var txtFValue = document.getElementById('txtF').value;
			if (name.trim().length == 0) {
				notify('Information',
						'Please enter a meaningful name for your section before saving. ');

			} else {
				window.location = 'saveSection?sectionTopic=' + name
						+ '&percentage=' + txtFValue;

			}

		}

		function addQ(qid, sectionName) {

			//window.location = "addQuestionToSection?sectionName="+sectionName+"&questionId="+qid;
			var url = "addQuestionToSectionAjax?sectionName=" + sectionName
					+ "&questionId=" + qid;
			console.log('here url ' + url);
			$.ajax({
				url : url,
				success : function(data) {
					console.log("SUCCESS: ", data);
					var tr = document.getElementById(qid);
					var tds = tr.getElementsByTagName("td");
					var tdadd = document.getElementById(qid + "-add");
					var tdremove = document.getElementById(qid + "-remove");
					console.log(tr);
					console.log(tds);
					console.log(tdadd);
					tr.style.backgroundColor = '#33FFF9';
					tdadd.style.display = "none";
					tdremove.style.display = "";

					//document.getElementById("no-"+sectionName).innerHTML = data;

				},
				error : function(e) {
					console.log("ERROR: ", e);

				}
			});

		}

		function removeQ(qid, sectionName) {
			//window.location = "removeQuestionToSection?sectionName="+sectionName+"&questionId="+qid;
			var url = "removeQuestionToSectionAjax?sectionName=" + sectionName
					+ "&questionId=" + qid;
			console.log('here url ' + url);
			$.ajax({
				url : url,
				success : function(data) {
					console.log("SUCCESS: ", data);
					var tr = document.getElementById(qid);
					var tds = tr.getElementsByTagName("td");
					var tdadd = document.getElementById(qid + "-add");
					var tdremove = document.getElementById(qid + "-remove");
					console.log(tr);
					console.log(tds);
					console.log(tdadd);
					tr.style.backgroundColor = 'transparent';
					tdadd.style.display = "";
					tdremove.style.display = "none";

					//document.getElementById("no-"+sectionName).innerHTML = data;

				},
				error : function(e) {
					console.log("ERROR: ", e);

				}
			});
		}

		function showSelected() {
			//$.ajax({url: "showSectionsQuestions", success: function(result){
			//		notify("Success", "All Questions Selected so far..");
			//	    }});
			window.location = "showSectionsQuestions";
		}

		function highlight(sectionName) {
			window.location = "goToSection?sectionName=" + sectionName;
		}

		function removeSection(sectionName) {
			(new PNotify({
				title : 'Confirmation Needed',
				text : 'Are you sure you want to delete the section '
						+ sectionName,
				icon : 'glyphicon glyphicon-question-sign',
				hide : false,
				confirm : {
					confirm : true
				},
				buttons : {
					closer : false,
					sticker : false
				},
				history : {
					history : false
				}
			})).get().on('pnotify.confirm', function() {
				window.location = "removeSection?sectionName=" + sectionName;
			}).on('pnotify.cancel', function() {

			});
		}

		function notify(messageType, message) {
			var notification = 'Information';
			$(function() {
				new PNotify({
					title : notification,
					text : message,
					type : messageType,
					styling : 'bootstrap3',
					hide : true
				});
			});
		}

		$('#search').on('click', function() {
			var text = document.getElementById("searchText").value;
			if (text.length != 0) {
				window.location = "searchQs?searchText=" + text;
			}
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
		});
		$('#addaudio').change(function() {
			var file = $('#addaudio')[0].files[0].name;
			$('.queaudio').text('Audio: ' + file);
		});
		$('#addvideo').change(function() {
			var file = $('#addvideo')[0].files[0].name;
			$('.quevideo').text('Video: ' + file);
		});

		function notify(messageType, message) {
			var notification = 'Information';
			$(function() {
				new PNotify({
					title : notification,
					text : message,
					type : messageType,
					styling : 'bootstrap3',
					hide : true
				});
			});
		}
	</script>
	<!--  -->
</body>
</html>