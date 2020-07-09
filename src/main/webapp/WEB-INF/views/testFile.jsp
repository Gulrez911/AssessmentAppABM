<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Modal for New step-->
<%-- <div id="stepname_modal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    	<div class="modal-header">
        	<h4 class="modal-title">Add Challenge</h4>
      	</div>
      	<div class="modal-body">
			<form:form id="addForm" class="form-horizontal"  method="GET" modelAttribute="compete"> 
				<div class='form-group'>
					<label><b>Skill</b></label>
					<form:select path="skillName" id="skillName" onchange="javascript:getTest();">
												<option value="select">Select Skill</option>
												<form:options items="${listSkill}" />
											</form:select>
					<div id="parentskillerr" class="errorclass"></div>
				</div>
				<div class='form-group'>
					<label class="fieldtitle"><b>Challenge</b></label>
					<form:select path="challenge" id="challenge1" onchange="javascript:getTest();" style="width: 130px;height: 26px">
							<option value="select">Select Challenge</option>
							<form:options items="${challengeType}" />
					</form:select>
					<div id="childskillerr" class="errorclass"></div>
				</div>
				<div class='form-group'>
					<label><b>Test Name</b></label>
					<form:select path="testName" id="testName"  style="width: 130px;height: 26px">
<						<option value="select">Select Test Name</option>
 						<form:options items="${testList}" />	
					</form:select>
					<div id="parentskillerr" class="errorclass"></div>
				</div>
			</form>
			<div id="step_title" class="hidfirst"><b>Arrange Steps</b></div>
			<div id="sortable_stepnm" class="hidfirst" style="padding:20px;border: 1px solid;border-radius: 0.7rem; border-color: #03A9F4;">
				
			</div>
			<a href="#" onclick="javascript:addLevel();" id="addLevel" class="btn info">Add Level</a>
      	</div>
      	<div class="modal-footer">
		  	<button type="button" id="btn_newstep_next" class="btn" style="" disabled>Add New Step</button>
        	<button type="button" id="btn_nm_cancel" class="btn" style="background:red">Cancel</button>
      	</div>
    </div>
  </div>
</div> --%>

</body>
</html>