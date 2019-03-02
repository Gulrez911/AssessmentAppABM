<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html lang="en" class=" js csstransforms csstransforms3d csstransitions"
	style="height: auto;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Question List</title>
<link rel="shortcut icon"
	href="http://beforesubmit.com/qe-assess/assets/img/ico/favicon.png">
<link href="./Question List_files/css" rel="stylesheet" type="text/css">
<!-- Material Icons CSS -->
<link href="css/newcss/material-icons.css" rel="stylesheet">
<!-- FontAwesome CSS -->
<link href="css/newcss/font-awesome.min.css" rel="stylesheet">
<!-- magnific-popup -->
<link href="css/newcss/magnific-popup.css" rel="stylesheet">
<!-- owl.carousel -->
<link href="css/newcss/owl.carousel.css" rel="stylesheet">
<link href="css/newcss/owl.theme.default.min.css" rel="stylesheet">
<!-- flexslider -->
<link href="css/newcss/flexslider.css" rel="stylesheet">
<!-- materialize -->
<link href="css/newcss/materialize.min.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="css/newcss/bootstrap.min.css" rel="stylesheet">
<!-- shortcodes -->
<link href="css/newcss/shortcodes.css" rel="stylesheet">
<!-- Style CSS -->
<link href="css/newcss/style.css" rel="stylesheet">
<!-- RS5.0 Main Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="./Question List_files/settings.css">
<!-- RS5.0 Layers and Navigation Styles -->
<link rel="stylesheet" type="text/css" href="css/newcss/layers.css">
<link rel="stylesheet" type="text/css"
	href="./Question List_files/navigation.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	position:;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	background-color: white;
	color:#000;
	
}

li
 
a
:hover
:not
 
(
.active
 
)
{
background-color
:
 
#111
;


}
.active {
	background-color: #4CAF50;
}
.menuzord {
    width: 100%;
    float: left;
    position: relative;
}
</style>
</head>
<body id="top" class="has-header-search">


	<!--header start-->

	<div class="panel panel-default" id="header" style="width: 100%">
		<div class="panel-body" style="width: 0px; padding: 0px;">
			<!--  <header id="header" class="tt-nav nav-border-bottom"> -->
			<div class="header-sticky light-header ">
				<div class="container">
					<div class="row">
						<div id="materialize-menu" class="menuzord menuzord-responsive">
							<a href="javascript:void(0)" class="showhide" style="display: none;"></a> 
							<a href="http://beforesubmit.com/qe-assess/index.html" class="logo-brand"> <img class="retina"
								src="images/Logo2.png" alt="">
							</a>

							<ul class="menuzord-menu pull-right menuzord-indented scrollable"
								style="max-height: 400px;">
								<li><a href="javascript:void(0)">Dashboard</a></li>
								<li class="active"><a href="question_list">Question
										Bank</a></li>
								<li><a href="testlist">Tests</a></li>
								<li><a href="">Skills</a></li>
								<li><a href="showReports">Results</a></li>
								<li><a href="javascript:void(0)">Code Analysis Reports</a></li>
								<li><a href="javascript:void(0)">Skill based Reports</a></li>
								<li><a href="listUsers">Users</a></li>
								<li class="scrollable-fix"></li>
							</ul>

						</div>
					</div>

				</div>
			</div>

		</div>
	</div>

	<!--header end-->



	<section>
		<div class="container">
			<div class="row mt-5">
				<div class="col-md-12">
					<div class="col-md-6"></div>
					<div class="col-md-2">
						<a href="http://beforesubmit.com/qe-assess/question_list.html#"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-plus-circle"></i> Add New</a>
					</div>
					<div class="col-md-2">
						<a href="javascript:showFileDialog();" id="uploadQuestionsLink"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-plus-circle"></i>Import</a>
					</div>

					<form id="fileFormQuestions" method="POST"
						enctype="multipart/form-data">
						<input type="file" name="fileQuestions" id="fileQuestions"
							style="display: none" />
					</form>

					<div class="col-md-2">
						<a href="signoff" class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-sign-out"></i> Sign Off</a>
					</div>
				</div>
				<!-- navigation -->
				<div class="col-md-12">
					<div class="col-md-12">
						<div class="pagination" style="float: right;">
							<c:if test="${showPreviousPage}">
								<a href="${callingMethod}?page=${previousPage}${queryParam}">
									<i class="fa fa-arrow-left"></i>
								</a>
							</c:if>

							<c:if test="${selectedPage != null &&  selectedPage > 0}">
						    ${selectedPage} / ${totalNumberOfPages}
					    </c:if>

							<c:if test="${showNextPage}">
								<a href="${callingMethod}?page=${nextPage}${queryParam}"><i
									class="fa fa-arrow-right"></i></a>
							</c:if>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="mt-10"></div>
					<div class="col-md-5">
						<h1>Question Bank</h1>
					</div>
					
					<div class="col-md-4">
						<div class="widget widget_search">
 							<form action="searchQuestions" method="get">
								<input type="text" class="form-control"
									value="${param.searchText}" name="searchText" id="search"
									placeholder="Search a question" style="margin-left: -158px; display:inline;">
								<button type="submit" id="searchQ">
 									<i class="fa fa-search"></i>
								</button>
							</form>  
							 	
						</div>
					</div>
					<div class="col-md-3">
						<div class="mt-10"></div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<a href="http://beforesubmit.com/qe-assess/question_list.html#">
								<i class="fa fa-sort-amount-asc"></i> <span>Sort</span>
							</a>
						</div>
						<div class="col-md-4">
							<a href="http://beforesubmit.com/qe-assess/question_list.html#">
								<i class="fa fa-filter"></i> <span>Filter</span>
							</a>
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
									<th>Difficulty Level</th>
									<th>Updated On</th>
									<th>Update</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${qs}" var="question" varStatus="loop">
									<tr>

										<td>${loop.count}</td>


										<td><c:out value="${question.questionText}"></c:out></td>

										<td>${question.category}</td>
										<td><c:out value="${question.difficultyLevel.level}"></c:out>
										</td>
										<td><c:out value="${question.updatedDate}"></c:out></td>
										<td><a href="addQuestion?qid=${question.id}">Click </a></td>
										<td><a href="javascript:confirm('${question.id}')">Click
										</a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

				</div>
			</div>
			<!-- /.row -->



		</div>
		<!-- /.container -->
	</section>

	
	<!-- jQuery -->
	<script src="./Question List_files/jquery-2.1.3.min.js.download"></script>
	<script src="./Question List_files/bootstrap.min.js.download"></script>
	<script src="./Question List_files/materialize.min.js.download"></script>
	<script src="./Question List_files/menuzord.js.download"></script>
	<script
		src="./Question List_files/bootstrap-tabcollapse.min.js.download"></script>
	<script src="./Question List_files/jquery.easing.min.js.download"></script>
	<script src="./Question List_files/jquery.sticky.min.js.download"></script>
	<script src="./Question List_files/smoothscroll.min.js.download"></script>
	<script src="./Question List_files/imagesloaded.js.download"></script>
	<script src="./Question List_files/jquery.stellar.min.js.download"></script>
	<script src="./Question List_files/jquery.inview.min.js.download"></script>
	<script src="./Question List_files/jquery.shuffle.min.js.download"></script>
	<script src="./Question List_files/owl.carousel.min.js.download"></script>
	<script src="./Question List_files/jquery.flexslider-min.js.download"></script>
	<script
		src="./Question List_files/jquery.magnific-popup.min.js.download"></script>
	<script src="./Question List_files/scripts.js.download"></script>

	<div class="hiddendiv common"></div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<script>
		/* off-canvas sidebar toggle */
		$('[data-toggle=offcanvas]').click(
				function() {
					$('.row-offcanvas').toggleClass('active');
					$('.collapse').toggleClass('in').toggleClass('hidden-xs')
							.toggleClass('visible-xs');
				});

		$('#searchQ').on('click', function() {
			var text = document.getElementById("searchText").value;
			if (text.length != 0) {
				window.location = "searchQuestions?searchText=" + text;
			}
		});

		var isXlsx = function(name) {
			return name.match(/xlsx$/i)
		};

		$("#btnfile").click(function() {
			$("#uploadfile").click();
		});

		function showFileDialog() {
			$("#fileQuestions").click();
		}

		$(document)
				.ready(
						function() {

							var file = $('[name="fileQuestions"]');
							var imgContainer = $('#imgContainer');

							$('#uploadLink').on('click', function() {
								// $("#file").click();

							});

							var fileU = document
									.getElementById('fileQuestions');
							fileU
									.addEventListener(
											"change",
											function() {
												if (fileU.files.length > 0) {
													var filename = $.trim(file
															.val());

													if (!(isXlsx(filename))) {
														notify('Error',
																'Please select an xlsx file to upload');
														return;
													}

													$
															.ajax(
																	{
																		xhr : function() {
																			var xhr = new window.XMLHttpRequest();

																			return xhr;
																		},
																		url : 'upload',
																		type : "POST",
																		data : new FormData(
																				document
																						.getElementById("fileFormQuestions")),
																		enctype : 'multipart/form-data',
																		processData : false,
																		contentType : false
																	})
															.done(
																	function(
																			data) {
																		notify(
																				'Success',
																				'File Upload Successful');

																	})
															.fail(
																	function(
																			jqXHR,
																			textStatus) {
																		notify(
																				'Failure',
																				'File Upload Failed. Please contact Administrator');
																	});
													document
															.getElementById('fileQuestions').value = null;
													return;
												}

											});

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

		function confirm(id) {
			(new PNotify({
				title : 'Confirmation Needed',
				text : 'Are you sure? Do you really want to delete this Q?',
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
				window.location = "removeQuestionFromList?qid=" + id;
			}).on('pnotify.cancel', function() {

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
</body>
</html>