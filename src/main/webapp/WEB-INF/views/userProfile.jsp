<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Techademy</title>
<!--  Header start-->
<!-- <link rel="stylesheet" href="./resources/userprofile/css/animate.css"> -->
<!-- <link rel="stylesheet" href="./resources/userprofile/css/icomoon.css"> -->
<link rel="stylesheet" href="./resources/userprofile/css/bootstrap.css">
<!-- <link rel="stylesheet" href="./resources/userprofile/css/magnific-popup.css"> -->
<!-- <link rel="stylesheet" href="./resources/userprofile/css/flexslider.css"> -->
<!-- <link rel="stylesheet" href="./resources/userprofile/css/owl.carousel.min.css"> -->
<!-- <link rel="stylesheet" href="./resources/userprofile/css/owl.theme.default.min.css"> -->
<!-- <link rel="stylesheet" href="./resources/userprofile/fonts/flaticon/font/flaticon.css"> -->
<link rel="stylesheet" href="./resources/userprofile/css/style.css">
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
table {
	color: black;
}

.colorlib-nav .top-menu {
	padding: 3px;
	background-color: #3982e6;
	font-size: 44px;
}

a {
	/* 	font-family: "Trebuchet MS", Helvetica, sans-serif; */
	font-family: Arial, Helvetica, sans-serif;
	font-size: large;
}

.colorlib-nav ul li a {
	position: relative;
	font-size: 14px;
	padding: 30px 11px;
	font-weight: 700;
	color: #7efff5;
	-webkit-transition: 0.5s;
	-o-transition: 0.5s;
	transition: 0.5s;
}
</style>

<!--  end -->
<style>
text {
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

body {
	background-color: #fff;
	height: auto;
}

.header {
	padding: 20px 0;
}

.logo {
	padding: 0 !important;
}

.logo h1 {
	color: #000;
	font-size: 20px;
	margin: 0;
}

.logo a {
	text-decoration: none;
}

.rightsideinfo {
	float: left;
	width: 100%;
}

.rightsideinfo ul {
	float: right;
}

.rightsideinfo ul li {
	display: inline-block;
	padding: 0 20px;
}

.rightsideinfo ul li.trybtn a {
	background-color: #3e75f9;
	padding: 10px 25px;
	color: #fff;
	border-radius: 25px;
	text-decoration: none;
}

.rightsideinfo ul li a {
	color: #000;
}

.rightsideinfo ul li img {
	width: 35px;
	border-radius: 50%;
	margin-left: 10px;
}

.employyeprofile {
	float: left;
	width: 100%;
}

.employyeprofile .leftsideinfo .image {
	float: left;
	width: 100%;
	padding-top: 50px;
}

.employyeprofile .leftsideinfo .image img {
	max-width: 100%;
	width: 180px;
}

.employyeprofile .leftsideinfo .image h5 {
	float: left;
	width: 100%;
	font-size: 22px;
	padding-top: 10px;
}

.employyeprofile .leftsideinfo .image h6 {
	float: left;
	width: 100%;
	font-size: 15px;
	margin-top: 0;
}

.leftsideinfo .charges {
	float: left;
	width: 100%;
	background-color: #e4f1fe;
	padding: 10px;
	border-radius: 5px;
	font-weight: bold;
	margin-top: 15px;
}

.leftsideinfo .userinfo {
	float: left;
	width: 100%;
	padding-top: 20px;
}

.leftsideinfo .userinfo h5 {
	color: #000;
	font-weight: bold;
}

.leftsideinfo .userinfo li {
	float: left;
	width: 100%;
	padding-bottom: 5px;
	font-size: 15px;
}

.leftsideinfo .userinfo li i {
	margin-right: 10px;
}

.leftsideinfo .userinfo li img {
	width: 20px;
	margin-right: 10px;
}

.employyeprofile .rightsideinformation {
	float: left;
	width: 100%;
/* 	padding-left: 20px; */
	border-radius: 25px;
	box-shadow: 0px 10px 35px -5px #aaaaaa;
}

.rightsideinformation .employeecosts {
	float: left;
	width: 100%;
}

.rightsideinformation .heading {
	font-size: 22px;
	color: #3e75f9;
	padding-top: 2%;
}

.employeecosts ul li {
	float: left;
	width: 100%;
	padding-bottom: 10px;
}

.employeecosts li .costcolor {
	float: left;
	width: 20px;
	height: 5px;
	background-color: red;
	margin-right: 20px;
	position: relative;
	top: 15px;
}

#piechart #piechart2 {
	box-shadow: 0px 10px 35px -5px #aaaaaa;
}

.employeecosts ul {
	float: left;
	width: 100%;
	padding-top: 50px;
	padding-left: 50px;
}

.employeecosts li .costinfo {
	float: left;
}

.employeecosts li .costinfo h6 {
	margin: 0;
	font-size: 15px;
	font-weight: bold;
}

.employyeprofile ul {
	list-style: none;
	padding-left: 0;
}
</style>
<style>
.nav-link[data-toggle].collapsed:after {
	content: "\25B2";
}

.nav-link[data-toggle]:not (.collapsed ):after {
	content: "\25BC";
}
</style>
</head>

<body>
	<c:import url="menucommon.jsp"></c:import>
	<div class="header">
		<div class="headertop">
			<div class="col-md-12">
				<div class="col-md-6 col-xs-6">
					<div class="logo">
						<!-- 							<a href="#"><h1>Employee Summary</h1></a> -->
					</div>
				</div>
				<div class="col-md-6">
					<div class="rightsideinfo">
						<ul>
							<li><a href="#">${lmsadmin} <img id="img2" src="images/user.png"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="container">
	<div class="employyeprofile">
		<div class="col-md-12">

			<div class="col-md-12">
				<div class="rightsideinformation">
					<div class="employeecosts">
						<h4 class="heading" style="text-align: center; padding-top: 20px;">${name} ProgressReport</h4>
						<div class="col-md-6">
							<div id="piechart" style="box-shadow: 0px 10px 35px -5px #aaaaaa; height: 70%"></div>
						</div>
						<div class="col-md-6">
							<div id="piechart2" style="box-shadow: 0px 10px 35px -5px #aaaaaa;height: 70%"></div>
						</div>

						<div class="employeecosts">
								<h4 class="heading" style="text-align: center;">Profiler Summary of  <span id="qq">${qualifier2}</span></h4>
						</div>

					</div>
					 
					<div class="col-md-12" >
						<table id="tbl" class='table table-striped' style=" box-shadow: 0px 10px 35px -5px #aaaaaa;">
						 	<tr style="background-color: #0f0f6557; color: white; font-size: 30px;">
								<th>Topic</th>
								<th>What your score means</th>
							</tr>
							<tr class="tr"></tr>
						</table>

					</div>

				</div>
			</div>
		</div>

	</div>
</div>
	<script src="scripts/jquery.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		
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
	<spring:url value="/resources/assets/js/menuscripts.js" var="mainJs18" />
	<script src="${mainJs18}"></script>
	
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	<script type="text/javascript">
		// Load google charts
		google.charts.load('current', {
			'packages' : [ 'corechart' ]
		});
		google.charts.setOnLoadCallback(drawChart);
		// 		google.charts.setOnLoadCallback(drawChart2);
		// Draw the chart and set the chart values
		function drawChart() {
			drawChart2("${qualifier2}");
			getParam("${qualifier2}");
			var options = {
				title : 'Skills',
				// 			          colors: ['#888', 'orange'],
				is3D : true,
			};
			var email = '${email}';
			console.log(email);
			$
					.ajax({
						url : "getChart1?email=" + email,
						datatype : "json",
						type : "GET",
						contentType : "application/json; charset=utf-8",
						success : function(data) {
							var arrValues = [ [ 'Skill', 'Score' ] ]; // DEFINE AN ARRAY.
							var iCnt = 0;
							console.log(data.chart);
							console.log(data.email);
							var data = $.parseJSON(data.chart);
							jQuery.each(data, function(index, value) {
								console.log(value.percent);
								arrValues.push([ value.qualifier2,
										value.percent ]);
								iCnt += 1;
							});

							function selectHandler() {
								var x = '${param.email}';
								console.log(x);
								var selectedItem = chart.getSelection()[0];
								if (selectedItem) {
									var topping = data.getValue(
											selectedItem.row, 0);
									// 				                      alert('The user selected ' + x);
									drawChart2(topping);
									$("#qq").text(topping);
									getParam(topping);
								}
							}

							var data = google.visualization
									.arrayToDataTable(arrValues);
							var chart = new google.visualization.PieChart(
									document.getElementById('piechart'));
							google.visualization.events.addListener(chart,
									'select', selectHandler);
							chart.draw(data, options);
						}
					});
		}

		function drawChart2(qualifier2) {
			var options = {
				title : qualifier2,
				pieHole : 0.4,

			};
			var email = '${email}';
			console.log(email);
			$
					.ajax({
						url : "getChart2?email=" + email + "&qualifier2="
								+ qualifier2,
						datatype : "json",
						type : "GET",
						contentType : "application/json; charset=utf-8",
						success : function(data) {
							var arrValues = [ [ 'Skill', 'Score' ] ]; // DEFINE AN ARRAY.
							var iCnt = 0;
							console.log(data.chart);
							console.log(data.email);
							var data = $.parseJSON(data.chart);
							jQuery.each(data, function(index, value) {
								console.log(value.percent);
								arrValues.push([ value.qualifier3,
										value.percent ]);
								iCnt += 1;
							});

							var data = google.visualization
									.arrayToDataTable(arrValues);
							var chart = new google.visualization.PieChart(
									document.getElementById('piechart2'));
							// 				                  google.visualization.events.addListener(chart, 'select', selectHandler);    
							chart.draw(data, options);
						}
					});
		}

		function getParam(val) {
			var email = '${email}';
			$.ajax({
				url : 'getRecom?param=' + val + '&email=' + email,
				type : 'GET',
				success : function(data) {
					$(".tr").remove();
					for ( var item in data) {
						$('#tbl').append(
								"<tr class='tr'><td>" + item + "</td><td>"
										+ data[item] + "</td></tr>");
					}
				},
			});

		}
	</script>

</body>
</html>
