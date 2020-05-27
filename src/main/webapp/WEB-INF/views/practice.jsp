<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Practice</title>
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
<spring:url value="/resources/assets/flexSlider/flexslider.css" var="c8" />

<link href="${c8}" rel="stylesheet" type="text/css" />
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
<spring:url
	value="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"
	var="mainJs1" />
<script src="${mainJs1}"></script>
<spring:url value="/resources/scripts/custom.js" var="mainJs2" />
<script src="${mainJs2}"></script>
<spring:url value="/resources/scripts/pnotify.custom.min.js"
	var="mainJs3" />
<script src="${mainJs3}"></script>
<spring:url value="/resources/scripts/html2canvas.js" var="mainJs4" />
<script src="${mainJs4}"></script>
<spring:url value="/resources/scripts/src-min-noconflict/ace.js"
	var="mainJs5" />
<script src="${mainJs5}"></script>

</head>
<body id="top" class="has-header-search">

	<!--   header Start -->
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
						<li><a href="showReports">Results</a></li>
						<li class="active"><a href="practice">Practice</a></li>
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
	<!-- header End -->

	<section>
		<div class="container">
			<div class="leftside">
				<h1 style="color: #b07c2a;">
					<b>Code, Compile & Run</b>
				</h1>
			</div>
			<div class="col-md-12">
				<div class="col-md-7 leftside">
					<button type="button" name="submit"
						class="waves-effect waves-light btn submit-button indigo mt-30"
						onclick="runCode()">RunCode</button>
					<button type="button" class="waves-effect waves-light btn submit-button indigo mt-30" id="btn"
						onclick="saveCode()">Save</button>
						<button type="button" class="waves-effect waves-light btn submit-button indigo mt-30" 
						onclick="addNew()">Add New</button>
					<form:form action="saveCode" modelAttribute="practiceCode"
						method="post">
                         
						<label style="color: black; font-size: 18px">Programming Language</label>
						<form:select path="lang" id="lang" onchange="changeLang()">
							<form:options items="${langs}" />

						</form:select>
						<label style="color: black; font-size: 18px">Date Wise Code</label>
						<select id="dateId" onchange="changeDate()">
						   <c:forEach items="${listCode}" var="listCode">
						   <option value="${listCode.id}">${listCode.createDate}</option>
						   </c:forEach>
						</select>
					
						
						<div id="aceEditor">
							<form:textarea path="code" wrap="physical" id="editor" />
						</div>
						<form:hidden path="id" id="id" />
						<input type="hidden" id="codeOfEditor" name="code" value="3487">


						<br>
						<br>
						<label style="color: black; font-size: 18px">Input</label>
						<br>
						<form:textarea path="input" id="input" style="height:30px"
							placeholder="Enter Input" rows="7" cols="70" />
						<br>
						<br>
						<label style="color: black; font-size: 18px">Output</label>
						<br>
						<form:textarea style="overflow-y: scroll" path="output"
							id="output" disabled="true" cols="70" />

					</form:form>
				</div>
				<%-- <div class="col-md-5 rightside">

					<label style="color: black; font-size: 22px">Date Wise Code</label>
					<table>

						<c:forEach items="${listCode}" var="listCode">
							<tr>
								<td><a href="practice?id=${listCode.id}">${listCode.createDate}</a></td>
							</tr>
						</c:forEach>
					</table>


				</div> --%>
			</div>
			<div class="text-center"></div>
		</div>
		</div>
	</section>


	<footer class="footer footer-four">
		<div class="secondary-footer brand-bg darken-2 text-center">
			<div class="container">
				<ul>
					<li><a
						href="javascript:notify('Information', 'We will release the feature pretty soon! Please wait for our next release');">Dashboard</a></li>
					<li class="active"><a href="question_list">Question Bank</a></li>
					<li><a href="testlist">Tests</a></li>
					<li><a href="skills">Skills</a></li>
					<li><a href="showReports">Results</a></li>
					<li><a href="codingSessions">Code Analysis Reports</a></li>
					<li><a href="skillTest">Skill Test</a></li>
					<li><a href="showSkillTags">Skill based Reports</a></li>
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
		var editor = ace.edit("aceEditor");
		editor.setTheme("ace/theme/solarized_light");
		var language = $("#lang").val();
		console.log(language);
		/* 	var language=${practiceCode.lang}; */
		if (language == 'JAVA') {
			editor.session.setMode("ace/mode/java");
		} else if (language == 'C') {
			editor.session.setMode("ace/mode/c_cpp");
		} else if (language == 'C plusplus') {
			editor.session.setMode("ace/mode/c_cpp");
		} else if (language == 'C sharp') {
			editor.session.setMode("ace/mode/csharp");
		} else if (language == 'Python') {
			editor.session.setMode("ace/mode/python");
		}else if (language == 'Ruby') {
			editor.session.setMode("ace/mode/ruby");
		}else if (language == 'Perl') {
			editor.session.setMode("ace/mode/perl");
		}else if (language == 'Scala') {
			editor.session.setMode("ace/mode/scala");
		}else if (language == 'Go') {
			editor.session.setMode("ace/mode/go");
		}else if (language == 'Bash') {
			editor.session.setMode("ace/mode/bash");
		}else if (language == 'Rust') {
			editor.session.setMode("ace/mode/rust");
		}else if (language == 'PHP') {
			editor.session.setMode("ace/mode/php");
		}else if (language == 'Clojure') {
			editor.session.setMode("ace/mode/clojure");
		}else if (language == 'Plain Javascript') {
			editor.session.setMode("ace/mode/plain_javascript");
		}else if (language == 'MySql') {
			editor.session.setMode("ace/mode/mysql");
		}else if (language == 'VB.NET') {
			editor.session.setMode("ace/mode/vbdotnet");
		}else if (language == 'Objective-C') {
			editor.session.setMode("ace/mode/objective-c");
		}

		editor.setValue('${practiceCode.code}');
		editor.setOptions({
			enableBasicAutocompletion : true, // the editor completes the statement when you hit Ctrl + Space
			enableLiveAutocompletion : true, // the editor completes the statement while you are typing
			showPrintMargin : false, // hides the vertical limiting strip
			maxLines : Infinity,
			fontSize : "100%" // ensures that the editor fits in the environment
		});
	</script>

	<script type="text/javascript">

	function changeDate(){
         var id = $("#dateId").val();
         window.location = 'practice?id=' +id;
       

		};
		function changeLang() {
			var Language = $("#lang").val();
			window.location = 'practice?lang=' + Language;

			//	editor.setValue(practiceCode.code);
			//	var url = 'changeLang?lang=' + Language;
			/*  $.ajax({
			 type : 'GET' ,
			 url : url,
			 success : function(response) {

					console.log("SUCCESS: ", response.code);

					var editor = ace.edit("aceEditor");
					editor.setTheme("ace/theme/solarized_light");
					var language = $("#lang").val();
					if (language == 'JAVA') {
						editor.session.setMode("ace/mode/java");
					} else if (language == 'C') {
						editor.session.setMode("ace/mode/c_cpp");
					} else if (language == 'C++') {
						editor.session.setMode("ace/mode/c_cpp");
					} else if (language == 'C#') {
						editor.session.setMode("ace/mode/csharp");
					} else if (language == 'PYTHON') {
						editor.session.setMode("ace/mode/python");
					} else if(language == 'Ruby'){
			                  editor.session.setMode("ace/mode/ruby");
						}else if(language == 'Go'){
			                  editor.session.setMode("ace/mode/go");
						}else if(language == 'Mysql'){
			                  editor.session.setMode("ace/mode/mysql");
						}else if(language == 'Perl'){
			                  editor.session.setMode("ace/mode/perl");
						}

					

					editor.setValue(response.code);
					editor.setOptions({
						enableBasicAutocompletion : true, // the editor completes the statement when you hit Ctrl + Space
						enableLiveAutocompletion : true, // the editor completes the statement while you are typing
						showPrintMargin : false, // hides the vertical limiting strip
						maxLines : Infinity,
						fontSize : "100%" // ensures that the editor fits in the environment
					});
					
				},
				error : function(e) {
					console.log("ERROR: ", e);

				} 
				
				});	 */

		}
	</script>

	<script type="text/javascript">
		function runCode() {
			//editor
			//	var editor = ace.edit("editor");
			var code = editor.getValue();
			var input = document.getElementById('input').value;
			var lang = '8';
			var language = $("#lang").val();
			if (language == 'JAVA') {
				lang = '8';
			} else if (language == 'C') {
				lang = '7';
			} else if (language == 'C plusplus') {
				lang = '7';
			} else if (language == 'C sharp') {
				lang = '10';
			} else if (language == 'Python') {
				lang = '0';
			} else if (language == 'PHP') {
				lang = '3';
			} else if (language == 'Ruby') {
				lang = '1';
			} else if (language == 'MySql') {
				lang = '13';
			} else if (language == 'Perl') {
				lang = '14';
			} else if (language == 'Clojure') {
				lang = '2';
			} else if (language == 'Plain JavaScript') {
				lang = '4';
			} else if (language == 'Scala') {
				lang = '5';
			} else if (language == 'VB.NET') {
				lang = '9';
			} else if (language == 'Bash') {
				lang = '11';
			}else if (language == 'Rust') {
				lang = '15';
			}else if (language == 'Go') {
				lang = '6';
			}else if(language == "Objective-C"){
                   lang = '12';
				}

			var url = 'compile';
			var data = {};
			data.language = lang;
			data.code = code;
			data.stdin = input;
			console.log(data);
			//var json = "{language:"+lang+", code:"+code+", stdin:"+input+"}";
			document.getElementById('output').value = 'Executing your code...';
			document.getElementById("output").focus();
			document.getElementById("output").scrollIntoView();
			dta = JSON.stringify(data);
			//dta = dta.slice(1,-1);
			//dat = "'"+dta+"'";
			$.ajax({
				type : 'POST',
				url : url,
				contentType : "application/json; charset=utf-8",
				data : dta,
				success : function(data) {

					document.getElementById('output').value = data;
					//document.getElementById('output').value = 'eee';
					console.log("SUCCESS: ", data);
				},
				error : function(e) {
					console.log("ERROR: ", e);

				}
			});
		}

		function addNew(){
			var code = editor.getValue();
			var lang = $("#lang").val();
			var langId = 8;
			if (lang == 'Java') {
				langId = 8;
			} else if (lang == 'C') {
				langId = 7;
			} else if (lang == 'C plusplus') {
				langId = 7;
			} else if (lang == 'C sharp') {
				langId = 10;
			} else if (lang == 'VB.NET') {
				langId = 9;
			} else if (lang == 'Python') {
				langId = 0;
			} else if (lang == 'Clojure') {
				langId = 2;
			} else if (lang == 'Go') {
				langId = 6;
			} else if (lang == 'Plain JavaScript') {
				langId = 4;
			} else if (lang == 'PHP') {
				langId = 3;
			} else if (lang == 'Ruby') {
				langId = 1;
			} else if (lang == 'Scala') {
				langId = 5;
			} else if (lang == 'Bash') {
				langId = 11;
			} else if (lang == 'Objective-C') {
				langId = 12;
			} else if (lang == 'MySql') {
				langId = 13;
			} else if (lang == 'Perl') {
				langId = 14;
			} else if (lang == 'Rust') {
				langId = 15;
			}

			var data = {};
			//data.createDate =$("#date").val();
			data.lang = lang;
			data.code = code;
			data.langId = langId;
			data.input = "input";
			data.output = "output";
			dta = JSON.stringify(data);
			console.log(data);
			$.ajax({
				url : "saveCode",
				type : 'POST',
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(msg) {
					
					window.location = 'practice?msg=' + msg;
				}
			});
          
			}

		function saveCode() {
			$(document).ready(function(){
				$("#btn").attr("disabled", true);	
			var code = editor.getValue();
			var lang = $("#lang").val();
			var langId = 8;
			if (lang == 'Java') {
				langId = 8;
			} else if (lang == 'C') {
				langId = 7;
			} else if (lang == 'C plusplus') {
				langId = 7;
			} else if (lang == 'C sharp') {
				langId = 10;
			} else if (lang == 'VB.NET') {
				langId = 9;
			} else if (lang == 'Python') {
				langId = 0;
			} else if (lang == 'Clojure') {
				langId = 2;
			} else if (lang == 'Go') {
				langId = 6;
			} else if (lang == 'Plain JavaScript') {
				langId = 4;
			} else if (lang == 'PHP') {
				langId = 3;
			} else if (lang == 'Ruby') {
				langId = 1;
			} else if (lang == 'Scala') {
				langId = 5;
			} else if (lang == 'Bash') {
				langId = 11;
			} else if (lang == 'Objective-C') {
				langId = 12;
			} else if (lang == 'MySql') {
				langId = 13;
			} else if (lang == 'Perl') {
				langId = 14;
			} else if (lang == 'Rust') {
				langId = 15;
			}

			var data = {};
			data.id=$("#id").val();
			//data.createDate =$("#date").val();
			data.lang = lang;
			data.code = code;
			data.langId = langId;
			data.input = "input";
			data.output = "output";
			dta = JSON.stringify(data);
			console.log(data);
			$.ajax({
				url : "saveCode",
				type : 'POST',
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(msg) {
					
					window.location =  'practice?msg=' + msg;
				}
			});
			});
		}

		 
		
	</script>
	
	<script type="text/javascript">

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