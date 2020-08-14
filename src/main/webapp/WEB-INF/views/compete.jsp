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
<title>Compete</title>
<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />
<link href="${c1}" rel="shortcut icon" />
<spring:url value="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900" var="c2" />
<link href="${c2}" rel="stylesheet" type="text/css" />
<!-- Material Icons CSS -->
<spring:url value="/resources/assets/fonts/iconfont/material-icons.css" var="c3" />
<link href="${c3}" rel="stylesheet" type="text/css" />
<!-- FontAwesome CSS -->
<spring:url value="/resources/assets/fonts/font-awesome/css/font-awesome.min.css" var="c4" />
<link href="${c4}" rel="stylesheet" type="text/css" />
<!-- magnific-popup -->
<spring:url value="/resources/assets/magnific-popup/magnific-popup.css" var="c5" />
<link href="${c5}" rel="stylesheet" type="text/css" />
<!-- owl.carousel -->
<spring:url value="/resources/assets/owl.carousel/assets/owl.carousel.css" var="c6" />
<link href="${c6}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/owl.carousel/assets/owl.theme.default.min.css" var="c7" />
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


<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<link rel="stylesheet" href="./resources/Profiler/css/chosen.css"/>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.4.0/bootbox.min.js"></script> -->

<!-- <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.jquery.js"></script> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.css"> -->

<!-- <script src="jquery-3.5.1.min.js"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/chosen-js@1.8.7/chosen.jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.proto.min.js" integrity="sha512-jVHjpoNvP6ZKjpsZxTFVEDexeLNdWtBLVcbc7y3fNPLHnldVylGNRFYOc7uc+pfS+8W6Vo2DDdCHdDG/Uv460Q==" crossorigin="anonymous"></script> -->

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


<!-- Search Box  -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
	<script>
// 	 $(function($) {
// 		    $(".chzn-select").chosen();
		   
// 		});
	$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
		
	});
	 
	/* $(document).ready(function(){
		  //Chosen
		 $(".limitedNumbSelect2").select2({
        maximumSelectionLength: 1,
    	placeholder: "Which are two of most productive days of your week"
    })		 */
	</script>
	
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
							<a href="#" onclick="javascript:addCompete();" class="btn waves-effect waves-light col-md-12" style="color:white;">
							<i class="material-icons fa fa-plus-circle"></i> Add New</a>

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
										<td><a href="#" onclick="javascript:addCompete();"><i class="fa fa-edit" style="font-size:24px"></i></a></td>
<!-- 										<td><a href="#"><i class="fa fa-edit" style="font-size:24px"></i></a>  &nbsp;&nbsp;&nbsp; -->
<!-- 										<a href="#"><i class="fa fa-trash" style="font-size:24px"></i></a></td> -->
									</tr>
								</c:forEach> 
							</tbody> 

						</table>
					</div>
				</div>
			</div><!-- /.row -->
		</div><!-- /.container -->
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


	<!--  Popup for add challenge-->
	<div id="modaladdChallenge" class="modal fade modalcopy" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Challenge Test</h4>
				</div>
				<div class="modal-body">
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="uploadTab">
<%-- 							<form:form id="addForm" class="form-horizontal"  method="GET" modelAttribute="compete">  --%>
								<form id="addForm" method="GET" > 
								
								<div class="form-group">
									<label><b>Select Skill</b></label>
										<select class="form-control chosen" id="skillName" onchange="javascript:getTest();">

											<option value="default" disabled selected>Select Skill</option>
											<c:forEach var="listSkill" varStatus="status" items="${listSkill}">
												<option value="${listSkill}">${listSkill}</option>
											</c:forEach>
										</select>
								</div>
								<div class="form-group">
									<label><b>Select Challenge</b></label>
									<select class="form-control chosen" id="challenge1" onchange="javascript:getTest();">
										<option value="default" disabled selected>Select Challenge</option>
										<c:forEach var="challengeType" varStatus="status" items="${challengeType}">
											<option value="${challengeType}">${challengeType}</option>
										</c:forEach>
									</select>
								</div>
								
								<div id="levels1"></div>
									<table id="levels">
									
									</table>
								<br>
								<div class="form-group">
									<label for="testName"><b>Select Test</b></label>
									<select id="testName" name="testName" class="form-control chosen" onchange="javascript:getTest();">
									
										<option value="default" disabled selected>Select Test</option>
										<c:forEach var="testList" varStatus="status" items="${testList}">
											<option value="${testList}" >${testList}</option>
										</c:forEach>
									</select>
								</div>
									<a href="#" onclick="javascript:addLevel();" id="addLevel" class="btn btn-primary" >Add Level</a>
								<div class="modal-footer">
									<a href="compete" class="btn btn-primary">Save</a>
								</div>
							</form>
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
			<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.4.0/bootbox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
		
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
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script>
    $(".chosen").chosen();
function addCompete(){
	$('#modaladdChallenge').modal('show');
// 	$('#testName').selectpicker();
// 	$('.chosen').chosen();
	$(".tr1").remove();
	$("#msg").remove();
	$("#skillName")[0].selectedIndex = 0;
	$("#challenge1")[0].selectedIndex = 0;
	$("#testName")[0].selectedIndex = 0;
	$('#addLevel').attr('disabled',true);
	$('#skillName, #challenge1, #testName').on("change",function(){
		 $("#msg").remove();
		var skillName=$('#skillName').find("option:selected").val();
		var challenge=$('#challenge1').find("option:selected").val();
		var testName=$('#testName').find("option:selected").val();
		
		if(skillName != "default" && challenge != "default" && testName != "default"){
			$('#addLevel').attr("disabled",false);
		}
		else{
			$('#addLevel').attr("disabled",true);
		}
	});
		
}
function addLevel(){
	
	 var skillName=$("#skillName").val(); 
	 var challenge=$("#challenge1").val();
	 var testName=$("#testName").val();
	 console.log("skillName:::"+skillName+":Challenge:::"+challenge+":testName:::"+testName); 
		
	 $.ajax({
			url : "addLevel?skillName="+skillName+"&challenge="+challenge+"&testName="+testName,
			type : "GET",
			success : function(response) {
				console.log("Success Called");
				$("#levels1").html('<span id="msg" style="color:red;">'+response.msg+'</span>');
				$("#testName")[0].selectedIndex = 0;
				getTest();
				$('#addLevel').attr('disabled',true);
				$('#skillName, #challenge1, #testName').on("change",function(){
					 $("#msg").remove();
					var skillName=$('#skillName').find("option:selected").val();
					var challenge=$('#challenge1').find("option:selected").val();
					var testName=$('#testName').find("option:selected").val();
					
					if(skillName != "default" && challenge != "default" && testName != "default"){
						$('#addLevel').attr("disabled",false);
					}
					else{
						$('#addLevel').attr("disabled",true);
					}
				});
			},
	}); 
} 
	 function getTest(){
// 		 var skillName=$("#skillName").val(); 
// 	 	 var challenge=$("#challenge1").val();
	 	var skillName=$('#skillName').find("option:selected").val();
		var challenge=$('#challenge1').find("option:selected").val();
		console.log(skillName+">>"+challenge);
		 $.ajax({
			 url:"getTestLevel?skillName="+skillName+"&challenge="+challenge,
			 type:"GET",
			 success:function(response){
 			 console.log("success response called");
 			 console.log(response.levels);
 			 $(".tr1").remove();
 			 for (var i =0; i< response.levels.length ; i++){
				console.log(response.levels[i].testName);
					$("#levels").append(
							"<tr class='tr1'><td><label class='fieldtitle'><b>Level"+(i+1)+"</b></label></td><td id="+ response.levels[i].id+ ">"
							+ response.levels[i].testName+ 
							"</td><td id='edit'>&nbsp;&nbsp; <a href='#' id='edit' onclick='javascript:editLevel("+ response.levels[i].id+ ");'><span class='glyphicon glyphicon-edit'></span>Edit</a></td><td><a href='#' id='delete' onclick='javascript:deleteLevel("+ response.levels[i].id+ ");'><span id='delete' class='fa fa-trash'></span>Delete</a></td></tr>")
	 		}
 			$('#btnSave').prop('disabled', false);
 		},
		});
	}
	 function deleteLevel(id){
			bootbox.confirm({
				title: "Delete Confirmation",
				message: "Are you sure you want to Cancel?",
				buttons: {
			        confirm: {
			            label: 'Ok',
			            className: 'btn-success'
			        },
			        cancel: {
			            label: 'Cancel',
			            className: 'btn-danger'
			        }
			    },
			    callback:function(x){
			    	if( x == true){
			    		$.ajax({
							url:"deleteLevel?id="+id,
							type:"GET",
							 success:function(response){
								 console.log("delete ajax success called");
								 var msg="Test deleted successfully!";
					 			 $("#levels1").html('<span id="msg" style="color:red;">'+msg+'</span>');
								 getTest();
							},
						});
					}
			    }
			});
		}
	
	function editLevel(id){
  	 	console.log("editLevel Called \t"+id);
  	 	
		 $.ajax({
			 url:"getTestNames?id="+id,
			 type:"GET",
			 success:function(response){
 			 	console.log("success called");
 			 	console.log("Id::"+response.id);
				$("addLevel").attr("disabled",true);
				$("#edit").attr("disabled",true);
				
	 			 $("#"+response.id).html("");
	 			 var dd=document.getElementById(response.id);
	 			 console.log("dd value:"+dd);
	 			 var selectDiv = document.createElement("DIV");
	 			selectDiv.className="col-xs-8";
	 			 var selct = document.createElement("SELECT");
	 			 var slctId = "slct"+response.id;
		 		selct.id="slct"+response.id;
	 			 selct.className="form-control";
	 			 selectDiv.appendChild(selct);
	 			 dd.appendChild(selectDiv);	 	
   	             var len = response.testList.length;
   	             console.log("testList length:"+len);
   	             console.log(response.testList)
   	             for( var i = 0; i<len; i++){
   	                 $("#"+slctId).append("<option>"+response.testList[i]+"</option>");
   	              }
  	              
				var span = document.createElement('span');
				span.innerHTML = '<a id="btn1" onclick="saveEdit('+response.id+')" style="color:blue;">Save</a>';
   	            dd.appendChild(span);
	   	         var msg = document.createElement('DIV');
	   	         msg.id="Msg";
	   	      	 dd.appendChild(msg);
	            }
	        });
  	}
	function saveEdit(id){
  	 	var testName=$("#slct"+id).val();
	$.ajax({
		url:"updateLevel?testName="+testName+"&id="+id,
		type:"GET",
		 success:function(response){
			 console.log("Level Edited");
			 console.log("Message"+response.msg)
 			 $("#levels1").html('<span id="msg" style="color:red;">'+response.msg+'</span>');
			 getTest();
			 $('#addLevel').attr('disabled',true);
			 $('#skillName, #challenge1, #testName').on("change",function(){
				 $("#msg").remove();
			 	var skillName=$('#skillName').find("option:selected").val();
			 	var challenge=$('#challenge1').find("option:selected").val();
			 	var testName=$('#testName').find("option:selected").val();
			 	
			 	if(skillName != "default" && challenge != "default" && testName != "default"){
			 		$('#addLevel').attr("disabled",false);
			 	}
			 	else{
			 		$('#addLevel').attr("disabled",true);
			 	}
			 });
		},
		
	});
  	}
	function editFront(){
		$('#modaladdChallenge').modal('show');
		$(".tr1").remove();
		$("#msg").remove();
		$("#skillName")[0].selectedIndex = 0;
		$("#challenge1")[0].selectedIndex = 0;
		$('#addLevel').attr('disabled',true);
		$('#skillName, #challenge1, #testName').on("change",function(){
			 $("#msg").remove();
			var skillName=$('#skillName').find("option:selected").val();
			var challenge=$('#challenge1').find("option:selected").val();
			var testName=$('#testName').find("option:selected").val();
			
			if(skillName != "default" && challenge != "default" && testName != "default"){
				$('#addLevel').attr("disabled",false);
			}
			else{
				$('#addLevel').attr("disabled",true);
			}
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