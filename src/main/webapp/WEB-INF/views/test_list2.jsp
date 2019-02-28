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

</head>

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
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not (.active ) {
	background-color: #111;
}

.active {
	background-color: #4CAF50;
}
</style>

<body id="top" class="has-header-search">

	<!--header start-->
	<header id="header" class="tt-nav nav-border-bottom">
		<div class="header-sticky light-header ">
			<div class="container">
				<div id="materialize-menu" class="menuzord menuzord-responsive">
					<a href="javascript:void(0)" class="showhide"
						style="display: none;"><em></em><em></em><em></em></a>
					<!--logo start-->
					<a href="http://beforesubmit.com/qe-assess/index.html"
						class="logo-brand"> <img class="retina" src="images/Logo2.png"
						alt="">
					</a>
					<!--logo end-->
					<!--mega menu start-->
					<ul class="menuzord-menu pull-right menuzord-indented scrollable"
						style="max-height: 400px;">
						<li><a href="javascript:void(0)">Dashboard</a></li>
						<li class="active"><a href="question_list">Question Bank</a></li>
						<li><a href="testlist">Tests</a></li>
						<li><a href="javascript:void(0)">Skills</a></li>
						<li><a href="javascript:void(0)">Results</a></li>
						<li><a href="javascript:void(0)">Code Analysis Reports</a></li>
						<li><a href="javascript:void(0)">Skill based Reports</a></li>
						<li><a href="javascript:void(0)">Users</a></li>
						<li class="scrollable-fix"></li>
					</ul>
					<!--mega menu end-->
				</div>
			</div>
		</div>
	</header>
	<!-- header end -->
	>

	<section>
		<div class="container">
			<div class="row mt-5">
				<div class="col-md-12">
					<div class="col-md-6"></div>
					<div class="col-md-2">
						<a href="http://beforesubmit.com/qe-assess/tests.html#"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-plus-circle"></i> Add New</a>
					</div>
					<div class="col-md-2">
						<a href="http://beforesubmit.com/qe-assess/tests.html#"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-upload"></i> Import</a>
					</div>
					<div class="col-md-2">
						<a href="http://beforesubmit.com/qe-assess/tests.html#"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-sign-out"></i> Sign Off</a>
					</div>
				</div>

				<div class="col-md-12">
					<div class="col-md-12">
						<div class="pagination" style="float: right;">
							<div class="pagination">
								<c:if test="${showPreviousPage}">
									<a href="${callingMethod}?page=${previousPage}${queryParam}"><i
										class="fa fa-arrow-left"></i></a>
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
				</div>

				<div class="col-md-12">
					<div class="mt-10"></div>
					<div class="col-md-5">
						<h1>Test Bank</h1>
					</div>
					<div class="col-md-4">
						<div class="widget widget_search">
							<form role="search" method="get" class="search-form">
								<input type="text" class="form-control" value="" name="s" id="s"
									placeholder="Search a question">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="col-md-3" style="padding: 0;">
						<div class="mt-10"></div>
						<div class="col-md-4"></div>
						<div class="col-md-4" style="padding-left: 0;">
							<a href="http://beforesubmit.com/qe-assess/tests.html#"> <i
								class="fa fa-sort-amount-asc"></i> <span>Sort</span>
							</a>
						</div>
						<div class="col-md-4" style="padding: 0;">
							<a href="http://beforesubmit.com/qe-assess/tests.html#"> <i
								class="fa fa-filter"></i> <span>Filter</span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="table-responsive testslisttable">
						<table class="table table-striped">
							<thead>
								<tr>
									<th><input type="checkbox" id="chkall" name="chkall"
										class="filled-in"> <label for="chkall"></label></th>
									<th class="title">Test Title</th>
									<th>Category</th>
									<th>Test Time In Minutes</th>
									<th>Pass Percentage</th>
									<th>Created By</th>
									<th>Last Update</th>
									<th>Expire Test</th>
									<th>Update Test</th>
									<th>Duplicate Test</th>
									<th>Share Test</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${tests}" var="test">
									<tr>
										<td><input type="checkbox"></td>

										<td><c:out value="${test.testName}"></c:out></td>

										<td>${test.category}</td>
										<td>${test.testTimeInMinutes}</td>
										<td>${test.passPercent}</td>

										<td><c:out value="${test.cDate}"></c:out></td>
										<td><c:out value="${test.uDate}"></c:out></td>
										<td><a onClick="confirm(${test.id}); return false;"
											href="#">Click to Expire</a></td>
										<td><a href="updateTest?testId=${test.id}">Click to
												Update</a></td>
										<td><a href="javascript:void(0);" class="testname"
											data-name="${test.testName}" data-toggle="modal"
											onClick="javascript:duplicateOpen('${test.testName}', '${test.companyId}')"><i
												class="fa fa-copy"></i></a></td>
										<td><a href="javascript:void(0);" class="testname"
											data-name="${test.testName}" data-toggle="modal"
											onClick="javascript:shareOpen('${test.testName}', '${test.publicUrl}', '${test.id}')"><i
												class="fa fa-share-alt"></i></a></td>
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

	<!-- Duplicate Test Popup -->
	<div id="modalcopy" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Duplicate Test</h4>
				</div>
				<div class="modal-body">
					<form method="GET"
						action="http://beforesubmit.com/qe-assess/duplicateTest">
						<label class="active">Existing test name</label> <input
							id="existing_name" value="Sample Test " type="text" disabled="">
						<label class="active">New Test Name</label> <input id="newTest"
							type="text" required=""> <label class="active">Qualifier
							1</label> <input id="newQual1" type="text" required=""> <label
							class="active">Qualifier 2</label> <input id="newQual2"
							type="text">
						<div class="buttons text-center" style="padding-top: 20px;">
							<i class="waves-effect waves-light btn waves-input-wrapper"
								style=""><input type="button" class="waves-button-input"
								value="Duplicate" onclick="javascript:dup()"></i> <i
								class="waves-effect waves-light btn waves-input-wrapper"
								style=""><input class="waves-button-input" type="button"
								data-dismiss="modal" value="Cancel"></i>
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
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Share Test</h4>
				</div>
				<div class="modal-body">
					<form method="POST"
						action="http://beforesubmit.com/qe-assess/sharePublicTest">
						<label>Existing test name</label> <input id="existing_name1"
							type="text"> <label>First Name</label> <input
							id="firstName" type="text"> <label>Last name</label> <input
							id="lastName" type="text"> <label>Email Id</label> <input
							id="userEmail" type="text"> <label>Public Test
							URL</label> <input id="publicTestUrl" type="text"> <input
							type="hidden" name="testId" id="testId" value="">
						<div class="buttons text-center" style="padding-top: 20px;">
							<i class="waves-effect waves-light btn waves-input-wrapper"
								style=""><input class="waves-button-input" type="button"
								value="Copy in your Clipboard"
								onclick="javascript:copyUrlInClipBoard()"></i> <i
								class="waves-effect waves-light btn waves-input-wrapper"
								style=""><input class="waves-button-input" type="button"
								value="Share" onclick="javascript:shareTest()"></i> <i
								class="waves-effect waves-light btn waves-input-wrapper"
								style=""><input class="waves-button-input" type="button"
								value="Close" data-dismiss="modal"></i>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script src="./Tests_files/jquery-2.1.3.min.js.download"></script>
	<script src="./Tests_files/bootstrap.min.js.download"></script>
	<script src="./Tests_files/materialize.min.js.download"></script>
	<script src="./Tests_files/menuzord.js.download"></script>
	<script src="./Tests_files/bootstrap-tabcollapse.min.js.download"></script>
	<script src="./Tests_files/jquery.easing.min.js.download"></script>
	<script src="./Tests_files/jquery.sticky.min.js.download"></script>
	<script src="./Tests_files/smoothscroll.min.js.download"></script>
	<script src="./Tests_files/imagesloaded.js.download"></script>
	<script src="./Tests_files/jquery.stellar.min.js.download"></script>
	<script src="./Tests_files/jquery.inview.min.js.download"></script>
	<script src="./Tests_files/jquery.shuffle.min.js.download"></script>
	<script src="./Tests_files/owl.carousel.min.js.download"></script>
	<script src="./Tests_files/jquery.flexslider-min.js.download"></script>
	<script src="./Tests_files/jquery.magnific-popup.min.js.download"></script>
	<script src="./Tests_files/scripts.js.download"></script>


	<div class="hiddendiv common"></div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script>
	
	function dup(){
	 var existing_name = document.getElementById("existing_name").value;
	 var newTest = document.getElementById("newTest").value;
	var newQual1 = document.getElementById("newQual1").value;
	var newQual2 = document.getElementById("newQual2").value;
		if(newTest == '' || newTest == null){
		notify('Info', 'Enter a name for the new Test');
		}
		else if(newQual1 == '' || newQual1 == null){
		notify('Info', 'Enter a Qualifier name for the new Test');
		}
		else{
		window.location = "duplicateTest?existing_name="+existing_name+"&newTest="+newTest+"&newQual1="+newQual1+"&newQual2="+newQual2;
		}
	
	}
	
	function duplicateOpen(testName, tenantId){
	   var name = $(this).attr('data-name');
		 console.log('here '+testName);
		 console.log(tenantId);
		 document.getElementById("existing_name").value=testName;
	$('#modalcopy').modal('show');
	$('#modalshare').modal('hide');
	}

	function shareOpen(testName, testPublicUrl, testId){
	   var name = $(this).attr('data-name');
		 console.log('here '+testName);
		
		 document.getElementById("existing_name1").value=testName;
		 document.getElementById("publicTestUrl").value=testPublicUrl;
		  document.getElementById("testId").value=testId;
	$('#modalcopy').modal('hide');
	$('#modalshare').modal('show');
	}
	
	function copyUrlInClipBoard(){
	el = document.createElement('textarea');
	  el.value = document.getElementById("publicTestUrl").value;
	  document.body.appendChild(el);
	  el.select();
	  document.execCommand('copy');
	  document.body.removeChild(el);
	//$('#modalshare').modal('hide');
	}
	
	function copyUrlClose(){
	$('#modalshare').modal('hide');
	}
	
	function shareTest(){
	 var existing_name1 = document.getElementById("existing_name1").value;
	 var firstName = document.getElementById("firstName").value;
	var lastName = document.getElementById("lastName").value;
	var userEmail = document.getElementById("userEmail").value;
	var testId = document.getElementById("testId").value;
		if(firstName == '' || firstName == null){
			notify('Info', 'First Name can not be blank');
		}
		else if(lastName == '' || lastName == null){
		notify('Info', 'Last Name can not be blank');
		}
		else if(userEmail == '' || userEmail == null){
		notify('Info', 'Email can not be blank');
		}
		else if(!validateEmail(userEmail)){
		notify('Info', 'Enter a valid email');
		}
		else{
		window.location = "sharePublicTest?existing_name1="+existing_name1+"&firstName="+firstName+"&lastName="+lastName+"&userEmail="+userEmail+"&testId="+testId;
		}
	
	}
	
	function validateEmail(email) {
	  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	  return re.test(email);
	}
	
	 $('#search').on('click',function(){
	    var text = document.getElementById("searchText").value;
		if(text.length != 0){
		window.location="searchTests?searchText="+text;
		}
	    });
	    
	
	
	function confirm(id) {
           (new PNotify({
		    title: 'Confirmation Needed',
		    text: 'Are you sure? Students having the link to this exam may no longer be able to take the exam',
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
		    window.location = "retireTest?testId="+id;
		}).on('pnotify.cancel', function() {
		   
		});
        }
	
	function notify(messageType, message){
		 var notification = 'Information';
			 $(function(){
				 new PNotify({
				 title: notification,
				 text: message,
				 type: messageType,
				 styling: 'bootstrap3',
				 hide: true
			     });
			 }); 	
		}
		
		
	</script>


	<c:if test="${msgtype != null}">
		<script>
		 var notification = 'Information';
		 $(function(){
			 new PNotify({
			 title: notification,
			 text: '${message}',
			 type: '${msgtype}',
			 styling: 'bootstrap3',
			 hide: true
		     });
		 }); 	 
	      </script>
	</c:if>
</body>
</html>