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

<script>
	/* When the user clicks on the button,
	 toggle between hiding and showing the dropdown content */
	function myFunction() {
		document.getElementById("myDropdown").classList.toggle("show");
	}
	function filterFunction() {
		var input, filter, ul, li, a, i;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		div = document.getElementById("myDropdown");
		a = div.getElementsByTagName("a");
		for (i = 0; i < a.length; i++) {
			txtValue = a[i].textContent || a[i].innerText;
			if (txtValue.toUpperCase().indexOf(filter) > -1) {
				a[i].style.display = "";
			} else {
				a[i].style.display = "none";
			}
		}
	}
</script>
	
</head>

<body id="top" class="has-header-search" onload="sort('ASC', 0,'Question')">

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
						<li class="active"><a href="question_list">Question Bank</a></li>
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
						<li><a href="listUsers">Users</a></li>
						<a href="/AssesmentApp/OnetPage">Assessment Profiler</a>
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
					<div class="col-md-4"></div>
					<div class="col-md-2">
						<a href="addQuestion"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-plus-circle"></i> Add New</a>
					</div>
					<div class="col-md-2">
						<a href="javascript:showFileDialog();" id="uploadQuestionsLink"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-upload"></i> Import</a>
					</div>

					<div class="dropdown">
						<div class="col-md-2">
							<div class="dropdown">
								<button type="button" class="btn btn-primary dropdown-toggle"
									data-toggle="dropdown" onclick="myFunction()">
									<i class="material-icons fa fa-download"></i>Download
								</button>
								<div class="dropdown-menu" id="myDropdown">
									<input type="text" placeholder="Search.." id="myInput"
										onkeyup="filterFunction()">
									<c:forEach items="${qu}" var="qualifier1">
										<a style="padding-left: 5px;" class="dropdown-item"
											href="<%=request.getContextPath()%>/downloadQuestion?qualifier1=${qualifier1}">${qualifier1}</a>
										<br />

									</c:forEach>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-2">
						<a href="signoff" class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-sign-out"></i> Sign Off</a>
					</div>

				</div>
				<%-- 								<form id="fileFormQuestions" method="POST" enctype="multipart/form-data"> --%>
				<!-- 										<input type="file" name="fileQuestions" id="fileQuestions" style="display: none" /> -->

				<%-- 								</form> --%>
				<form id="fileFormQuestions" method="POST"
					enctype="multipart/form-data">
					<input type="file" name="fileQuestions" id="fileQuestions"
						style="display: none" />
				</form>
				<div class="col-md-12">
					<div class="col-md-12">
						<div class="pagination" style="float: right;" id="pagination"></div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="mt-10"></div>
					<div class="col-md-5">
						<h1 style="color: #b07c2a;">
							<b>Question Bank</b>
						</h1>
					</div>
					<div class="col-md-4">
						<div class="widget widget_search">

							<div class="search-form">
									<input type="text" placeholder="Search a question" name="searchText" id="tName" class="tName">
 									<button type="submit" id="search" onclick="search()"> 
										<i class="fa fa-search"></i>
									</button>
							</div>
						</div>
					</div>
					<div class="col-md-3" style="padding: 0;">
						<div class="mt-10"></div>
						<div class="col-md-4"></div>
<!-- 						<div class="col-md-4" style="padding-left: 0;"> -->
<!-- 							<a href="javascript:notify('Information', 'Feature coming soon')"> -->
<!-- 								<i class="fa fa-sort-amount-asc"></i> <span>Sort</span> -->
<!-- 							</a> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-4" style="padding: 0;"> -->
<!-- 							<a href="javascript:notify('Information', 'Feature coming soon')"> -->
<!-- 								<i class="fa fa-filter"></i> <span>Filter</span> -->
<!-- 							</a> -->
<!-- 						</div> -->
					</div>
				</div>
				<div class="col-md-12">
					<div class="table-responsive">
					
						<input type="hidden" id="sort" value="asc">
						<table class="table table-striped" id="tbl">
							<thead style="background-color: #03a9f4;">
								<tr>
									<th>No</th>
									<th>Question&nbsp;&nbsp;&nbsp;<a href="#" onclick="sort(this.id,0,'Question')" id="Question" value="ASC" style="color:black" class="glyphicon glyphicon-sort-by-alphabet"></a></th>
									
									<th style="white-space: nowrap;">Category</th>
									
									<th>Difficulty Level&nbsp;&nbsp;&nbsp;<a href="#" onclick="sort(this.id,0,'difficultyLevel')" id="difficultyLevel" value="ASC" style="color:black" class="glyphicon glyphicon-sort-by-alphabet"></a></th>
									
									<th style="white-space: nowrap;">Updated On</th>
									
									<th style="white-space: nowrap;">Update</th>
									<th style="white-space: nowrap;">Delete</th>
								</tr>
							</thead>
							<tbody>
							<tbody>

							<%-- 	<c:forEach items="${qs}" var="question" varStatus="loop">
									<tr>
										<td>${loop.count}</td>
										<td><c:out value="${question.questionText}"></c:out></td>
										<td>${question.category}</td>
										<td><c:out value="${question.difficultyLevel.level}"></c:out></td>
										<td><c:out value="${question.updatedDate}"></c:out></td>
										<td><a href="addQuestion?qid=${question.id}">Click </a></td>
										<td><a href="javascript:confirm('${question.id}')">Click
										</a></td>
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

	<script>
		/* off-canvas sidebar toggle */
		$('[data-toggle=offcanvas]').click(
				function() {
					$('.row-offcanvas').toggleClass('active');
					$('.collapse').toggleClass('in').toggleClass('hidden-xs')
							.toggleClass('visible-xs');
				});
		$('#search').on('click', function() {
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
			$("#fileQuestions	").click();
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
							fileU.addEventListener("change",function() {
												if (fileU.files.length > 0) {
													var filename = $.trim(file.val());
													if (!(isXlsx(filename))) {
														notify('Error','Please select an xlsx file to upload');
														return;
													}
													$	.ajax(	{xhr : function() {
																			var xhr = new window.XMLHttpRequest();
																			return xhr;
																		},
																		url : 'upload',
																		type : "POST",
																		data : new FormData(document.getElementById("fileFormQuestions")),
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


		function sort(sort, page,colName) {
			 if(page===undefined){
							page=0;
			}
			 console.log("Page:"+page);
			 console.log("ColName:"+colName);

			 var a=$("#"+sort).attr("value");
			 if(a===undefined){
					a="ASC";
			}	
			var search= $("#tName").val();
			console.log("-------"+search);
			console.log("Sort-------"+sort);
			console.log("a>>>>>>" +a);
			console.log("Value of sort: " + sort);
//			var size = $("#pageSize").val();
//			console.log("size:   " + size);
			$.ajax({
				url : 'sort?sortBy=' +a+ "&page="+page+"&colName="+colName+"&searchText="+search,
				type : 'GET',
				success : function(response) {
					console.log(response);
					console.log("Response value:"+ response.sortBy);
					var no=response.srNo;
					$(".tr").remove();
					for (var i = 0; i < response.qs.length; i++) {
						no=no+1;
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
							$("#tbl").append(
							"<tr class='tr'><td>"
							+no+
							"</td><td>"
							+response.qs[i].questionText+	
							"</td><td>"
							+response.qs[i].questionCategory+
							"</td><td>"
							+response.qs[i].difficultyLevel+
							"</td><td>"
							+today+
							"</td><td><a href='addQuestion?qid=" + response.qs[i].id + "' >click</a></td><td><a href='javascript:confirm(" + response.qs[i].id + ")' >click</a></td></tr>")
						}
							var colName=response.colName;
							console.log(":::"+colName);
							var selector;
							var question="Question";
							var difficultyLevel="difficultyLevel";
							var className="";

							if(colName==question){
								className = $('#'+question).attr('class');
								if (response.sortBy == "ASC") {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "DESC");
									$("#"+question).removeClass(className).addClass("glyphicon glyphicon-sort-by-alphabet");
								} else {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "ASC");
									$("#"+question).removeClass(className).addClass("glyphicon glyphicon-sort-by-alphabet-alt");
								}
							}else{
								className = $('#'+question).attr('class');
								$("#"+question).removeClass(className).addClass("glyphicon glyphicon-sort");
							}

							if(colName==difficultyLevel){
								className = $('#'+difficultyLevel).attr('class');
								if (response.sortBy == "ASC") {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "DESC");
									$("#"+difficultyLevel).removeClass(className).addClass("glyphicon glyphicon-sort-by-alphabet");
								} else {
									selector = document.getElementById(colName);
									selector.setAttribute('value', "ASC");
									$("#"+difficultyLevel).removeClass(className).addClass("glyphicon glyphicon-sort-by-alphabet-alt");
								}
							}else{
								className = $('#'+difficultyLevel).attr('class');
								$("#"+difficultyLevel).removeClass(className).addClass("glyphicon glyphicon-sort");
							}


							var sortBy = response.sortBy;
							var page = response.page;
							var TotalPage = response.TotalPage;
							console.log("Current page: " + page);
							console.log("Total Pages:  " + TotalPage);
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
			sort('ASC', 0,'Question')
		}

		$(document).on('keypress',function(e){
			if(e.which==13){
				sort('ASC', 0,'Question')
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
	
	<script>
		/*$(document).ready(function(){
			$(".dropbtn").hover(function(){
				$(".dropdown-content").css("display","block");
				$(".dropdown").css("display","block");
			},
			function(){
				$(".dropdown-content").css("display","none");
				$(".dropdown").css("display","none");
			});
		});*/
	</script>
</body>

</html>