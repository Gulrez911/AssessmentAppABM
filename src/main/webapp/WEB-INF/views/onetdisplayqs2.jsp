<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet'
		type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Muli:300,400,700' rel='stylesheet'
		type='text/css'>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
		rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome_new.css" rel="stylesheet" type="text/css">
<link href="css/style_new.css" rel="stylesheet" type="text/css">
<link href="css/responsive_new.css" rel="stylesheet" type="text/css">
<link href="css/style_testjourney.css" rel="stylesheet" type="text/css">
<link href="css/pnotify.custom.min.css" rel="stylesheet" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>
<script type="text/javascript" src="scripts/pnotify.custom.min.js"></script>
<script type="text/javascript" src="scripts/html2canvas.js"></script>
<script src="scripts/src-min-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function able(id, which) {

		//var item = document.forms['testForm'].elements[id];
		var item = document.getElementById('testForm').elements[id];

		if (item) {

			if (item.length) {
				for (i = item.length - 1; i >= 0; i--) {

					item[i].disabled = which;
					if (item[i].src)
						alert(item[i].src);

				}
			} else {
				item.disabled = which;
				if (item.src)
					alert(item.src);
			}
		}
	}
	function disable(id) {
		able(id, true);
	}
	function enable(id) {
		able(id, false);
	}
</script>

</head>
<body>

		<p>${ans.next-12}</p>
		<form:form id="testForm" name="testForm" method="POST" modelAttribute="ans"
				action="nextOnetQuestion2">


				<span><b><font size="3" color="red">${oo.questionText}</font></b></span>
				<br>
				<br>
				<span>${oo.choice1}</span>
				<form:radiobutton path="one1" value="1" onclick="enable('res2')" />
				<br>
				<span>${oo.choice2}</span>
				<form:radiobutton path="one1" value="2" onclick="enable('res2')" />
				<br>
				<span>${oo.choice3}</span>
				<form:radiobutton path="one1" value="3" name="res1" onclick="enable('res2')" />
				<br>
				<span>${oo.choice4}</span>
				<form:radiobutton path="one1" value="4" name="res1" onclick="enable('res2')" />
				<br>
				<span>${oo.choice5}</span>
				<form:radiobutton path="one1" value="5" name="res1" onclick="enable('res2')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o1.questionText}</font></b></span>
				<br>
				<br>
				<span>${o1.choice1}</span>
				<form:radiobutton path="two1" id="res2" value="1" onclick="enable('res3')" />
				<br>
				<span>${o1.choice2}</span>
				<form:radiobutton path="two1" id="res2" value="2" onclick="enable('res3')" />
				<br>
				<span>${o1.choice3}</span>
				<form:radiobutton path="two1" id="res2" value="3" onclick="enable('res3')" />
				<br>
				<span>${o1.choice4}</span>
				<form:radiobutton path="two1" id="res2" value="4" onclick="enable('res3')" />
				<br>
				<span>${o1.choice5}</span>
				<form:radiobutton path="two1" id="res2" value="5" onclick="enable('res3')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o2.questionText}</font></b></span>
				<br>
				<br>
				<span>${o2.choice1}</span>
				<form:radiobutton path="three1" id="res3" value="1" name="res3" onclick="enable('res4')" />
				<br>
				<span>${o2.choice2}</span>
				<form:radiobutton path="three1" id="res3" value="2" name="res3" onclick="enable('res4')" />
				<br>
				<span>${o2.choice3}</span>
				<form:radiobutton path="three1" id="res3" value="3" name="res3" onclick="enable('res4')" />
				<br>
				<span>${o2.choice4}</span>
				<form:radiobutton path="three1" id="res3" value="4" name="res3" onclick="enable('res4')" />
				<br>
				<span>${o2.choice5}</span>
				<form:radiobutton path="three1" id="res3" value="5" name=" res3" onclick="enable('res4')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o3.questionText}</font></b></span>
				<br>
				<br>
				<span>${o3.choice1}</span>
				<form:radiobutton path="four1" value="1" id="res4" onclick="enable('res5')" />
				<br>
				<span>${o3.choice2}</span>
				<form:radiobutton path="four1" value="2" id="res4" onclick="enable('res5')" />
				<br>
				<span>${o3.choice3}</span>
				<form:radiobutton path="four1" value="3" id="res4" onclick="enable('res5')" />
				<br>
				<span>${o3.choice4}</span>
				<form:radiobutton path="four1" value="4" id="res4" onclick="enable('res5')" />
				<br>
				<span>${o4.choice5}</span>
				<form:radiobutton path="four1" value="5" id="res4" onclick="enable('res5')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o4.questionText}</font></b></span>
				<br>
				<br>
				<span>${o4.choice1}</span>
				<form:radiobutton path="five1" value="1" id="res5" onclick="enable('res6')" />
				<br>
				<span>${o4.choice2}</span>
				<form:radiobutton path="five1" value="2" id="res5" onclick="enable('res6')" />
				<br>
				<span>${o4.choice3}</span>
				<form:radiobutton path="five1" value="3" id="res5" onclick="enable('res6')" />
				<br>
				<span>${o4.choice4}</span>
				<form:radiobutton path="five1" value="4" id="res5" onclick="enable('res6')" />
				<br>
				<span>${o4.choice5}</span>
				<form:radiobutton path="five1" value="5" id="res5" onclick="enable('res6')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o5.questionText}</font></b></span>
				<br>
				<br>
				<span>${o5.choice1}</span>
				<form:radiobutton path="six1" value="1" id="res6" onclick="enable('res7')" />
				<br>
				<span>${o5.choice2}</span>
				<form:radiobutton path="six1" value="2" id="res6" onclick="enable('res7')" />
				<br>
				<span>${o5.choice3}</span>
				<form:radiobutton path="six1" value="3" id="res6" onclick="enable('res7')" />
				<br>
				<span>${o5.choice4}</span>
				<form:radiobutton path="six1" value="4" id="res6" onclick="enable('res7')" />
				<br>
				<span>${o5.choice5}</span>
				<form:radiobutton path="six1" value="5" id="res6" onclick="enable('res7')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o6.questionText}</font></b></span>
				<br>
				<br>
				<span>${o6.choice1}</span>
				<form:radiobutton path="seven1" value="1" id="res7" onclick="enable('res8')" />
				<br>
				<span>${o6.choice2}</span>
				<form:radiobutton path="seven1" value="2" id="res7" onclick="enable('res8')" />
				<br>
				<span>${o6.choice3}</span>
				<form:radiobutton path="seven1" value="3" id="res7" onclick="enable('res8')" />
				<br>
				<span>${o6.choice4}</span>
				<form:radiobutton path="seven1" value="4" id="res7" onclick="enable('res8')" />
				<br>
				<span>${o6.choice5}</span>
				<form:radiobutton path="seven1" value="5" id="res7" onclick="enable('res8')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o7.questionText}</font></b></span>
				<br>
				<br>
				<span>${o7.choice1}</span>
				<form:radiobutton path="eight1" value="1" id="res8" onclick="enable('res9')" />
				<br>
				<span>${o7.choice2}</span>
				<form:radiobutton path="eight1" value="2" id="res8" onclick="enable('res9')" />
				<br>
				<span>${o7.choice3}</span>
				<form:radiobutton path="eight1" value="3" id="res8" onclick="enable('res9')" />
				<br>
				<span>${o7.choice4}</span>
				<form:radiobutton path="eight1" value="4" id="res8" onclick="enable('res9')" />
				<br>
				<span>${o7.choice5}</span>
				<form:radiobutton path="eight1" value="5" id="res8" onclick="enable('res9')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o8.questionText}</font></b></span>
				<br>
				<br>
				<span>${o8.choice1}</span>
				<form:radiobutton path="nine1" value="1" id="res9" onclick="enable('res10')" />
				<br>
				<span>${o8.choice2}</span>
				<form:radiobutton path="nine1" value="2" id="res9" onclick="enable('res10')" />
				<br>
				<span>${o8.choice3}</span>
				<form:radiobutton path="nine1" value="3" id="res9" onclick="enable('res10')" />
				<br>
				<span>${o8.choice4}</span>
				<form:radiobutton path="nine1" value="4" id="res9" onclick="enable('res10')" />
				<br>
				<span>${o8.choice5}</span>
				<form:radiobutton path="nine1" value="5" id="res9" onclick="enable('res10')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${o9.questionText}</font></b></span>
				<br>
				<br>
				<span>${o9.choice1}</span>
				<form:radiobutton path="ten1" value="1" id="res10" onclick="enable('res11')" />
				<br>
				<span>${o9.choice2}</span>
				<form:radiobutton path="ten1" value="2" id="res10" onclick="enable('res11')" />
				<br>
				<span>${o9.choice3}</span>
				<form:radiobutton path="ten1" value="3" id="res10" onclick="enable('res11')" />
				<br>
				<span>${o9.choice4}</span>
				<form:radiobutton path="ten1" value="4" id="res10" onclick="enable('res11')" />
				<br>
				<span>${o9.choice5}</span>
				<form:radiobutton path="ten1" value="5" id="res10" onclick="enable('res11')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${ten.questionText}</font></b></span>
				<br>
				<br>
				<span>${ten.choice1}</span>
				<form:radiobutton path="eleven1" value="1" id="res11" onclick="enable('res12')" />
				<br>
				<span>${ten.choice2}</span>
				<form:radiobutton path="eleven1" value="2" id="res11" onclick="enable('res12')" />
				<br>
				<span>${ten.choice3}</span>
				<form:radiobutton path="eleven1" value="3" id="res11" onclick="enable('res12')" />
				<br>
				<span>${ten.choice4}</span>
				<form:radiobutton path="eleven1" value="4" id="res11" onclick="enable('res12')" />
				<br>
				<span>${ten.choice5}</span>
				<form:radiobutton path="eleven1" value="5" id="res11" onclick="enable('res12')" />
				<br>
				<br>
				<span><b><font size="3" color="red">${eleven.questionText}</font></b></span>
				<br>
				<br>
				<span>${eleven.choice1}</span>
				<form:radiobutton path="twelve1" value="1" id="res12" />
				<br>
				<span>${eleven.choice2}</span>
				<form:radiobutton path="twelve1" value="2" id="res12" />
				<br>
				<span>${eleven.choice3}</span>
				<form:radiobutton path="twelve1" value="2" id="res12" />
				<br>
				<span>${eleven.choice4}</span>
				<form:radiobutton path="twelve1" value="4" id="res12" />
				<br>
				<span>${eleven.choice5}</span>
				<form:radiobutton path="twelve1" value="5" id="res12" />
				<br>
				<br>
				<!-- 				<input type="submit" value="Next"> -->

				<c:choose>
						<c:when test="${ans.first==true}">
						</c:when>
						<c:otherwise>
								<a class="back" href="javascript:prev();">Back</a>
								<!-- <i class="fa fa-long-arrow-left"></i> -->
						</c:otherwise>
				</c:choose>
				<c:choose>
						<c:when test="${ans.last==true}">

								<a class="next" href="javascript:submitTest();" id="next">SUBMIT TEST</a>
						</c:when>
						<c:otherwise>
								<a class="next" href="javascript:next();" id="next">Next</a>

						</c:otherwise>
				</c:choose>
		</form:form>
		<%-- 		</center> --%>

		<script type="text/javascript">
			if (document.getElementById("res2").checked
					&& document.getElementById("res3").checked
					&& document.getElementById("res4").checked
					&& document.getElementById("res5").checked
					&& document.getElementById("res6").checked
					&& document.getElementById("res7").checked
					&& document.getElementById("res8").checked
					&& document.getElementById("res9").checked
					&& document.getElementById("res10").checked
					&& document.getElementById("res11").checked
					&& document.getElementById("res12").checked) {
			} else {
				disable('res2');
				disable('res3');
				disable('res4');
				disable('res5');
				disable('res6');
				disable('res7');
				disable('res8');
				disable('res9');
				disable('res10');
				disable('res11');
				disable('res12');
			}
		</script>


		<script type="text/javascript">
			var str = window.localStorage.getItem('str', str);
			if (str) {
				var str = '';
			}

			function next() {
				window.localStorage.setItem('str', str);
				document.testForm.action = "nextOnetQuestion2?para=${ans.next+12}&Page=${ans.page}";
				document.testForm.submit();
			}

			function prev() {
				document.testForm.action = "prevOnetQuestion?para=${ans.next-12}&Page=${ans.page}";
				document.testForm.submit();
			}

			function submitTest() {

				document.testForm.action = "submitTest1?para=${ans.next+12}&ans="
						+ str;
				document.testForm.submit();
			}
		</script>

</body>
</html>