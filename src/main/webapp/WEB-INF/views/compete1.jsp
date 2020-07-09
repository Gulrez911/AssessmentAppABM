<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Compete</title>

<link href="./resources/assets/img/ico/favicon.png" rel="shortcut icon" />
<link href="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900" rel="stylesheet"
	type="text/css" />
<!-- Material Icons CSS -->
<link href="./resources/assets/fonts/iconfont/material-icons.css" rel="stylesheet" type="text/css" />
<!-- FontAwesome CSS -->
<link href="./resources/assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- magnific-popup -->
<link href="./resources/assets/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
<link href="./resources/assets/owl.carousel/assets/owl.carousel.css" rel="stylesheet"
	type="text/css" />
<link href="./resources/assets/owl.carousel/assets/owl.theme.default.min.css" rel="stylesheet"
	type="text/css" />
<!-- flexslider -->
<link href="./resources/assets/flexSlider/flexslider.css" rel="stylesheet" type="text/css" />
<!-- Bootstrap -->
<link href="./resources/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- shortcodes -->
<link href="./resources/assets/css/shortcodes/shortcodes.css" rel="stylesheet" type="text/css" />
<!-- Style CSS -->
<link href="./resources/assets/style.css" rel="stylesheet" type="text/css" />
<!-- RS5.0 Main Stylesheet -->
<link href="./resources/assets/revolution/css/settings.css" rel="stylesheet" type="text/css" />
<!-- RS5.0 Layers and Navigation Styles -->
<link href="./resources/assets/revolution/css/layers.css" rel="stylesheet" type="text/css" />
<link href="./resources/assets/revolution/css/navigation.css" rel="stylesheet" type="text/css" />
<link href="./resources/assets/css/pnotify.custom.min.css" rel="stylesheet" type="text/css" />

<script src='https://kit.fontawesome.com/a076d05399.js'></script>


<!-- Search Box  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<!-- Dropdown design -->
<script>
		$(document).ready(function() {
			$('select').material_select();

		});
</script>


</head>

<body id="top" class="has-header-search">

	<!--header start-->
	<header id="header" class="tt-nav nav-border-bottom">
		<div class="header-sticky light-header ">
			<div class="container">
				<div id="materialize-menu" class="menuzord">
					<!--logo start-->
					<a href="javascript:void(0);" class="logo-brand"> <img class="retina"
						src="<%=request.getContextPath()%>/resources/images/Logo.png" alt="" />
					</a>
					<!--logo end-->
					<!--mega menu start-->
					<ul class="menuzord-menu pull-right">
						<li><a
							href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
						<li><a href="question_list">Question Bank</a></li>
						<li><a href="testlist">Tests</a></li>
						<li><a href="skills">Skills</a></li>
						<li><a href="showReports">Results</a></li>
						<li><a href="practice">Practice</a></li>
						<li><a href="codingSessions">Code Analysis Reports</a></li>
						<li><a href="">Compete</a></li>
						<li><a href="skillTest">Skill Test</a></li>
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
						<a href="#" onclick="javascript:addCompete();" class="btn waves-effect waves-light col-md-12">
							<i class="material-icons fa fa-plus-circle"></i> Add</a>
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
							<b>Compete Repository</b>
						</h1>
					</div>
					<div class="col-md-4">
						<div class="widget widget_search">
							<div class="search-form">
								<form action="#" method="get">
									<input type="text" placeholder="Search.." id="myInput">
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
									<th>Skill Name</th>
									<th>Challenge Type</th>
									<th>No. of Levels</th>
									<th>Action</th>
								</tr>
							</thead>

							<tbody>
							<tbody id="myTable">

								 <c:forEach items="${countList}"  var="countList" varStatus="loop">
									<tr>
										<td>${loop.count}</td>
										<td>${countList.skillName}</td>
										<td>${countList.challenge}</td>
										<td>${countList.totalTestCount}</td>
										<td><a href="#"><i class="fa fa-edit" style="font-size:24px"></i></a>  &nbsp;&nbsp;&nbsp;
										<a href="#"><i class="fa fa-trash" style="font-size:24px"></i></a></td>
									</tr>
								</c:forEach> 
							</tbody> 

						</table>
					</div>
				</div> <!-- Table div end -->
			</div> <!-- Row End -->
		</div> <!-- Container End -->
	</section>
	
	<!--  Popup for add challenge-->
<div id="add" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    	<div class="modal-header">
        	<h4 class="modal-title">Add Challenge</h4>
      	</div>
      	<div class="modal-body">
			<form:form id="addForm" class="form-horizontal"  method="GET" modelAttribute="compete"> 
				<div class='form-group'>
					<form:select path="skillName" id="skillName" onchange="javascript:getTest();">
						<option value="select">Select Skill</option>
						<form:options items="${listSkill}" />
											</form:select>
					<div id="parentskillerr" class="errorclass"></div>
				</div>
				<div class='form-group'>
					<form:select path="challenge" id="challenge1" onchange="javascript:getTest();" style="width: 130px;height: 26px">
							<option value="select">Select Challenge</option>
							<form:options items="${challengeType}" />
					</form:select>
					<div id="childskillerr" class="errorclass"></div>
				</div>
				<div class='form-group'>
					<form:select path="testName" id="testName"  style="width: 130px;height: 26px">
<						<option value="select">Select Test Name</option>
 						<form:options items="${testList}" />	
					</form:select>
					<div id="parentskillerr" class="errorclass"></div>
				</div>
			</form:form>
			<a href="#" onclick="javascript:addLevel();" id="addLevel" class="btn info">Add Level</a>
      	</div>
      	<div class="modal-footer">
		  	<button type="button" class="btn" style="" disabled>save</button>
        	<button type="button" id="btn_nm_cancel" class="btn" style="background:red">Cancel</button>
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
	<script src="./resources/assets/js/jquery-2.1.3.min.js"></script>
	<script src="./resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="./resources/assets/materialize/js/materialize.min.js"></script>
	<script src="./resources/assets/js/menuzord.js"></script>
	<script src="./resources/assets/js/bootstrap-tabcollapse.min.js"></script>
	<script src="./resources/assets/js/jquery.easing.min.js"></script>
	<script src="./resources/assets/js/jquery.sticky.min.js"></script>
	<script src="./resources/assets/js/smoothscroll.min.js"></script>
	<script src="./resources/assets/js/jquery.stellar.min.js"></script>
	<script src="./resources/assets/js/jquery.inview.min.js"></script>
	<script src="./resources/assets/owl.carousel/owl.carousel.min.js"></script>
	<script src="./resources/assets/flexSlider/jquery.flexslider-min.js"></script>
	<script src="./resources/assets/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script src="./resources/assets/js/scripts.js"></script>
	<script src="./resources/assets/scripts/custom.js"></script>
	<script src="./resources/assets/scripts/pnotify.custom.min.js"></script>


	<script>

	function addCompete(){
		$(".tr1").remove();
		$("#skillName")[0].selectedIndex = 0;
		$("#challenge1")[0].selectedIndex = 0;
		$("#testName")[0].selectedIndex = 0;
		$('#add').modal('show');
	}

	function addLevel(){
		 var skillName=$("#skillName").val(); 
		 var challenge=$("#challenge1").val();
		 var testName=$("#testName").val();

		 console.log("skillName:::"+skillName+":Challenge:::"+challenge+":testName:::"+testName);  

//			 if(skillName == ' '){
//					alert("SkillName should not be empty");
//					$('#skillName').focus();
//		 		}
		 
		 $.ajax({
				url : "addLevel?skillName="+skillName+"&challenge="+challenge+"&testName="+testName,
				type : "GET",
				success : function(response) {
					console.log("Success Called");
					var aa=document.getElementById(response.id);
					var x = document.createElement("SPAN");
				   	var t = document.createTextNode(response.msg);
				   	x.appendChild(t);
				   	aa.appendChild(x);
					getTest();
				},
		}); 
	} 

		 function getTest(){
			 var skillName=$("#skillName").val(); 
		 var challenge=$("#challenge1").val();
			 $.ajax({
	 			 url:"getTestLevel?skillName="+skillName+"&challenge="+challenge,
 			 type:"GET",
 			 success:function(response){
	 			 console.log("success response called");
	 			 console.log(response.levels);
	 			 $(".tr1").remove();
	 			 for (var i =0; i< response.levels.length ; i++){
					console.log(response.levels[i].testName);
						$("#result_tr").append(
								"<tr class='tr1'><td><label class='fieldtitle'><b>Level"+(i+1)+"</b></label></td><td id="+ response.levels[i].id+ " style='color: #333; background-color:#03a9f4'>"
								+ response.levels[i].testName+ 
								"<a href='#' id='edit' onclick='javascript:editLevel("+ response.levels[i].id+ ");'><i class='far fa-edit'></i></a></td></tr>")
		 		}
	 			$('#btnSave').prop('disabled', false);
	 		},
	 		});
	 	}

	 	function editLevel(id){
	   	 	console.log("editLevel Called"+id);
			 $.ajax({
	 			 url:"getTestNames?id="+id,
 			 type:"GET",
 			 success:function(response){
	 			 	console.log("success called");
	 			 	console.log("Id::"+response.id);
		 			 $("#"+response.id).html("");

		            
		 			 var dd=document.getElementById(response.id);
		 			 var selct = document.createElement("SELECT");
		 			 selct.id="slct";
		 			 dd.appendChild(selct);	 	
	   	             var len = response.testList.length;
	   	             console.log(response.testList[i])
	   	             for( var i = 0; i<len; i++){
	   	                 $("#slct").append("<option>"+response.testList[i]+"</option>");
	   	              }
					var span = document.createElement('span');
					span.innerHTML = '<a id="btn1" class="btn btn-dark" onclick="saveEdit('+response.id+')">Edit</a>';
	   	            dd.appendChild(span);

		   	         var msg = document.createElement('span');
		   	         msg.id="Msg";
		   	      	 dd.appendChild(msg);

   	            }
   	        });
	   	}


	 	function saveEdit(id){
	   	 	var testName=$("#slct").val();
		$.ajax({
			url:"updateLevel?testName="+testName+"&id="+id,
			type:"GET",
			 success:function(response){
				 console.log("Level Edited");
				 var aa=document.getElementById(response.id);
				 var x = document.createElement("SPAN");
				 var t = document.createTextNode(response.msg);
				 x.appendChild(t);
				 aa.appendChild(x);
				 getTest();
			},
			
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