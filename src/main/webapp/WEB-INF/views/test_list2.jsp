<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<jsp:useBean id="random" class="java.util.Random" scope="application" />
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Tests</title>

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
<script src="./resources/scripts/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(document).ready(function() {
		var date = new Date();
		date.setDate(date.getDate() + 2);
		$("#txt2Date").datepicker({
			dateFormat : 'dd-mm-yy'
		}).datepicker('setDate', date);
		$("#txt2Date2").datepicker({
			dateFormat : 'dd-mm-yy'
		}).datepicker('setDate', date);
	});

	
</script>
</head>

<body id="top" class="has-header-search" onload="sort('ASC', 0,'Title')">

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
						<li><a href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
						<li><a href="question_list">Question Bank</a></li>
						<li class="active"><a href="testlist">Tests</a></li>
						<li><a href="skills">Skills</a></li>
						<li><a href="showReports">Results</a></li>
						<li><a href="practice">Practice</a></li>
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
			<div class="row mt-5">
				<div class="col-md-12">
					<div class="col-md-6"></div>
					<div class="col-md-2">
						<a href="addtest" class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-plus-circle"></i> Add New</a>
					</div>
					<div class="col-md-2">
						<a
							href="javascript:notify('Information', 'Feature to upload Tests coming soon. Right now we have capability to upload Users and Questions.');"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-upload"></i> Import</a>
					</div>
					<div class="col-md-2">
						<a href="signoff" class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-sign-out"></i> Sign Off</a>
					</div>
				</div>

				<div class="col-md-12">
					<div class="col-md-12">
						<div class="pagination" style="float: right;" id="pagination">
							<%-- <c:if test="${showPreviousPage}">
								<a href="${callingMethod}?page=${previousPage}${queryParam}"><i
									class="fa fa-arrow-left"></i></a>
							</c:if>

							<c:if test="${selectedPage != null &&  selectedPage > 0}">
                                    ${selectedPage} / ${totalNumberOfPages}
                                </c:if>

							<c:if test="${showNextPage}">
								<a href="${callingMethod}?page=${nextPage}${queryParam}"><i
									class="fa fa-arrow-right"></i></a>
							</c:if> --%>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="mt-10"></div>
					<div class="col-md-5">
						<h1 style="color: #b07c2a;">
							<b>Test Bank</b>
						</h1>
					</div>
					<div class="col-md-4">
						<div class="widget widget_search">

							<div class="search-form">
								<%-- <form action="searchTests" method="get"> --%>
									<input type="text" placeholder="Search a Test" name="searchText" id="tName" class="tName">
									<button type="submit" id="search" onclick="search()">
										<i class="fa fa-search"></i>
									</button>
							</div>
						</div>
					</div>
					<div class="col-md-3" style="padding: 0;">
						<div class="mt-10"></div>
						<div class="col-md-4"></div>
						<!-- <div class="col-md-4" style="padding-left: 0;">
							<a href="javascript:notify('Information', 'Feature coming soon')">
								<i class="fa fa-sort-amount-asc"></i> <span>Sort</span>
							</a>
						</div> -->

						<div class="col-md-4" style="padding: 0;">

							<form:form modelAttribute="test">
								<form:select path="totalMarks" onchange="sort('ASC', 0,'Title')" class="form-control" id="pageSize" multiple="false">
									<c:forEach var="size" items="${pgSize}">
										<form:option value="${size}">
											<c:out value="${size}" />
										</form:option>
									</c:forEach>			
								</form:select>
							</form:form>
						</div>

						<div class="col-md-4" style="padding: 0;">
							<a href="javascript:notify('Information', 'Feature coming soon')">
								<i class="fa fa-filter"></i> <span>Filter</span>
							</a>
						</div>

					</div>
				</div>
				<div class="col-md-12">
					<div class="table-responsive testslisttable">
						<input type="hidden" id="sort" value="asc">
						<table class="table table-striped" id="tbl">
							<thead style="background-color: #03a9f4;">
								<tr>
									<th>No</th>
									<th>Test Title&nbsp;&nbsp;&nbsp;<a href="#" onclick="sort(this.id,0,'Title')" id="Title" value="ASC" style="color:black" class="glyphicon glyphicon-sort-by-alphabet"></a></th>
									<th>Category</th>
									<th>Test Time In Minutes</th>
									<th>Pass Percentage</th>
									<th>Created Date&nbsp;&nbsp;&nbsp;<a href="#" onclick="sort(this.id,0,'createDate')" id="createDate" value="ASC" style="color:black" class="glyphicon glyphicon-sort-by-alphabet"></a></th>
									<th>Last Update&nbsp;&nbsp;&nbsp;<a href="#" onclick="sort(this.id,0,'updateDate')" id="updateDate" value="ASC" style="color:black" class="glyphicon glyphicon-sort-by-alphabet"></a></th>
									<th>Expire Test</th>
									<th>Update Test</th>
									<th>Duplicate Test</th>
									<th>Share Test</th>
								</tr>
							</thead>
							<tbody>

								<%-- <c:forEach items="${tests}" var="test" varStatus="loop">
									<tr class="tr">
										<!-- <td><input type="checkbox" class="filled-in" /> <label
											for="chkall"></label></td> -->

										<td>${loop.count}</td>
										<td><a
											href="downloadOnClickTestName?testName=${test.testName}">${test.testName}</a></td>
										<td>${test.category}</td>
										<td>${test.testTimeInMinutes}</td>
										<td>${test.passPercent}</td>
										<td><c:out value="${test.cDate}"></c:out></td>
										<td><c:out value="${test.uDate}"></c:out></td>
										<td><a onClick="confirm(${test.id}); return false;" href="#">Click to Expire</a></td>
										
										<td><a href="updateTest?testId=${test.id}">Click to Update</a></td>
										
										<td><a href="javascript:void(0);" class="testname" data-name="${test.testName}" data-toggle="modal"
											onClick="javascript:duplicateOpen('${test.testName}', '${test.companyId}')"><i class="fa fa-copy"></i></a></td>
											
										<td><a href="javascript:void(0);" class="testname" data-name="${test.testName}" data-toggle="modal"
											onClick="javascript:shareOpen('${test.testName}', '${test.publicUrl}', '${test.id}','${random.nextInt()}')"><i class="fa fa-share-alt"></i></a></td>
									</tr>
								</c:forEach> --%>
							</tbody>
						</table>
					</div>

				</div>
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
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
					<li><a href="javascript:void(0)">Code Analysis Reports</a></li>
					<li><a href="javascript:void(0)">Skill based Reports</a></li>
					<li><a href="showProfileParams">Recomm Setting</a></li>
					<li><a href="listUsers">Users</a></li>
				</ul>
			</div>
		</div>
	</footer>





	<!-- Duplicate Test Popup -->
	<div id="modalcopy" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Duplicate Test</h4>
				</div>
				<div class="modal-body">
					<form method="GET" action="duplicateTest">
						<label>Existing test name</label> <input id="existing_name"
							value="Sample Test " type="text" disabled /> <label>New
							Test Name</label> <input id="newTest" type="text" required /> <label>Qualifier
							1</label> <input id="newQual1" type="text" required /> <label>Qualifier
							2</label> <input id="newQual2" type="text" />
						<div class="buttons text-center" style="padding-top: 20px;">
							<input type="button" class="waves-effect waves-light btn"
								value="Duplicate" onClick="javascript:dup()" /> <input
								class="waves-effect waves-light btn" type="button"
								data-dismiss="modal" value="Cancel" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- Share Test Popup -->
	<div id="modalshare" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Share Test</h4>
				</div>
				<div class="modal-body">

					<div role="tabpanel">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#uploadTab"
								aria-controls="uploadTab" role="tab" data-toggle="tab">Single
									Share</a></li>
							<li role="presentation"><a href="#browseTab"
								aria-controls="browseTab" role="tab" data-toggle="tab">Bulk
									Share</a></li>

							<li role="presentation"><a href="#arrangeSectionTab"
								aria-controls="arrangeSectionTab" role="tab" data-toggle="tab">Arrange
									Sections</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="uploadTab">

								<form method="POST" action="sharePublicTest"
									enctype="multipart/form-data">
									<div>
										<label>Existing test name</label> <input id="existing_name1"
											type="text" readonly="readonly" name="existing_name1" />
									</div>
									<div>
										<label>First Name</label> <input id="firstName" type="text"
											name="firstName" />
									</div>
									<div>
										<label>Last name</label> <input id="lastName" type="text"
											name="lastName" /></a>
									</div>
									<div>
										<label>Email Id</label> <input id="userEmail" type="text"
											name="userEmail" />
									</div>
									<div>
										<label>Public Test URL</label> <input id="publicTestUrl"
											type="text" readonly="readonly" />
									</div>
									<div>
										<label>Expire Date</label> <input id="txt2Date" name="expId" />
									</div>

									<input type="hidden" name="testId" id="testId" value="" />
									<div class="buttons text-center" style="padding-top: 20px;">
										<input class="waves-effect waves-light btn" type="button"
											value="Copy in your Clipboard"
											onClick="javascript:copyUrlInClipBoard()" /> <input
											class="waves-effect waves-light btn" type="submit"
											value="Share" /> <input class="waves-effect waves-light btn"
											type="button" value="Close" data-dismiss="modal" />
									</div>
								</form>

							</div>
							<div role="tabpanel" class="tab-pane" id="browseTab">

								<form method="POST" action="shareBulkPublicTest"
									enctype="multipart/form-data">
									<div>
										<label>Existing test name</label> <input id="existing_name2"
											type="text" readonly="readonly" name="existing_name1" />
									</div>
									<div>
										<input id="publicTestUrl2" type="hidden" readonly="readonly" />
									</div>
									<div>
										<label>Bulk Users</label><input type="file" name="file">
									</div>
									<div>
										<label>Expire Date</label> <input id="txt2Date2" name="expId" />
									</div>

									<input type="hidden" name="testId" id="testId2" value="" />
									<div class="buttons text-center" style="padding-top: 20px;">
										<input class="waves-effect waves-light btn" type="button"
											value="Copy in your Clipboard"
											onClick="javascript:copyUrlInClipBoard()" /> <input
											class="waves-effect waves-light btn" type="submit"
											value="Share" /> <input class="waves-effect waves-light btn"
											type="button" value="Close" data-dismiss="modal" />
									</div>
								</form>
							</div>

							<div role="tabapnel" class="tab-pane" id="arrangeSectionTab">


							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->

	<%-- 		<spring:url value="/resources/assets/js/jquery-2.1.3.min.js" var="mainJs1" /> --%>
	<%-- 		<script src="${mainJs1}"></script> --%>
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
		function dup() {
			var existing_name = document.getElementById("existing_name").value;
			var newTest = document.getElementById("newTest").value;
			var newQual1 = document.getElementById("newQual1").value;
			var newQual2 = document.getElementById("newQual2").value;
			if (newTest == '' || newTest == null) {
				notify('Info', 'Enter a name for the new Test');
			} else if (newQual1 == '' || newQual1 == null) {
				notify('Info', 'Enter a Qualifier name for the new Test');
			} else {
				window.location = "duplicateTest?existing_name="
						+ existing_name + "&newTest=" + newTest + "&newQual1="
						+ newQual1 + "&newQual2=" + newQual2;
			}

		}

		function duplicateOpen(testName, tenantId) {
			var name = $(this).attr('data-name');
			console.log('here ' + testName);
			console.log(tenantId);
			document.getElementById("existing_name").value = testName;
			$('#modalcopy').modal('show');
			$('#modalshare').modal('hide');
		}

		function shareOpen(testName, testPublicUrl, testId) {
			var name = $(this).attr('data-name');
			console.log('TestId ' + testId);
			console.log('here TestName' + testName);
			console.log('here PublicURL' + testPublicUrl);
			//var str = uniqueId;
			//var uniqURL = testPublicUrl.concat('&uid='+str);
			//console.log(uniqURL)
			document.getElementById("existing_name1").value = testName;
			document.getElementById("publicTestUrl").value = testPublicUrl;
			document.getElementById("testId").value = testId;
			document.getElementById("existing_name2").value = testName;
			document.getElementById("publicTestUrl2").value = testPublicUrl;
			document.getElementById("testId2").value = testId;
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
			//       		var uemail = document.getElementById("uemail").value;
			var existing_name1 = document.getElementById("existing_name1").value;
			var firstName = document.getElementById("firstName").value;
			var lastName = document.getElementById("lastName").value;
			var userEmail = document.getElementById("userEmail").value;
			var testId = document.getElementById("testId").value;
			var expId = document.getElementById("txt2Date").value;
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
						+ "&testId=" + testId + "&expId=" + expId;
			}

		}

		function validateEmail(email) {
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return re.test(email);
		}

		/* $('#search').on('click', function() {
			var text = document.getElementById("searchText").value;
			if (text.length != 0) {
				window.location = "searchTests?searchText=" + text;
			}
		}); */

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

// Added By Dhanshree

		function sort(sort, page,colName) {
			 if(page===undefined){
							page=0;
			}

			 var a=$("#"+sort).attr("value");
			 if(a===undefined){
					a="ASC";
			}	

			var search= $("#tName").val();
			console.log("-------"+search);
			console.log("-------"+sort);
			console.log("a>>>>>>" +a);
			console.log("Value of sort: " + sort);
			var size = $("#pageSize").val();
			console.log("size:   " + size);
			console.log("colname:"+colName);
			$.ajax({
				url : 'sortTest?sortBy=' +a+ "&page=" + page+"&size="+size+"&colName="+colName+"&searchText="+search,
				type : 'GET',
				success : function(response) {
					console.log("Response value:"+ response.sortBy);
					var no=response.srNo;
					$(".tr").remove();
					for (var i = 0; i < response.qs.length; i++) {
						var today = null;
						if (response.qs[i].updateDate != null) {
							today = new Date(response.qs[i].updateDate).toLocaleDateString('en-GB', {
												day : 'numeric',
												month : 'short',
												year : 'numeric'
											}).split(' ').join('-');
						}
						else{
							today="NA";
							}
						no=no+1;
						$("#tbl").append(
								"<tr class='tr'><td>"
								+ no+
								"</td><td><a href='downloadOnClickTestName?testName="+ response.qs[i].testName+"'>"+ response.qs[i].testName+ "</a></td><td>"
								+ response.qs[i].category+ 
								"</td><td>"
								+ response.qs[i].testTimeInMinutes+ 
								"</td><td>"
								+ response.qs[i].passPercent+
								"</td><td>"
								+ response.qs[i].cDate+ 
								"</td><td>"
								+ today+
								"</td><td><a href='javascript:confirm("+ response.qs[i].id+ ")' >Click to Expire</a></td><td><a href='updateTest?testId="+ response.qs[i].id+ "' >Click to Update</a></td><td><a href='javascript:duplicateOpen(\""+ response.qs[i].testName+ "\",\""+ response.qs[i].companyId+ "\")' ><i class='fa fa-copy'></i></a></td><td><a href='javascript:shareOpen(\""+ response.qs[i].testName+ "\",\""+ response.qs[i].publicUrl+ "\","+ response.qs[i].id+ ")' ><i class='fa fa-share-alt'></i></a></td></tr>")
							}
							var colName=response.colName;
							console.log(":::"+colName);
							var selector;
							var testTitle="Title";
							var createDate="createDate";
							var updateDate="updateDate";
							var className="";

							if(colName==testTitle){
								className = $('#'+testTitle).attr('class');
								if (response.sortBy == "ASC") {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "DESC");
									$("#"+testTitle).removeClass(className).addClass("glyphicon glyphicon-sort-by-alphabet");
								} else {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "ASC");
									$("#"+testTitle).removeClass(className).addClass("glyphicon glyphicon-sort-by-alphabet-alt");
								}
							}else{
								className = $('#'+testTitle).attr('class');
								$("#"+testTitle).removeClass(className).addClass("glyphicon glyphicon-sort");
							}

							if(colName==createDate){
								className = $('#'+createDate).attr('class');
								if (response.sortBy == "ASC") {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "DESC");
									$("#"+createDate).removeClass(className).addClass("fa fa-sort-numeric-asc");
								} else {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "ASC");
									$("#"+createDate).removeClass(className).addClass("fa fa-sort-numeric-desc");
								}
							}else{
								className = $('#'+createDate).attr('class');
								$("#"+createDate).removeClass(className).addClass("glyphicon glyphicon-sort");
								}

							if(colName==updateDate){
								className = $('#'+updateDate).attr('class');
								if (response.sortBy == "ASC") {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "DESC");
									$("#"+updateDate).removeClass(className).addClass("fa fa-sort-numeric-asc");
								} else {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "ASC");
									$("#"+updateDate).removeClass(className).addClass("fa fa-sort-numeric-desc");
								}
							}else{
								className = $('#'+updateDate).attr('class');
								$("#"+updateDate).removeClass(className).addClass("glyphicon glyphicon-sort");
								}
							
							/* if (response.sortBy == "ASC") {
								$("#ASC").attr('id', "DESC");
							} else {
								$("#DESC").attr('id', "ASC");
							} */

							var sortBy = response.sortBy;
							var page = response.page;
							var TotalPage = response.TotalPage;
							console.log("current: page: " + page);
							console.log("total:  " + TotalPage);
							var cpage = page + 1;
							var ppage = page - 1;
							$(".dd").remove();
							if (0 == TotalPage - 1) {
								$("#pagination").append("<div class='dd'>" + cpage + "</div>")
							} 
							else if (page == 0) {
								$("#pagination").append("<div class='dd'>"+ cpage+ "<a class='tt' href='javascript:sort(\""+ sortBy+ "\","+ cpage+ ",\""+ colName+ "\")'><i class='fa fa-arrow-right'></i></a></div>")
							} 
							else if (page == TotalPage - 1) {
								$("#pagination").append("<div class='dd'><a class='tt' href='javascript:sort(\""+ sortBy+ "\","+ ppage+ ",\""+ colName+ "\")'><i class='fa fa-arrow-left'></i></a>"+ cpage + "</div>")

							} 
							else {
								$("#pagination").append("<div class='dd'><a class='tt' href='javascript:sort(\""+ sortBy+ "\","+ ppage+ ",\""+ colName+ "\")'><i class='fa fa-arrow-left'></i></a>"+ cpage+ "<a class='tt' href='javascript:sort(\""+ sortBy+ "\","+ cpage+ ",\""+ colName+ "\")'><i class='fa fa-arrow-right'></i></a></div>")

							}
						}
					});
		}

		function search()
		{
			 sort('ASC', 0,'Name')
		}

		$(document).on('keypress',function(e){
			if(e.which==13){
				 sort('ASC', 0,'Name')
			}
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
