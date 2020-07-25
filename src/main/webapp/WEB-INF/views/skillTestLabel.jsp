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
<spring:url value="/resources/assets/css/pnotify.custom.min.css"
	var="c16" />

<link href="${c16}" rel="stylesheet" type="text/css" />

<style>
.dropdown-menu {
	min-width: 387px !important;
	height: 300px !important;
	overflow: auto !important;
}
</style>

<style >
li>a.dropbtn{
	position: relative;
}
.dropdown {
  position: relative;
  display: none;
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
						<li>
						<a class="dropbtn">Profiler</a>
						<div class="dropdown">
							<div class="dropdown-content">
								<a href="learningpath">Practice</a>
								<a href="skillTestLabel"  class="active">Coding</a>
								<a href="compete">Compete</a>
								<a href="skillTest">Skill Test</a>
							 </div>
						</div>
						</li>
						<li>
						<a class="dropbtn">Result</a>
						<div class="dropdown">
							<div class="dropdown-content">
								<a href="showReports">Result</a>
								<a href="codingSessions">Code Reports</a>
								<a href="showSkillTags">Skill Reports</a>
							 </div>
						</div>
						</li>
						<li><a href="showProfileParams">Recomm Setting</a></li>
						<li><a href="listUsers">Users</a></li>
<!-- 						<a href="/AssesmentApp/OnetPage">Assessment Profiler</a> -->
					</ul>
					<!--mega menu end-->
					 </div>
				
			</div>
		</div>
		
	</header>
	<!--header end-->


	<section>
		<div class="container">
			<div class="row mt-5">
				<div class="col-md-12">
					<div class="col-md-6"></div>

					<div class="col-md-2">
						<button type="button" id="btn-show-modal"
							class="btn waves-effect waves-light col-md-12"
							data-toggle="modal" data-target="#modaladdSkill"><i class="material-icons fa fa-plus-circle"></i>Add New</button>

					</div>
					<div class="col-md-2">
						<a href="signoff" class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-sign-out"></i> Sign Off</a>
					</div>
				</div>

				<div class="col-md-12">
					<div class="mt-10"></div>
					<div class="col-md-5">
						<h1 style="color: #b07c2a;">
							<b>Skills Test Repository</b>
						</h1>
					</div>
					<div class="col-md-4">
						<div class="widget widget_search">

							<div class="search-form">
								<form action="#" method="get">
									<input type="text" placeholder="Search a skill"
										name="searchText" id="searchText">
									<button type="submit" id="search">
										<i class="fa fa-search"></i>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead style="background-color: #03a9f4;">
								<tr>
									<th>Serial</th>
									<th>Parent Skill</th>

									<th>Child Skill</th>
									<th>Test Name</th>
									<th>Label Name</th>
									<th>Level</th>
<!-- 									<th>Update</th> -->
									

									<!--<th>Update Skill</th> -->
								</tr>
							</thead>

							<tbody>
							<tbody>
								<c:forEach items="${allList}" var="list"
									varStatus="loop">
									<tr>
										<td>${loop.count}</td>
										<td>${list.parentSkill}</td>
										<td>${list.childSkill}</td>
										<td>${list.testName}</td>
										<td>${list.label}</td>
										<td>${list.level}</td>
<!-- 										<td><a href="#"><i class="fa fa-edit" style="font-size: 24px"></i></a></td> -->
										
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
	<!-- <footer class="footer footer-four">
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
	</footer> -->


	<!--  AddSkillTest Popup -->
	<div id="modaladdSkill" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Skill Test</h4>
				</div>
				<div class="modal-body">
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="uploadTab">
							<form:form action="saveSkillTestLabel" method="post"
								modelAttribute="skillTestLabel">
								<div class="form-group">
									<label>Select Parent Skill</label>
									<form:select class="form-control" path="parentSkill" id="selectSkill" onchange="subSkill()" required="required">
										<option  disabled="disabled" selected value="">--choose Main
											Skill--</option>
										<form:options items="${pSkill}" />

									</form:select>
								</div>
								<div class="form-group">
									<label>Select Child Skill</label>
									<%-- <form:select class="form-control" path="childSkill" id="selectSubSkill" required="required">
										<option  disabled="disabled" selected>--Select 
											SubSkill--</option>
										<form:options items="${cSkill}" />

									</form:select> --%>
									<select id="slct" class="form-control" name="childSkill" required="required">
									<option  disabled="disabled" selected value="">--choose subskill--</option>
									</select>
								</div>
								<div class="form-group">
									<label>Select Test</label>
									<%-- <form:select class="form-control" path="testName" required="required">
										<option  disabled="disabled" selected>--Select
											Test--</option>
										<form:options items="${tName}" />

									</form:select> --%>
									<select id="slct1" class="form-control" name="testName" required="required"></select>
								</div>
								<div class="form-group">
									<label>Select Level Here</label>
									<form:select class="form-control" path="level"  required="required">
										<option  disabled="disabled" selected value="">--Choose Level--
											</option>
										<option value="EASY">EASY</option>
										<option value="MEDIUM">MEDIUM</option>
										<option value="HARD">HARD</option>

									</form:select>
								</div>
								<div class="form-group">
									<label>Enter Label Name</label>
									<form:input class="form-control" path="label" required="required" placeholder="Enter label here"/>
								</div>
								<div class="modal-footer">
									<button class="btn btn-primary" data-dismiss="modal">Cancel</button>
									<input type="submit" value="Save Changes"
										class="btn btn-primary">
								</div>


							</form:form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>


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

<script>

 function subSkill() {
		    var skill = $("#selectSkill").val();
             console.log(skill)
		    $.ajax({
		        url: "fetchSubSkill?skill=" + skill,
		        type: 'GET',
		        success : function(response) {
					console.log(response.listSubSkill.length)
					$('.opt').remove();
					for (i = 0; i < response.listSubSkill.length; i++) {
						console.log(response.listSubSkill[i]);
						$("#slct").append(
								"<option class='opt'>" + response.listSubSkill[i]
										+ "</option>");
					}

					console.log(response.listTest.length)
					
					for (i = 0; i < response.listTest.length; i++) {
						console.log(response.listTest[i]);
						$("#slct1").append(
								"<option class='opt'>" + response.listTest[i]
										+ "</option>");
					}

					
				},

		    });
		

	 }


</script>

    <script type="text/javascript">

    $('#document').ready(function(){
        $('#btn-show-modal').on('click', function(){
            $('.form-control').val('');
        });
    });


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