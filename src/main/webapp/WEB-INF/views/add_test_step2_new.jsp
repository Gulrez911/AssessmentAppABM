<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


</head>
<body id="top" class="has-header-search">

	<!--header start-->
	<header id="header" class="tt-nav nav-border-bottom">
		<div class="header-sticky light-header ">
			<div class="container">
				<div id="materialize-menu" class="menuzord menuzord-responsive">
					<a href="javascript:void(0)" class="showhide" style="display: none;"><em></em><em></em><em></em></a>
					<!--logo start-->
					<a href="javascript:void(0);" class="logo-brand"> <img class="retina"
						src="./addtest_step2_files/Logo.png" alt="">
					</a>
					<!--logo end-->
					<!--mega menu start-->
					<ul class="menuzord-menu pull-right menuzord-indented scrollable"
						style="max-height: 400px;">
						<li><a
							href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
						<li><a href="question_list">Question Bank</a></li>
						<li class="active"><a href="testlist">Tests</a></li>
						<li><a href="skills">Skills</a></li>
						<li><a href="showReports">Results</a></li>
						<li><a href="codingSessions">Code Analysis Reports</a></li>
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
		<div class="container">
			<div class="row no-gutter">
				<div class="col-md-2 mb-20">
					<div class="col-md-12 col-sm-6 text-center">
						<div class="stepsitem">
							<span>1</span>
							<div class="intro-header">
								<i class="fa fa-cog"></i>
								<h2 class="white-text">Set Your Test</h2>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-6 text-center">
						<div class="stepsitem active">
							<span>2</span>
							<div class="intro-header">
								<i class="fa fa-question-circle"></i>
								<h2 class="white-text">Add Questions</h2>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-6 text-center">
						<div class="stepsitem">
							<span>3</span>
							<div class="intro-header">
								<i class="fa fa-share-alt"></i>
								<h2 class="white-text">Share Test</h2>
							</div>
						</div>
					</div>
				</div>


				<div class="addteststeps2 col-md-10">
					<div class="col-md-12">
						<div class="step2sections">
							<label style="font-size: 20px; color: #333;">Sections</label>
							<div class="quesectiondiv">
								<div class="quesection">
									Main Section <a id="delete"><i class="fa fa-trash"></i></a> <a id="update"><i
										class="fa fa-edit"></i></a>
								</div>
							</div>

							<label class="addquestion"><span>+</span> Add Section </label>
						</div>


						<div class="col-md-12 text-right">
							<a href="http://beforesubmit.com/qe-assess/tests.html"
								class="waves-effect waves-light btn submit-button indigo mt-20 mb-20">Cancel</a>
							<a class="waves-effect waves-light btn cyan mt-20 mb-20"
								href="http://beforesubmit.com/qe-assess/addtest.html">Back</a> <a
								class="waves-effect waves-light btn mt-20 mb-20"
								href="http://beforesubmit.com/qe-assess/addtest_step3.html">Next</a>
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
					<li><a
						href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
					<li><a href="question_list">Question Bank</a></li>
					<li class="active"><a href="testlist">Tests</a></li>
					<li><a href="skills">Skills</a></li>
					<li><a href="showReports">Results</a></li>
					<li><a href="codingSessions">Code Analysis Reports</a></li>
					<li><a href="showSkillTags">Skill based Reports</a></li>
					<li><a href="showProfileParams">Recomm Setting</a></li>
					<li><a href="listUsers">Users</a></li>
				</ul>
			</div>
		</div>
	</footer>



	<!-- Duplicate Test Popup -->
	<div id="modalsection" class="modal fade modalsection" role="dialog">
		<div class="modal-dialog" style="width: 900px;">
			<!-- Modal content-->
			<div class="modal-content" style="display: inline-block;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Add Section</h4>
				</div>
				<div class="modal-body">
					<div class="col-md-12 mb-20">
						<a href="http://beforesubmit.com/qe-assess/addtest_step2.html#"
							class="btn waves-effect waves-light">Show All Parent Categories</a> <a
							href="http://beforesubmit.com/qe-assess/addtest_step2.html#"
							class="btn waves-effect waves-light green">Show Selected</a> <a
							href="http://beforesubmit.com/qe-assess/addtest_step2.html#"
							class="btn waves-effect waves-light red">Clear All</a> <a
							href="http://beforesubmit.com/qe-assess/addtest_step2.html#"
							class="btn waves-effect waves-light">Save Section</a>
					</div>

					<div class="col-md-12 mb-20">
						<div class="col-md-3" style="padding: 0;">
							<div class="widget widget_search">
								<input type="text" class="form-control" value="Main Section">
							</div>
						</div>
						<div class="col-md-9">
							<label style="font-size: 16px; color: #202020; font-weight: normal;"
								class="active">Percent of Qs to be asked - </label> <input type="number"
								onkeypress="return check(event, value)" oninput="checkLength()" id="txtF"
								placeholder="Enter percentage" style="width: 15%;" value="100">
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
									<tr>
										<th scope="row">1</th>
										<td>When is Acceptance testing performed in agile development?</td>
										<td><a href="http://beforesubmit.com/qe-assess/addtest_step2.html#">Self
												Esteem</a></td>
										<td>EASY</td>
										<td>1</td>
										<td class="text-center"><a
											href="http://beforesubmit.com/qe-assess/addtest_step2.html#"><i
												class="fa fa-plus-square"></i></a></td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>When is Acceptance testing performed in agile development?</td>
										<td><a href="http://beforesubmit.com/qe-assess/addtest_step2.html#">Self
												Esteem</a></td>
										<td>EASY</td>
										<td>1</td>
										<td class="text-center"><a
											href="http://beforesubmit.com/qe-assess/addtest_step2.html#"><i
												class="fa fa-plus-square"></i></a></td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>When is Acceptance testing performed in agile development?</td>
										<td><a href="http://beforesubmit.com/qe-assess/addtest_step2.html#">Self
												Esteem</a></td>
										<td>EASY</td>
										<td>1</td>
										<td class="text-center"><a
											href="http://beforesubmit.com/qe-assess/addtest_step2.html#"><i
												class="fa fa-plus-square"></i></a></td>
									</tr>
									<tr>
										<th scope="row">4</th>
										<td>When is Acceptance testing performed in agile development?</td>
										<td><a href="http://beforesubmit.com/qe-assess/addtest_step2.html#">Self
												Esteem</a></td>
										<td>EASY</td>
										<td>1</td>
										<td class="text-center"><a
											href="http://beforesubmit.com/qe-assess/addtest_step2.html#"><i
												class="fa fa-plus-square"></i></a></td>
									</tr>
									<tr>
										<th scope="row">5</th>
										<td>When is Acceptance testing performed in agile development?</td>
										<td><a href="http://beforesubmit.com/qe-assess/addtest_step2.html#">Self
												Esteem</a></td>
										<td>EASY</td>
										<td>1</td>
										<td class="text-center"><a
											href="http://beforesubmit.com/qe-assess/addtest_step2.html#"><i
												class="fa fa-plus-square"></i></a></td>
									</tr>
								</tbody>
							</table>
						</div>

						<a data-dismiss="modal"
							class="waves-effect waves-light btn submit-button indigo mt-20 mb-20">Cancel</a>
						<a id="savesection" class="waves-effect waves-light btn mt-20 mb-20">Save</a>

					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- jQuery -->
	<script src="./addtest_step2_files/jquery-2.1.3.min.js.download"></script>
	<script src="./addtest_step2_files/bootstrap.min.js.download"></script>
	<script src="./addtest_step2_files/materialize.min.js.download"></script>
	<script src="./addtest_step2_files/menuzord.js.download"></script>
	<script src="./addtest_step2_files/scripts.js.download"></script>

	<script>
		// Add section
		//                                        var counter = 1;
		//                                        $(document).on('click', '.addquestion', function () {
		//                                            counter++;
		//                                            $(".quesectiondiv").append("<div class='quesection'><h4>Section " + counter + "</h4></div>");
		//                                        });

		$(document).on('click', '.addquestion', function() {
			$('#modalsection').modal('show');
		});

		var counter = 1;
		$(document)
				.on(
						'click',
						'#savesection',
						function() {
							$('#modalsection').modal('hide');
							counter++;
							$(".quesectiondiv")
									.append(
											"<div class='quesection'>Section "
													+ counter
													+ "<a id='delete'><i class='fa fa-trash'></i><a id='update'><i class='fa fa-edit'></i></a></a></div>");
						});
	</script>


	<div class="hiddendiv common"></div>
</body>
</html>