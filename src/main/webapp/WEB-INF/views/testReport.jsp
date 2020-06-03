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
<title>Student Result</title>
<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> -->

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>

<body id="top" class="has-header-search" onload="sortName('ASC', 0,'${param.testName}','Name')">

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
						<li><a
							href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
						<li><a href="question_list">Question Bank</a></li>
						<li><a href="testlist">Tests</a></li>
						<li><a href="skills">Skills</a></li>
						<li class="active"><a href="showReports">Results</a></li>
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
					<div class="mt-10"></div>
					<div class="col-md-5">
						<h1 style="color: #b07c2a;">
							<b style="font-size: x-large;">${reportType}</b>
						</h1>
					</div>

					<div class="col-md-4">

						<div class="widget widget_search">
							<div class="search-form">
								<%-- <form action="searchTestNameWiseUIReport" method="get">
									<input type="text" placeholder="Search a Report" name="searchReport" id="searchTestNameWiseUIReport" value="${param.searchReport}">  --%>
										<input type="text" placeholder="Search a Report " name="searchText" id="searchText">
									 	<input type="hidden" value="${param.testName}" name="testName" id="tName" class="tName"> 
									 <button type="submit" id="search" onclick="search()">
										<i class="fa fa-search"></i>
									</button> 
								</form>
							</div>
						</div>
					</div>
					
					<div class="col-md-12">
					<div class="col-md-12">
						<div class="pagination" style="float: right;" id="pagination">
						
						</div>
					</div>
				</div>

					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table table-striped" id="tbl">
								<thead style="background-color: #03a9f4;">
									<tr>
										<th onclick="sortName(this.id,0,'${param.testName}','Name')" id="ASC" class="CCC"><b>Name</b><i class="fa fa-fw fa-sort"></i></th>
										<th style="width: 20%" onclick="sortName(this.id,0,'${param.testName}','Contact')" id="ASC" class="CCC"><b>Contact</b></th>
										<th style="width: 5%"><b>Test Name</b></th>
										<th><b>Section Wise</b></th>
										<th onclick="sortName(this.id,0,'${param.testName}','TestStart')" id="ASC" class="CCC"><b>Test Start </b></th>
										<th onclick="sortName(this.id,0,'${param.testName}')" id="ASC" class="CCC"><b>Test End</b></th>
										<th onclick="sortName(this.id,0,'${param.testName}','Result')" id="ASC" class="CCC"><b>Result</b></th>
										<th style="width: 20%"><b>Attempts</b></th>
										<th onclick="sortName(this.id,0,'${param.testName}','SecurityBreech')" id="ASC" class="CCC" ><b>No. of Security Breech</b></th>
										<th><b>URL</b></th>
									</tr>
								</thead>
								<tbody>
								<tbody>

									<%-- <c:forEach items="${reportList}" var="session">
										<tr class="tr">
											<td><a href="javascript:getRank('${session.email}')">${session.firstName}</a></td>
											<td>${session.email}</td>
											<td>${session.testName}</td>
											<td>${session.sectionWiseScore}</td>
											<td>${session.testStartDate}</td>
											<td>${session.testEndDate}</td>
											<td>${session.result}</td>
											<td>${session.noOfAttempts}</td>
											<td>${session.noOfNonCompliances}</td>
											<td><a href="${session.urlForUserSession}">Download Report</a></td>
																						<td>${session.topCandidatesEmail}</td>
											<!-- 											<td><a -->
																							href="downloadUserReportsForTest?testName=${session.testName}">Click
											<!-- 											</a></td> -->
											<!-- 											<td><a -->
																							href="downloadUserReportsForTestWithExtraAttrs?testName=${session.testName}">Click
											<!-- 											</a></td> -->

										</tr>
									</c:forEach> --%>
								</tbody>

							</table>
						</div>

					</div>
				</div>
				<!-- /.row -->

			</div>

		</div>
		<!-- /.container -->
	</section>

<!-- TestRank Popup -->
	<div id="modalshare" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Test Rank</h4>
				</div>
				<div class="modal-body">

					<div role="tabpanel">
						<!-- Nav tabs -->

						<table id="tblRank">
							<tr>
								<th>Test Name</th>
								<th>Rank</th>
							</tr>
						</table>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="uploadTab">



							</div>
							<div role="tabpanel" class="tab-pane" id="browseTab"></div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

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

	<!-- JavaScript -->
	
	<script>
 
		function getRank(email) {
			console.log(email);
			$.ajax({
				url : "getRank?email=" + email/* +"&companyId="+companyId */,
				method : "GET",
				success : function(response) {
					console.log(response.rankList)
					$(".trRank").remove();//here is the is issue
					for (var i = 0; i < response.rankList.length; i++) {
						$("#tblRank").append(
								"<tr class='trRank'><td>"
										+ response.rankList[i].testName
										+ "</td><td>"
										+ response.rankList[i].testId
										+ "</td><td></tr>")
					}
					$('#modalshare').modal('show');
				}
			});
		}

		

		function searchUIReport(testName) {
			var txt=$("#searchText").val();
			$.ajax({
				url : 'searchTestNameWiseUIReport?searchReport='+ searchText + "&testName=" + testName,
				type : 'GET',
				success : function(response) {
					console.log(response.qs);
					$(".tr").remove();
					for (var i = 0; i < response.qs.length; i++) {
						$("#tbl").append(
								"<tr class='tr'><td><a href='javascript:getRank(\""+response.qs[i].email+"\")'>"+response.qs[i].firstName+"</a></td><td>"
								+ response.qs[i].email+
								"</td><td>"
								+response.qs[i].testName+
								"</td><td>"
								+response.qs[i].sectionWiseScore+
								"</td><td>"
								+response.qs[i].testStartDate+
								"</td><td>"
								+response.qs[i].testEndDate+
								"</td><td>"
								+response.qs[i].result+
								"</td><td>"
								+response.qs[i].noOfAttempts+
								"</td><td>"
								+response.qs[i].noOfNonCompliances+
								"</td><td><a href='" + response.qs[i].urlForUserSession + "'>Download Report</a></td></tr>")
					}
					
					if (response.sortBy == "ASC") {
						$("#ASC").attr('id', "DESC");
					} else {
						$("#DESC").attr('id', "ASC");
					}

				}

				});
		}
		
		function sortName(sort, page,testName,colName) {
			 if(page===undefined){
				page=0;
			}

			 var search= $("#searchText").val();
			console.log("Value of sort: " + sort);
			console.log("colName:"+colName);
			$.ajax({
				url : 'sortName?sortBy=' + sort + "&page=" + page+ "&testName=" + testName+"&colName="+colName+ "&searchText="+search,
				type : 'GET',
				success : function(response) {
					console.log("Response val:"+ response.sortBy);
					console.log(response.qs);
					var testName=response.testName;
					$(".tr").remove();
					for (var i = 0; i < response.qs.length; i++) {
						$("#tbl").append(
								"<tr class='tr'><td><a href='javascript:getRank(\""+response.qs[i].email+"\")'>"+response.qs[i].firstName+"</a></td><td>"
								+ response.qs[i].email+
								"</td><td>"
								+response.qs[i].testName+
								"</td><td>"
								+response.qs[i].sectionWiseScore+
								"</td><td>"
								+response.qs[i].testStartDate+
								"</td><td>"
								+response.qs[i].testEndDate+
								"</td><td>"
								+response.qs[i].result+
								"</td><td>"
								+response.qs[i].noOfAttempts+
								"</td><td>"
								+response.qs[i].noOfNonCompliances+
								"</td><td><a href='" + response.qs[i].urlForUserSession + "' >Download Report</a></td></tr>")
							}
							if (response.sortBy == "ASC") {
								$("#ASC").attr('id', "DESC");
							} else {
								$("#DESC").attr('id', "ASC");
							}

						 	var sortBy = response.sortBy;
							var page = response.page;
							var TotalPage = response.TotalPage;
							var colName=response.colName;
							console.log("current page: " + page);
							console.log("total page:  " + TotalPage);
							console.log(response.colName);
							var cpage = page + 1;
							var ppage = page - 1;
							$(".dd").remove();
							if (0 == TotalPage - 1) {
								$("#pagination").append("<div class='dd'>" + cpage + "</div>")
							} 
							else if (page == 0) {
								$("#pagination").append("<div class='dd'>"+ cpage+ "<a class='tt' href='javascript:sortName(\""+ sortBy+ "\","+ cpage+ ",\""+ testName+ "\",\""+ colName+ "\")'><i class='fa fa-arrow-right'></i></a></div>")
							} 
							else if (page == TotalPage - 1) {
								$("#pagination").append("<div class='dd'><a class='tt' href='javascript:sortName(\""+ sortBy+ "\","+ ppage+ ",\""+ testName+ "\",\""+ colName+ "\")'><i class='fa fa-arrow-left'></i></a>"+ cpage + "</div>")

							} 
							else {
								$("#pagination").append("<div class='dd'><a class='tt' href='javascript:sortName(\""+ sortBy+ "\","+ ppage+ ",\""+ testName+ "\",\""+ colName+ "\")'><i class='fa fa-arrow-left'></i></a>"+ cpage+ "<a class='tt' href='javascript:sortName(\""+ sortBy+ "\","+ cpage+ ",\""+ testName+ "\",\""+ colName+ "\")'><i class='fa fa-arrow-right'></i></a></div>")

							} 
						}

					});
		}

		function search()
		{
			 var testName=$("#tName").val();
			 sortName('ASC', 0,testName,'Name')
		}

		$(document).on('keypress',function(e){
			if(e.which==13){
				 var testName=$("#tName").val();
				 sortName('ASC', 0,testName,'Name')
			}
		});
		
		
	</script>


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

</body>

</html>