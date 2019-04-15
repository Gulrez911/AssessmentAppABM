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
<spring:url value="/resources/assets/css/pnotify.custom.min.css" var="c16" />

<link href="${c16}" rel="stylesheet" type="text/css" />


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
						src="<%=request.getContextPath()%>/resources/images/Logo.png" alt="" />
					</a>
					<!--logo end-->
					<!--mega menu start-->
					<ul class="menuzord-menu pull-right">
						<li><a
							href="javascript:notify('Information', 'We will release the feature pretty soon! Pease wait for our next release');">Dashboard</a></li>
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
						<div class="stepsitem" style="border-bottom: 1px solid #eef5fb;">
							<span>1</span>
							<div class="intro-header">
								<i class="fa fa-cog"></i>
								<h2 class="white-text">Set Your Test</h2>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-6 text-center">
						<div class="stepsitem">
							<span>2</span>
							<div class="intro-header">
								<i class="fa fa-question-circle"></i>
								<h2 class="white-text">Add Questions</h2>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-6 text-center">
						<div class="stepsitem active">
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

						<form:form method="POST" action="sharePublicTest" modelAttribute="tests">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="row formfields">
										<div class="col-md-4"></div>
										<div class="col-md-8">
											<div class="input-field">
												<input type="text" name="testId" id="testId" value="${tests.id}"
													hidden="true">
												<%-- <form:hidden path="test.id"  /> --%>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-12">
								<div class="col-md-6">
									<div class="row formfields">
										<div class="col-md-4">
											<label class="fieldtitle">Existing test name</label>
										</div>
										<div class="col-md-8">
											<div class="input-field">
												<input id="existing_name1" value="${tests.testName}" type="text"
													readonly="readonly" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="row formfields">
										<div class="col-md-4">
											<label class="fieldtitle">First Name</label>
										</div>
										<div class="col-md-8">
											<div class="input-field">
												<input id="firstName" type="text" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="row formfields">
										<div class="col-md-4">
											<label class="fieldtitle">Last name</label>
										</div>
										<div class="col-md-8">
											<div class="input-field">
												<input id="lastName" type="text" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="row formfields">
										<div class="col-md-4">
											<label class="fieldtitle">Email Id</label>
										</div>
										<div class="col-md-8">
											<div class="input-field">
												<input id="userEmail" type="text" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="row formfields">
										<div class="col-md-4">
											<label class="fieldtitle">Public Test URL</label>
										</div>
										<div class="col-md-8">
											<div class="input-field">
												<input id="publicTestUrl" type="text" value="${tests.publicUrl}"
													readonly="readonly" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">

								<input type="button" value="Share" onClick="javascript:shareTest()"
									class="btn btn-primary popupbtn" />
								<!-- 																<button class="btn btn-primary popupbtn"  onClick="javascript:shareTest()" >Share</button> -->
							</div>
						</form:form>



						<!--  Search User start here-->
						<div class="col-md-4">
							<div class="widget widget_search">

								<div class="search-form">
									<form action="searchUsers" method="get">
										<input type="text" placeholder="Search a User" name="searchText"
											id="searchText">
										<button type="submit" id="search">
											<i class="fa fa-search"></i>
										</button>
									</form>
								</div>
							</div>
						</div>
						<!--  Search User End Here-->
						<div class="col-md-12">
							<h2>Add Candidates</h2>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Name</th>
											<th>Email</th>
											<th>Department</th>
											<th>Group</th>
											<th>Grade</th>
										</tr>
									</thead>

									<tbody>

										<c:forEach items="${users}" var="us">
											<tr bgcolor="${us.selected? '#33FFF9':'transparent'}">


												<td>${us.firstName}${us.lastName}</td>

												<td>${us.email}</td>
												<td>${us.department}</td>

												<td>${us.groupOfUser}</td>

												<td style="${us.selected? 'display: none;':''}"><a
													href="javascript:addU('${us.id}');">Click to Add</a></td>
												<td style="${us.selected? '':'display: none;'}"><a
													href="javascript:removeU('${us.id}');">Click to Remove</a></td>
											</tr>

										</c:forEach>
									</tbody>


								</table>
							</div>

						</div>

						<div class="col-md-12">
							<h2 class="txt">PreView</h2>
							<div class="panel-group feature-accordion brand-accordion icon angle-icon"
								id="accordion-one">
								<c:forEach var="section" items="${test.sectionDtos}">
									<%
										int counter = 1;
									%>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h3 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion-one"
													href="#${section.sectionId}" aria-expanded="false">${section.sectionName}</a>
											</h3>
										</div>

										<%
											int count = 1;
										%>
										<div id="${section.sectionId}" class="panel-collapse collapse"
											aria-expanded="false" style="height: 0px;">

											<c:forEach var="ques" varStatus="status" items="${section.questions}">
												<div class="panel-body qus">
													<h3>
														<span><%=count%></span>&nbsp;&nbsp;${ques.questionText}
													</h3>
													<h4
														style="${ques.choice1 == null || ques.choice1.length() == 0? 'display: none;':''}">Choice
														1: &nbsp;&nbsp; ${ques.choice1}</h4>
													<h4
														style="${ques.choice2 == null || ques.choice2.length() == 0? 'display: none;':''}">Choice
														2: &nbsp;&nbsp; ${ques.choice2}</h4>
													<h4
														style="${ques.choice3 == null || ques.choice3.length() == 0? 'display: none;':''}">Choice
														3: &nbsp;&nbsp; ${ques.choice3}</h4>
													<h4
														style="${ques.choice4 == null || ques.choice4.trim().length() == 0? 'display: none;':''}">Choice
														4: &nbsp;&nbsp; ${ques.choice4}</h4>
													<h4
														style="${ques.choice5 == null || ques.choice5.trim().length() == 0? 'display: none;':''}">Choice
														5: &nbsp;&nbsp; ${ques.choice5}</h4>
													<h4
														style="${ques.choice6 == null || ques.choice6.length() == 0? 'display: none;':''}">Choice
														6: &nbsp;&nbsp; ${ques.choice6}</h4>
												</div>

												<%
													count++;
												%>
											</c:forEach>

										</div>
									</div>
									<%
										counter++;
									%>
								</c:forEach>
								<div class="col-md-12 text-right">
									<a href="testlist"
										class="waves-effect waves-light btn submit-button indigo mt-20 mb-20">Cancel</a>
									<a class="waves-effect waves-light btn cyan mt-20 mb-20" href="addteststep2">Back</a>
									<a class="waves-effect waves-light btn mt-20 mb-20"
										href="shareTestWithUsers">Next</a>
								</div>
							</div>

						</div>
					</div>
				</div>


			</div>

		</div>

	</section>
	<!-- Share Test Popup -->
	<div id="modalshare" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Share Test</h4>
				</div>
				<div class="modal-body">
					<form>
						<label>Existing test name</label> <input id="existing_name1" type="text">
						<label>First Name</label> <input id="firstName" type="text"> <label>Last
							name</label> <input id="lastName" type="text"> <label>Email Id</label> <input
							id="userEmail" type="text"> <label>Public Test URL</label> <input
							id="publicTestUrl" type="text"> <input type="hidden" name="testId"
							id="testId" value="">
						<div class="buttons text-center" style="padding-top: 20px;">
							<i class="waves-effect waves-light btn waves-input-wrapper" style=""><input
								class="waves-button-input" type="button" value="Copy in your Clipboard"
								onclick="javascript:copyUrlInClipBoard()"></i>
							<!-- <i
								class="waves-effect waves-light btn waves-input-wrapper"
								style=""><input class="waves-button-input" type="button"
								value="Share" onclick="javascript:shareTest()"></i> -->
							<a href="javascript:shareTest();"> Share</a> <i
								class="waves-effect waves-light btn waves-input-wrapper" style=""><input
								class="waves-button-input" type="button" value="Close" data-dismiss="modal"></i>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

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

	<script>
		// Add section
		//                                        var counter = 1;
		//                                        $(document).on('click', '.addquestion', function () {
		//                                            counter++;
		//                                            $(".quesectiondiv").append("<div class='quesection'><h4>Section " + counter + "</h4></div>");
		//                                        });
		$(document).on('click', '#update', function() {
			$('#modalsection').modal('show');
		});
		// 			var counter = 1;
		// 			$(document)
		// 					.on(
		// 							'click',
		// 							'.addSecstion',
		// 							function() {
		// 								$('#modalsection').modal('hide');
		// 								counter++;
		// 								$(".quesectiondiv")
		// 										.append(
		// 												"<div class='quesection'>Section "
		// 														+ counter
		// 														+ "<a id='delete'><i class='fa fa-trash'></i><a id='update'><i class='fa fa-edit'></i></a></a></div>");
		// 							});
	</script>

	<script>
		var point = false;
		var count = 0;
		function check(e, value) {
			//Check Charater
			debugger;
			if (count == 3)
				return false;
			var unicode = e.charCode ? e.charCode : e.keyCode;
			if (unicode == 46 && point == true)
				return false;
			if (unicode == 46 && point == false) {
				point = true;
			}
			if (unicode != 8)
				if ((unicode<48||unicode>57) && unicode != 46)
					return false;
			if (point == true)
				count++;
		}
		function checkLength() {
			var fieldVal = document.getElementById('txtF').value;
			//Suppose u want 3 number of character
			if (fieldVal <= 100) {
				return true;
			} else {
				var str = document.getElementById('txtF').value;
				str = str.substring(0, str.length - 1);
				document.getElementById('txtF').value = str;
			}
		}
	</script>

	<script type="text/javascript">
		function saveSection() {
			var name = document.getElementById('sectionTopic').value;
			var txtFValue = document.getElementById('txtF').value;
			if (name.trim().length == 0) {
				notify('Information',
						'Please enter a meaningful name for your section before saving. ');
			} else {
				// 					window.location='addNewSection';
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
			$(".table-responsive").hide();
			$(".selectedQ").show();
			load();
		}
		// 			function showSelected() {
		// 				window.location = "showSectionsQuestions";
		// 			}
		dta = "";
		load = function() {
			$
					.ajax({
						url : 'showSectionsQuestions',
						type : 'GET',
						success : function(response) {
							alert("test");
							console.log("hello");
							console.log("test", response.qs[0].questionText);
							console.log("test", response.qs[0].testCategory);
							console.log("test", response.qs[0].questionText);
							console.log("test", response.qs[0].questionText);
							console.log("test", response.qs[0].questionText);
							data = response.qs;
							for (i = 0; i < response.qs.length; i++) {
								console.log(data[i].questionText);
								$("#table1")
										.append(
												"<tr class='tr'> <td> "
														+ response.data[i].questionText
														+ " </td>  <td> <a href='#' onclick= edit("
														+ i
														+ ");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("
														+ response.data[i].questionText
														+ ");'> Delete </a>  </td> </tr>");
							}
						}
					});
		};
	</script>
	<div class="hiddendiv common"></div>
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
	<script type="text/javascript">
		$('#search').on('click', function() {
			var text = document.getElementById("searchText").value;
			if (text.length != 0) {
				window.location = "searchUsers?searchText=" + text;
			}
		});
		function addU(uid) {
			window.location = "addUserToTest?userId=" + uid;

		}
		function removeU(uid) {
			window.location = "removeUserToTest?userId=" + uid;
		}
		function showSelected() {
			window.location = "showSelectedUsers";
		}
		function shareOpen(testName, testPublicUrl, testId) {
			var name = $(this).attr('data-name');
			console.log('here ' + testName);
			document.getElementById("existing_name1").value = testName;
			document.getElementById("publicTestUrl").value = testPublicUrl;
			document.getElementById("testId").value = testId;
			$('#modalcopy').modal('hide');
			$('#modalshare').modal('show');
		}
		function copyUrlInClipBoard() {
			el = document.createElement('textarea');
			el.value = document.getElementById("publicTestUrl").value;
			document.body.appendChild(el);
			el.select();
			document.execCommand('copy');
			document.body.removeChild(el);
			//$('#modalshare').modal('hide');
		}
		function copyUrlClose() {
			$('#modalshare').modal('hide');
		}
		function shareTest() {
			var existing_name1 = document.getElementById("existing_name1").value;
			var firstName = document.getElementById("firstName").value;
			var lastName = document.getElementById("lastName").value;
			var userEmail = document.getElementById("userEmail").value;
			var testId = document.getElementById("testId").value;
			if (firstName == '' || firstName == null) {
				notify('Info', 'First Name can not be blank');
			} else if (lastName == '' || lastName == null) {
				notify('Info', 'Last Name can not be blank');
			} else if (userEmail == '' || userEmail == null) {
				notify('Info', 'Email can not be blank');
			} else if (!validateEmail(userEmail)) {
				notify('Info', 'Enter a valid email');
			} else {
				window.location = "sharePublicTest?existing_name1="
						+ existing_name1 + "&firstName=" + firstName
						+ "&lastName=" + lastName + "&userEmail=" + userEmail
						+ "&testId=" + testId;
			}
		}
		function validateEmail(email) {
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return re.test(email);
		}
		$('#search').on('click', function() {
			var text = document.getElementById("searchText").value;
			if (text.length != 0) {
				window.location = "searchTests?searchText=" + text;
			}
		});
		function confirm(id) {
			(new PNotify(
					{
						title : 'Confirmation Needed',
						text : 'Are you sure? Students having the link to this exam may no longer be able to take the exam',
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
				window.location = "retireTest?testId=" + id;
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