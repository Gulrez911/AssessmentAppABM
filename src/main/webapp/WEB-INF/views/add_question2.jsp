<!DOCTYPE html>
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

<body id="top" class="has-header-search">
	<!--header start-->
	<header id="header" class="tt-nav nav-border-bottom" style="margin-top: 69px;">
		<div class="header-sticky light-header ">
			<div class="container">
				<div id="materialize-menu" class="menuzord menuzord-responsive">
					<a href="javascript:void(0)" class="showhide"
						style="display: none;"><em></em><em></em><em></em></a>
					<!--logo start-->
					
					<!--logo end-->
					<!--mega menu start-->
					<ul class="menuzord-menu pull-right menuzord-indented scrollable" id="div1" style="max-height:400px;">
					<li><a href="http://beforesubmit.com/qe-assess/index.html"
                     class="logo-brand"> <img class="retina" src="images/Logo2.png" alt="">
					    </a></li>
						<li><a href="javascript:void(0)">Dashboard</a></li>
						<li class="active"><a href="javascript:void(0)">QuestionBank</a></li>
						 <li><a href="javascript:void(0)?add_test.jsp">Tests</a></li>
        <!-- 		<li><a href="testlist"><img src="images/test_icon.png" alt="logo"> <span class="collapse in hidden-xs">Tests</span></a></li> -->
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
	<!--header end-->



	<section>
		<div class="container">
			<div class="row mt-5">
				<div class="col-md-12">
					<div class="col-md-6"></div>
					<div class="col-md-2">
						<a href="http://beforesubmit.com/qe-assess/question_list.html#"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-plus-circle"></i> Add New</a>
					</div>
					<div class="col-md-2">
						<a href="http://beforesubmit.com/qe-assess/question_list.html#"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-upload"></i> Import</a>
					</div>
					<div class="col-md-2">
						<a href="http://beforesubmit.com/qe-assess/question_list.html#"
							class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-sign-out"></i> Sign Off</a>
					</div>
				</div>

				<div class="col-md-12">
					<div class="col-md-12">
						<div class="pagination" style="float: right;">
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

				 
				<div class="col-md-12">
					<div class="mt-10"></div>
					<div class="col-md-5">
						<h1>Question Bank</h1>
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
					<div class="col-md-3">
						<div class="mt-10"></div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<a href="http://beforesubmit.com/qe-assess/question_list.html#">
								<i class="fa fa-sort-amount-asc"></i> <span>Sort</span>
							</a>
						</div>
						<div class="col-md-4">
							<a href="http://beforesubmit.com/qe-assess/question_list.html#">
								<i class="fa fa-filter"></i> <span>Filter</span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>No</th>
									<th>Question</th>
									<th>Category</th>
									<th>Difficulty Level</th>
									<th>Updated On</th>
									<th>Update</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${qs}" var="question" varStatus="loop">
									<tr>

										<td>${loop.count}</td>


										<td><c:out value="${question.questionText}"></c:out></td>

										<td>${question.category}</td>
										<td><c:out value="${question.difficultyLevel.level}"></c:out>
										</td>
										<td><c:out value="${question.updatedDate}"></c:out></td>
										<td><a href="addQuestion?qid=${question.id}">Click </a></td>
										<td><a href="javascript:confirm('${question.id}')">Click
										</a></td>
									</tr>
								</c:forEach>
								<!-- <tr>
									<th scope="row">1</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">4</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">5</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">6</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">7</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">8</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">9</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<th scope="row">10</th>
									<td>Inputs should be sorted for join component note
										without using in memory</td>
									<td><a
										href="http://beforesubmit.com/qe-assess/question_list.html#">Ab-Inito</a></td>
									<td>MEDIUM</td>
									<td>16-Jan-2019</td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-edit"></i></a></td>
									<td class="text-center"><a
										href="http://beforesubmit.com/qe-assess/question_list.html#"><i
											class="fa fa-trash"></i></a></td>
								</tr> -->
							</tbody>
						</table>
					</div>

				</div>
			</div>
			<div class="rightdiv">
				<h4 class="heading">${question_label}</h4>
				<div class="addqueform">
					<form name="questionForm" method="post" modelAttribute="question"
						action="saveQuestion">
						<div class="formfield">
							<label>Question</label>

							<form:textarea path="question.questionText" required="true" />
							<form:hidden path="question.id" />
						</div>

						<!--  <div class="formfield">
					
                                            <select>
                                                <option>Select Question Type</option>
						<option selected>Multi Choice Question</option>
						<option>Coding Assignment</option>
						<option>Project Assessment</option>
                                            </select>
					   
                                        </div> -->

						<div class="formfield">
							<label>Question Type</label>
							<form:select id="questionType" path="question.type"
								onchange="changeQType()">

								<form:options items="${types}" itemValue="type" itemLabel="type" />
							</form:select>
						</div>

						<div class="formfield">

							<form:select path="question.level">

								<form:options items="${levels}" itemValue="level"
									itemLabel="level" />
							</form:select>
						</div>

						<c:choose>
							<c:when test="${question.type=='MCQ'}">
								<div id="mcqDiv" class="formfield">
							</c:when>
							<c:when test="${question.type=='CODING'}">
								<div id="mcqDiv" class="formfield" style="display: none">
							</c:when>
						</c:choose>


						<div class="selectoptions">
							<span>Options</span> <span
								style="float: right; padding-right: 20px;">Correct Choice</span>

							<div id="maindivforaddmore">
								<div class="option">
									<span>A</span>
									<form:input path="question.choice1" name="choice1" id="choice1"
										required="true" />
									<div class="choice">
										<form:checkbox path="question.one" />
									</div>
								</div>
								<div class="option">
									<span>B</span>
									<form:input path="question.choice2" name="choice2" id="choice2"
										required="true" />
									<div class="choice">
										<form:checkbox path="question.two" />
									</div>
								</div>
								<div class="option">
									<span>C</span>
									<form:input path="question.choice3" name="choice3" id="choice3" />
									<div class="choice">
										<form:checkbox path="question.three" />
									</div>
								</div>
								<div class="option">
									<span>D</span>
									<form:input path="question.choice4" name="choice4" id="choice4" />
									<div class="choice">
										<form:checkbox path="question.four" />
									</div>
								</div>
								<div class="option">
									<span>E</span>
									<form:input path="question.choice5" name="choice5" id="choice5" />
									<div class="choice">
										<form:checkbox path="question.five" />
									</div>
								</div>

								<div class="option">
									<span>F</span>
									<form:input path="question.choice6" name="choice6" id="choice6" />
									<div class="choice">
										<form:checkbox path="question.six" />
									</div>
								</div>
							</div>
						</div>
				</div>

				<c:choose>
					<c:when test="${question.type=='MCQ'}">
						<div id="codingDiv" class="formfield" style="display: none">
					</c:when>
					<c:when test="${question.type=='CODING'}">
						<div id="codingDiv" class="formfield">
					</c:when>
				</c:choose>


				<div class="formfield">
					<label>Programming Language</label>
					<form:select path="question.lang">

						<form:options items="${languages}" itemValue="language"
							itemLabel="language" />
					</form:select>
				</div>

				<div class="formfield">
					<label>Code Input</label>

					<form:textarea path="question.inputCode"
						style="height:150px;overflow-y: scroll" id="inputCode" />

				</div>

				<div class="formfield">
					<label>System Input 1</label>

					<form:textarea path="question.hiddenInputPositive"
						style="height:30px" id="hiddenInputPositive" />

				</div>
				<div class="formfield">
					<label>System Output 1</label>

					<form:textarea path="question.hiddenOutputPositive"
						style="height:30px" id="hiddenOutputPositive" />

				</div>
				<div class="formfield">
					<label>System Input 2</label>

					<form:textarea path="question.hiddenInputNegative"
						style="height:30px" id="hiddenInputNegative" />

				</div>
				<div class="formfield">
					<label>System Output 2</label>

					<form:textarea path="question.hiddenOutputNegative"
						style="height:30px" id="hiddenOutputNegative" />

				</div>

				<div class="formfield">
					<label>Constraints</label>

					<form:textarea path="question.constrnt" style="height:50px" />

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
	<script src="./Question List_files/jquery-2.1.3.min.js.download"></script>
	<script src="./Question List_files/bootstrap.min.js.download"></script>
	<script src="./Question List_files/materialize.min.js.download"></script>
	<script src="./Question List_files/menuzord.js.download"></script>
	<script
		src="./Question List_files/bootstrap-tabcollapse.min.js.download"></script>
	<script src="./Question List_files/jquery.easing.min.js.download"></script>
	<script src="./Question List_files/jquery.sticky.min.js.download"></script>
	<script src="./Question List_files/smoothscroll.min.js.download"></script>
	<script src="./Question List_files/imagesloaded.js.download"></script>
	<script src="./Question List_files/jquery.stellar.min.js.download"></script>
	<script src="./Question List_files/jquery.inview.min.js.download"></script>
	<script src="./Question List_files/jquery.shuffle.min.js.download"></script>
	<script src="./Question List_files/owl.carousel.min.js.download"></script>
	<script src="./Question List_files/jquery.flexslider-min.js.download"></script>
	<script
		src="./Question List_files/jquery.magnific-popup.min.js.download"></script>
	<script src="./Question List_files/scripts.js.download"></script>

	<div class="hiddendiv common"></div>
</body>
</html>