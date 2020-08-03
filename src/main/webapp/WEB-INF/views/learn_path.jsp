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
<title>Learning Path</title>

  
<spring:url value="/resources/assets/img/ico/favicon.png" var="c1" />
<link href="${c1}" rel="shortcut icon" />

<spring:url
	value="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900"
	var="c2" />

<link href="${c2}" rel="stylesheet" type="text/css" />
<!-- Vaisnavi's addition jquery ui -->
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!-- end -->
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
<!--  
 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.3/css/fixedHeader.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
-->


<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css">

<style>
.switch {
  position: relative;
  display: inline-block;
  width: 45px;
  height: 18px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  height:18px;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 10px;
  width: 10px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
.bigmodal>.modal-dialog {
          width: 60%;
          height: 80%; /* New width for default modal */
        }
.dropdown-menu {
	min-width: 387px !important;
	height: 300px !important;
	overflow: auto !important;
}
</style>

<style >
.deletelink, .editlink{
	color: white;
	size: 7px;
    padding-top: 0px;
    padding-bottom: 0px;
    padding-right: 5px;
    padding-left:5px;
}
.sortstepnm{
	background:#03A9F4;
	color:#ffffff;
	border-radius:0.5rem;
	margin-bottom: 1px;
	line-height:2.5;
}

.deletelink:hover > .deletelink {
	color: black;
}

.editlink:hover > .editlink {
	color: black;
}

.skilldiv{
	border:2px solid #b3bdc7;
	border-radius:0.7rem;
}
.skillcontent{
	margin:20px;
	padding:20px;
	background:#ffffff;
	height:60px;
	border-radius:0.7rem;
	width:200px;
	text-align:right;
	color:black;
}
li>a.dropbtn{
	position: relative;
}
.dropdown {
  position: relative;
  display: block;
}

.errorclass {
	color: red;
	font-style: italic;
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

div.container{
    padding-left: 0px;
    padding-right: 0px;
}

div.dataTables_wrapper div.dataTables_filter input{
    margin-bottom: 0px;
    margin-left: 0px;
    border-style: ridge;
    height: auto;
    border-radius: 0.7rem;
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
								<a href="learningpath" class="active">Practice</a>
								<a href="skillTestLabel">Coding</a>
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
		<div class = "container" style="margin-top: 10px;">
			<div class="flex" style="width:100%">
				<button class = "btn btn-primary" data-toggle="modal" data-target="#stepname_modal">+ Add</button>
			</div>
			<div style="margin-top:10px">
				<table id="SkillStepTbl" class="display table dt-center" style="table-layout: fixed;">
					<thead style="background:#03A9F4">
						<tr>
							<th>Skill</th>
							<th>Learning Path</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
<!-- 					<tfoot style="background:#03A9F4"> -->
<!-- 						<tr> -->
<!-- 							<th>Skill</th> -->
<!-- 							<th>Learning Path</th> -->
<!-- 							<th>Edit</th> -->
<!-- 							<th>Delete</th> -->
<!-- 						</tr> -->
<!-- 					</tfoot> -->
				</table>
			</div>
		</div>
		
	</section>
	
	
<!-- Modal for New step-->
<div id="stepname_modal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    	<div class="modal-header">
        	<h4 class="modal-title">Add New Step</h4>
      	</div>
      	<div class="modal-body">
			<form method="POST" action=""> 
				<div class='form-group'>
					<select class="form-control" id="ddl_skill">
						<option value="default" disabled selected>---Choose Parent Skill---</option>
						<c:forEach var="skill" varStatus="status" items="${skills}">
							<option value="${skill}">${skill}</option>
						</c:forEach>
					</select>
					<div id="parentskillerr" class="errorclass"></div>
				</div>
				<div class='form-group'>
					<select class="form-control" id="ddl_subskill">
						<option value="" disabled selected>---Choose Child Skill---</option>
					</select>
					<div id="childskillerr" class="errorclass"></div>
				</div>
				
			</form>
			<div id="step_title" class="hidfirst"><b>Arrange Steps</b></div>
			<div id="sortable_stepnm" class="hidfirst" style="padding:20px;border: 1px solid;border-radius: 0.7rem; border-color: #03A9F4;">
				
			</div>
			<button id="btn_saveord" class="hidfirst btn" style="margin-top:20px; margin-left:425px;">Save Order</button>
      	</div>
      	<div class="modal-footer">
		  	<button type="button" id="btn_newstep_next" class="btn" style="" disabled>Add New Step</button>
        	<button type="button" id="btn_nm_cancel" class="btn" style="background:red">Cancel</button>
      	</div>
    </div>
  </div>
</div>
<!-- Modal for New step end-->

<!-- Modal for step test details-->
<div id="steptest_modal" class="modal fade bigmodal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    	<div class="modal-header">
        	<button type="button" class="close" data-dismiss="modal">&times;</button>
        	<h4 class="modal-title">Add New Step Test Details</h4>
      	</div>
      	<div class="modal-body">
			<form>
			
				<div class='form-group'>
					<label for="step_nm_display">Step Name</label>
					<input type="text" id="step_nm_display" class="form-control" disabled></input>
					<a id="editnmenbl" onclick="enableEdit()" class="btn">Edit</a>
					<a onclick="saveStepn()" class="btn">Save</a>
				</div>
				<div style="border:2px solid #03A9F4;border-radius:0.7rem;padding:10px">
				<div class='form-group'>
					<select class="form-control" id="ddl_level">
						<option value="default" disabled selected>---Choose Level---</option>
						<c:forEach var="level" varStatus="status" items="${levels}">
							<option value="${level}">${level}</option>
						</c:forEach>
					</select>
					<div id="levelerr" class="errorclass"></div>
				</div>
				
				<div class='form-group'>
					<select class="form-control" id="ddl_test">
						<option value="default" disabled selected>---Choose Test---</option>
					</select>
					<div id="testerr" class="errorclass"></div>
				</div>
					<a class="btn" id="btn_addtest">Add Test</a>
				</div>
			</form>
			
			
			<div style="margin-top:10px;height:300px;overflow-y:auto; ">
				<table id="stepDetailsTbl" class="display table dt-center" style="width:100%;table-layout:fixed;">
					<thead style="background:#03A9F4">
						<tr>
							<th>Test Name</th>
							<th>Level</th>
							<th>Required</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tfoot style="background:#03A9F4">
						<tr>
							<th>Test Name</th>
							<th>Level</th>
							<th>Required</th>
							<th>Delete</th>
						</tr>
					</tfoot>
				</table>
			</div>
			
      	</div>
      	<div class="modal-footer">
        	<a class="btn" id="btn_fin_cancel">Save</a>
      	</div>
    </div>
  </div>
</div>
<!-- Modal for step test details end-->

<!-- Modal for step name -->

<div id="step_namemodal" class="modal fade bigmodal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    	<div class="modal-header">
        	<button type="button" class="close" data-dismiss="modal">&times;</button>
        	<h4 class="modal-title">Enter Step Name</h4>
      	</div>
      	<div class="modal-body">
			<form method="POST" action="">
				<div class='form-group'>
					<label for="step_nm">Step Name</label>
					<input type="text" class='form-control' id='step_nm' placeholder="Enter Step Name">
					<div id="stepnmerr" class="errorclass"></div>
				</div>
			</form>
			
      	</div>
      	<div class="modal-footer">
		  	<button type="button" id="btn_newstep_save" class="btn" style="background:green">Save New Step</button>
        	<button type="button" class="btn" style="background:red" data-dismiss="modal">Cancel</button>
      	</div>
    </div>
  </div>
</div>

<!-- Modal for step name end-->



<!-- 	<footer class="footer footer-four"> -->
<!-- 		<div class="secondary-footer brand-bg darken-2 text-center"> -->
<!-- 			<div class="container"> -->
<!-- 				<ul> -->
<!-- 					<li><a href="javascript:void(0)">Dashboard</a></li> -->
<!-- 					<li><a href="question_list">Question Bank</a></li> -->
<!-- 					<li><a href="testlist">Tests</a></li> -->
<!-- 					<li><a href="javascript:void(0)">Skills</a></li> -->
<!-- 					<li><a href="showReports">Results</a></li> -->
<!-- 					<li><a href="practice">Practice</a></li> -->
<!-- 					<li><a href="codingSessions">Code Analysis Reports</a></li> -->
<!-- 					<li><a href="javascript:void(0)">Skill based Reports</a></li> -->
<!-- 					<li><a href="showProfileParams">Recomm Setting</a></li> -->
<!-- 					<li><a href="listUsers">Users</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->





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
	
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	<!--
	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>	

  <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>
  <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.print.min.js"></script>
  <script src="//cdn.datatables.net/buttons/1.5.1/js/buttons.colVis.min.js"></script>
  <script src="//cdn.datatables.net/plug-ins/1.10.16/sorting/date-eu.js"></script>


  <script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
  <script src="https://cdn.datatables.net/fixedheader/3.1.3/js/dataTables.fixedHeader.min.js"></script>

  <script src="https://cdn.datatables.net/plug-ins/1.10.15/api/sum().js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/yadcf/0.9.4/jquery.dataTables.yadcf.min.js"></script>
	-->
	
	<script>
	window.stepLearnpathArr = new Array();
	window.oldstepnm="";
	function changeReq(id,chkid){
		var chkbx_id = "chk"+chkid;
		var ischk = document.getElementById(chkbx_id).checked;
		$.ajax({
			url:'setReqTest',
			method:'POST',
			data:{
				id: id,
				isReq: ischk
			},
			success:function(data){
			}
		});
	}
	
	function loadPage(skn){
		window.location.href = "userpractice?skilln="+skn;
	}
	
	function openEdit(skill , subskill){
		$('#stepname_modal').modal("show");
		$('#ddl_skill').val(skill);
		load_subskill(skill,subskill);
		fetchstepnms(skill,subskill);
	}
	
	function delStep(id){
		var skn=$('#ddl_skill').find("option:selected").val();
		var subs=$('#ddl_subskill').find("option:selected").val();
		$.ajax({
			url: "deleteStep",
			method:"POST",
			data:{
				id: id
			},
			success: function(data){
				alert(data);
				fetchstepnms(skn,subs);
			}	
		});
	}
	
	function enableEdit(){
		window.oldstepnm = $("#step_nm_display").val();
		$("#step_nm_display").prop("disabled",false);
		$("#btn_addtest").attr("disabled",true);
		$('#editnmenbl').attr('disabled',true);
	}
	
	function saveStepn(){
		var skn=$('#ddl_skill').find("option:selected").val();
		var subs=$('#ddl_subskill').find("option:selected").val();
		var stepncli = $("#step_nm_display").val();
		$.ajax({
			url:'editStepn',
			method:'POST',
			data:{
				par_skill: skn,
				child_skill: subs,
				oldstepn: window.oldstepnm,
				newstepn: stepncli
			},
			success:function(data){
				$("#step_nm_display").prop("disabled",true);
				$("#btn_addtest").attr("disabled",false);
				$('#editnmenbl').attr('disabled',false);
				skillsteptable();
			}
		});
	}
	
	function delLearnPath(skill,subskill){
		$.ajax({
			url:'delLearnPath',
			method:'POST',
			data:{
				skill:skill,
				subs: subskill
			},
			success:function(data){
				skillsteptable();
			}
		});
	}
	
	function skillsteptable(){
		$.ajax({
			url: 'getSkillStep' ,
			type: 'POST',
			success:function(data) {
				
				var stepid_arr = new Array();
				var stepDet_arr = new Array();
				for(var i = 0;i<data.length;i++){
					stepid_arr[i] = data[i][0]
					
					var onestep_det = new Array();
					onestep_det[0] = data[i][1];
					onestep_det[1] = data[i][2];
					onestep_det[2] = data[i][3];
					
					stepDet_arr[i] = onestep_det;
				}

				console.log(stepDet_arr);
				var formatted_arr = new Array();
				var formattedarr_ctr = 0;
				for(var i=0; i<stepDet_arr.length; i++){
					var skilln = stepDet_arr[i][0];
					var subskilln = stepDet_arr[i][1];
					var stepn = stepDet_arr[i][2];
					
					var d1 = skilln+"-"+subskilln;	
					var d2 = stepn;
					
					var row_arr = new Array();
					row_arr[0] = d1;
					
					var j = i+1;
					
					while( (j<stepDet_arr.length) && (stepDet_arr[j][0] == skilln) && (stepDet_arr[j][1] == subskilln)) {
							d2 = d2 +"-"+ stepDet_arr[j][2];
							j++;
					}
				
					i = j-1;
					row_arr[1] = d2;
					formatted_arr[formattedarr_ctr] = row_arr;
					formattedarr_ctr++;
				}
				window.stepLearnpathArr = formatted_arr;
				console.log(formatted_arr);
				var inde = -1;
				var inde1 = -1;
				$('#SkillStepTbl').DataTable({
					data: formatted_arr,
					destroy: true,
					order: [],
					lengthMenu:[[5,-1,10,25,50,100],[5,"All",10,25,50,100]],
					jQueryUI:true,
					columnDefs:[
						{
							'targets':2,
							'orderable':false,
							'render':function(data){
								inde=inde+1;
								if(inde<formatted_arr.length){
									var sksubsk = formatted_arr[inde][0];
									var xyz=sksubsk.split("-");//[skill, subskill]
									return '<a value="'+inde+'" class="stepedit" onclick="javascript:openEdit(\''+xyz[0]+'\',\''+xyz[1]+'\')"><span class="fa fa-edit"></span></a>';
								}
								return ''; 
							}
						},
						{
							'targets':3,
							'orderable':false,
							'render':function(data){
								inde1++;
								if(inde1<formatted_arr.length){
									var sksubsk = formatted_arr[inde1][0];
									var xyz=sksubsk.split("-"); //[skill, subskill]
									return '<a value="'+inde1+'" class="stepdelete" onclick="javascript:delLearnPath(\''+xyz[0]+'\',\''+xyz[1]+'\')"><span class="fa fa-trash"></span></a>';
								}
								return '';
							}
						},
						{
							'className': 'text-center',
							'targets':[2,3]
						}
					]
				});
			}
		});
	}
	
	function delTest(id) {
		
		$.ajax({
			url:'delTest',
			method:'POST',
			data:{
				id:id
			},
			success:function(data){
				alert(data);
				var stn=$('#step_nm_display').val();
				var skn=$('#ddl_skill').find("option:selected").val();
				var subs=$('#ddl_subskill').find("option:selected").val();
				stepdetailstable(stn, skn, subs);
				update_testddl();
			}
		});
	}
	
	function stepdetailstable(stn, skilln, subskilln){
		var inde2 = -1;
		var inde3 = -1;
		$.ajax({
			url: 'getStepTestDetails' ,
			type: 'POST',
			data:{
				stepname:stn,
				skill:skilln,
				subskill:subskilln
			},
			success:function(stepdetailstestlist){
				//stepdetailstestlist:[][{testname, level, require}]
				// testnlvlarr: [[testn , level][]]
				// reqstatarr: [required0, req1] 
				var testnlvlarr = new Array();
				var reqstatarr = new Array();
				var testids = new Array();
				for(var i=0;i<stepdetailstestlist.length;i++){
					testnlvlarr[i] = new Array(stepdetailstestlist[i][0], stepdetailstestlist[i][1]);
					reqstatarr[i] = stepdetailstestlist[i][2];
					testids[i] = stepdetailstestlist[i][3];
				}
				console.log(reqstatarr);
				$('#stepDetailsTbl').DataTable({
					data: testnlvlarr,
					destroy: true,
					order: [],
					lengthMenu:[[5,-1,10,25,50,100],[5,"All",10,25,50,100]],
					jQueryUI:true,
					columnDefs:[
						{
							'targets':2,
							'orderable':false,
							'render':function(data){
								inde3++;
								if(reqstatarr[inde3]=="false"){
									str =  '<label class="switch"><input id="chk'+inde3+'" type="checkbox" onchange="javascript:changeReq(\''+testids[inde3]+'\',\''+inde3+'\')" value="'+testids[inde3]+'"><span class="slider round"></span></label>';
								}
								else if(reqstatarr[inde3]=="true"){
									str =   '<label class="switch"><input id="chk'+inde3+'" type="checkbox" onchange="javascript:changeReq(\''+testids[inde3]+'\',\''+inde3+'\')" value="'+testids[inde3]+'" checked><span class="slider round"></span></label>';;
								}
								else{
									str =   '<button class="btn">Defailu</button>';
								}
								return str;
							}
						},
						{
							'targets':3,
							'orderable':false,
							'render':function(data){
								inde2++;
								if(inde2<stepdetailstestlist.length){
									return '<a value="'+inde2+'" onclick="javascript:delTest(\''+testids[inde2]+'\')"><span class="fa fa-trash"></span></a>';
								}
								return '';
							}
						},
						{
							'className': 'text-center',
							'targets':[2]
						}
					]
					
				});
			}
		});
	}
	
	function fetchstepnms(p_skill, c_skill) {
		$.ajax({
			url: 'fetchstepname',
			method: 'POST',
			data:{
				par_skill: p_skill,
				child_skill: c_skill,
			},
			success:function(stepnmlst){
				$('.hidfirst').show();
				$('#btn_newstep_next').prop( 'disabled', false);
				$("#sortable_stepnm").html("");
				for( var t=0 ; t<stepnmlst.length ; t++){
					$("#sortable_stepnm").append("<div class='sortstepnm' id='"+stepnmlst[t][1]+"' style='padding-left:5px;'>"+stepnmlst[t][1]+"<a class='deletelink pull-right' value='"+stepnmlst[t][0]+"' onclick='javascript:delStep(\""+stepnmlst[t][0]+"\")'><span class='glyphicon glyphicon-trash'></span></a><a class='editlink pull-right' value='"+stepnmlst[t][0]+"'><span class='fa fa-edit'></span></a></div>");
				}
			}	
		});	
	}
	
	function update_testddl(){
		$.ajax({
			url: 'fetchtestnames',
			method: 'POST',
			
			success:function(data){
				$('#ddl_test').html("<option value='default' disabled selected>---Choose Test---</option>")
				
				for(var i=0;i<data.length;i++){
					var testoption = "<option value='"+data[i][0]+"'>"+data[i][1]+"</option>";
					$('#ddl_test').append(testoption);
				}
			}
		});
	}
	
	function load_subskill(parentskill, selectedVal) {
		$.ajax({
			url: 'fetchsubskills',
			type: 'POST',
			data: {
				selSkill: parentskill
			},
			success: function(subskilllist){
				if(selectedVal == "Null")	{
					$('#ddl_subskill').html('<option value="" disabled selected>---Choose Child Skill---</option>');
					for(var i = 0; i<subskilllist.length; i++){
						var item = '<option value="'+subskilllist[i]+'">'+subskilllist[i]+'</option>';
						$('#ddl_subskill').append(item);
					}
				}
				else	{
					$('#ddl_subskill').html('<option value="" disabled>---Choose Child Skill---</option>');
					for(var i = 0; i<subskilllist.length; i++){
						if(selectedVal === subskilllist[i]){
							var item = '<option value="'+subskilllist[i]+'" selected>'+subskilllist[i]+'</option>';
						}
						else{
							var item = '<option value="'+subskilllist[i]+'">'+subskilllist[i]+'</option>';
						}
						$('#ddl_subskill').append(item);
					}
				}
			}
		});
	}
	
	function existsinarray( list, elem ) {
		var bool=false;
		for(var i=0;i<list.length;i++){
			if(list[i]==elem){
				bool=true;
				break;
			}
		}
		return bool;
	}
	
	$(document).ready(function(){
		$('.hidfirst').hide();	
		
		$('#sortable_stepnm').sortable();
		$('#sortable_stepnm').disableSelection();
		
$('#btn_addtest').attr('disabled',true);
		
		$('#ddl_level').on("change",function(){
			var level=$('#ddl_level').find("option:selected").val();
			var test=$('#ddl_test').find("option:selected").val();
			
			if(level != "default" && test != "default"){
				$('#btn_addtest').attr("disabled",false);
			}
			else{
				$('#btn_addtest').attr("disabled",true);
			}
		});
		$('#ddl_test').on("change",function(){
			var level=$('#ddl_level').find("option:selected").val();
			var test=$('#ddl_test').find("option:selected").val();
			
			if(level != "default" && test != "default"){
				$('#btn_addtest').attr("disabled",false);
			}
			else{
				$('#btn_addtest').attr("disabled",true);
			}
		});
		
		skillsteptable();
		update_testddl();
		
		$('div').on('click','.editlink',function(){
			var stepname = $(this).parent().prop('id');
			var skn=$('#ddl_skill').find("option:selected").val();
			var subs=$('#ddl_subskill').find("option:selected").val();
			$("#step_nm_display").val(stepname);
			stepdetailstable( stepname , skn, subs );
			$('#steptest_modal').modal('show');
		});
		
		$('#btn_nm_cancel').on('click',function(){
			var x = confirm("Do you want cancel?");
			if( x == true){
				$('#ddl_skill').val("default").attr('selected','selected');
				$('#ddl_subskill').val("");
				$('.hidfirst').hide();
				$('#btn_newstep_next').prop('disabled',true)
				$('#stepname_modal').modal("hide");
			}
		});
		
		$('#btn_fin_cancel').on('click',function(){
			var x = confirm("Do you want cancel?");
			if( x == true){
				$('#ddl_skill').val("default").attr('selected','selected');
				$('#ddl_subskill').val("");
				$('.hidfirst').hide();
				$('#btn_newstep_next').attr('disabled',true)
				$('#steptest_modal').modal("hide");
				$('#stepname_modal').modal("show");
			}
		});
		
		$('#btn_step_editsave').on('click',function(){
			var skn=$('#ddl_skill').find("option:selected").val();
			var subs=$('#ddl_subskill').find("option:selected").val();
			fetchstepnms(skn,subs);
			$('#steptest_modal').modal('hide');
			$('#stepname_modal').modal("show");
		});
		
		$('#btn_saveord').on('click',function(){
			var x = $( "#sortable_stepnm" ).sortable("toArray");
			
	    	var strng="";
	    	for( var i=0 ; i < x.length ; i++ ){
	    		if(i==x.length-1)
	    			strng=strng + x[i];
	    		else
	    			strng = strng + x[i] + "-";
	    	}
	    	
	    	$.ajax({
	    		url : 'saveorder',
	    		method : 'POST',
	    		data : {
	    			stepn_ord : strng
	    		},
	    		success : function(data){
	    			alert(data);
	    		}
	    	});
		});
		
		$('#ddl_skill').on('change',function(){
			var sel_skill = $(this).find("option:selected").val();
			if(sel_skill != ""){
				$('#parentskillerr').html("");
				load_subskill(sel_skill,"Null");
			}
			else {
				$('#parentskillerr').html("Please select the parent skill");
			}
		});
		
		$('#ddl_subskill').on('change',function(){
			sel_skill = $(this).find("option:selected").val();
			if(sel_skill != ""){
				$('#childskillerr').html("");
			}
			else{
				$('#childskillerr').html("Please select the child skill");
			}
			
			sel_par_skill = $('#ddl_skill').find("option:selected").val();
			if(sel_par_skill != ""){
				$('#parentskillerr').html("");
				$("#sortable_stepnm").html("");
				fetchstepnms(sel_par_skill,sel_skill);
			}
			else{
				$('#parentskillerr').html("Please select the parent skill");
			}
		});
		
				
		$('#btn_newstep_next').on('click',function(){
			var skn=$('#ddl_skill').find("option:selected").val();
			var subs=$('#ddl_subskill').find("option:selected").val();
			if( (skn != "") && (subs != "") ) {	
					$('#stepname_modal').modal('hide');
					$('#step_nm').val("");
					$('#step_namemodal').modal('show');
			}
			else {
				if(skn == ""){
					$('#parentskillerr').html("Please select the parent skill");
				}
				else{
					$('#parentskillerr').html("");
				}
				if(subs == ""){
					$('#childskillerr').html("Please select the child skill");
				}	
				else{
					$('#childskillerr').html("");
				}
			}	
		});
		
		$('#btn_newstep_save').on('click',function(){
			
			var stn=$('#step_nm').val();
			var skn=$('#ddl_skill').find("option:selected").val();
			var subs=$('#ddl_subskill').find("option:selected").val();
			
			if(stn!="") {
				
				$.ajax({
					url: 'fetchstepname',
					method: 'POST',
					data:{
						par_skill: skn,
						child_skill: subs
					},
					success:function(stepnmlst){
						var stepnms = new Array();
						
						for(var t = 0; t<stepnmlst.length; t++){
							stepnms[t] = stepnmlst[t][1];
						}
						
						if( existsinarray( stepnms, stn ) )	{
							$('#stepnmerr').html("Step Already Exists! Please Enter Another Step Name ");
						}
						else	{
							$('#stepnmerr').html("");
							$.ajax({
								url:'addskillstep',
								type:'POST',
								data:{
									stepName: stn,
									skillName: skn,
									subSkill: subs
								},
								success:function(status){
									$('#step_namemodal').modal('hide');
									skillsteptable();
									fetchstepnms(skn,subs);
									stepdetailstable(stn, skn, subs);
									$("#step_nm_display").val(stn);
									$('#steptest_modal').modal('show');
									update_testddl();
								}	
							});
						}
					}
				});							
			}
			else {
				if(stn == ""){
					$('#stepnmerr').html("Please enter the step name");
				}
				else{
					$('#stepnmerr').html("");
				}
			}
		});
		
		$('#ddl_test').on('change',function(){
			sel_test = $(this).find("option:selected").val();
			if(sel_test != ""){
				$('#testerr').html("");
			}
			else{
				$('#testerr').html("Please select test");
			}
		});
		
		$('#ddl_level').on('change',function(){
			sel_lvl = $(this).find("option:selected").val();
			if(sel_lvl != ""){
				$('#levelerr').html("");
			}
			else{
				$('#levelerr').html("Please select the level");
			}
		});
		
		$('#step_nm').on('input',function(){
			vl = $(this).val();
			if(vl != ""){
				$('#stepnmerr').html("");
			}
			else{
				$('#stepnmerr').html("Please enter the step name");
			}
		});
		
		$('#btn_addtest').on('click',function(){
			var skilln=$('#ddl_skill').find("option:selected").val();
			var subskilln=$('#ddl_subskill').find("option:selected").val();
			var stepname=$('#step_nm_display').val();
			var level=$('#ddl_level').find("option:selected").val();
			var test=$('#ddl_test').find("option:selected").text();
			var testid = $('#ddl_test').find("option:selected").val();
			if(level != "" && test != ""){
				$('#levelerr').html("");
				$('#testerr').html("");
				$.ajax({
					url:'addteststep1',
					method:'POST',
					data:{
						stepName: stepname,
						skillName: skilln,
						subSkill: subskilln,
						testId:testid,
						level: level,
						testName: test
					},
					success:function(data){
						stepdetailstable(stepname, skilln, subskilln);
						update_testddl();
						$('#ddl_level').val("default").attr('selected','selected');
					}
				});
			}
			else {
				if(level == null)
					$('#levelerr').html("Please select the child skill");
				if(test == null)
					$('#testerr').html("Please select test");
			}
		});
		
	});
	
	</script>
</body>

</html>