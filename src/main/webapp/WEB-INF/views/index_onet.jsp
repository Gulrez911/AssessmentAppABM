<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

		<div class="container">
<!-- 				<h2>Modal Example</h2> -->
				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Assessment Profiler</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
										<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="modal-title">Modal Header</h4>
										</div>
										<div class="modal-body">
												<h2>Please Fill details here.</h2>
												<form:form action="onetLogin" method="post" modelAttribute="onetLogin"
														cssClass="form-horizontal">
														<%-- <form:hidden path="id" /> --%>
														<div class="form-group">
																<label for="email" class="col-md-3 control-label">Email</label>
																<div class="col-md-9">
																		<form:input path="email" cssClass="form-control" />
																</div>
														</div>
														<div class="form-group">
																<label for="firstname" class="col-md-3 control-label">First Name</label>
																<div class="col-md-9">
																		<form:input path="firstName" cssClass="form-control" />
																</div>
														</div>
														<div class="form-group">
																<label for="lastname" class="col-md-3 control-label">Last Name</label>
																<div class="col-md-9">
																		<form:input path="lastName" cssClass="form-control" />
																</div>
														</div>
														<div class="form-group">
																<label for="mobile" class="col-md-3 control-label">Mobile</label>
																<div class="col-md-9">
																		<form:input path="mobile" cssClass="form-control" />
																</div>
														</div>
														<div class="form-group">
																<div class="col-md-offset-3 col-md-9">
																		<form:button class="btn btn-primary">Register</form:button>
																</div>
														</div>
												</form:form>


										</div>
										<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
								</div>

						</div>
				</div>

		</div>

</body>
</html>
