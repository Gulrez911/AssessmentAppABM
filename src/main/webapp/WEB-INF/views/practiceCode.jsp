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
<title>Practice Code</title>

<link href="./resources/assets/img/ico/favicon.png" rel="shortcut icon" />
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900"
	rel="stylesheet" type="text/css" />
<!-- Material Icons CSS -->
<link href="./resources/assets/fonts/iconfont/material-icons.css"
	rel="stylesheet" type="text/css" />
<!-- FontAwesome CSS -->
<link
	href="./resources/assets/fonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- magnific-popup -->
<link href="./resources/assets/magnific-popup/magnific-popup.css"
	rel="stylesheet" type="text/css" />
<link href="./resources/assets/owl.carousel/assets/owl.carousel.css"
	rel="stylesheet" type="text/css" />
<link
	href="./resources/assets/owl.carousel/assets/owl.theme.default.min.css"
	rel="stylesheet" type="text/css" />
<!-- flexslider -->
<link href="./resources/assets/flexSlider/flexslider.css"
	rel="stylesheet" type="text/css" />
<!-- Bootstrap -->
<link href="./resources/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- shortcodes -->
<link href="./resources/assets/css/shortcodes/shortcodes.css"
	rel="stylesheet" type="text/css" />
<!-- Style CSS -->
<link href="./resources/assets/style.css" rel="stylesheet"
	type="text/css" />
<!-- RS5.0 Main Stylesheet -->
<link href="./resources/assets/revolution/css/settings.css"
	rel="stylesheet" type="text/css" />
<!-- RS5.0 Layers and Navigation Styles -->
<link href="./resources/assets/revolution/css/layers.css"
	rel="stylesheet" type="text/css" />
<link href="./resources/assets/revolution/css/navigation.css"
	rel="stylesheet" type="text/css" />
<link href="./resources/assets/css/pnotify.custom.min.css"
	rel="stylesheet" type="text/css" />
<style>
<<<<<<< HEAD
=======
 .tooltip {
	position: relative;
	display: inline-block;
	opacity: 12;
}

.tooltip .tooltiptext {
	visibility: hidden;
	width: 120px;
	background-color: #ececec;
  color: black;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
	opacity: 1;
	
  top: 100%;
  left: 50%;
  margin-left: -60px;
}
.tooltip .tooltiptext::after {
  content: " ";
  position: absolute;
  bottom: 100%;  /* At the top of the tooltip */
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: transparent transparent black transparent;
}

.tooltip:hover .tooltiptext {
	visibility: visible;
}
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

.drp{
	display:block;
	inline-size:auto;
	font-size:16px;
	margin-top:15px;
	border-radius:0.5rem;
	border-bottom:3px solid #fff;
	background: #647687;
	color: #fff;
}
.drp>option{
	padding:7px;
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
  display: none;
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

a.dropbtn:hover > .dropdown{display:block;}
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
	<c:import url="menucommon.jsp"></c:import>

	<section>
		<!-- <div class="col-md-2">
						<a href="signoffUser" class="btn waves-effect waves-light col-md-12"><i
							class="material-icons fa fa-sign-out"></i> Sign Off</a>
		</div> -->

	</section>

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
	<script
		src="./resources/assets/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script src="./resources/assets/js/scripts.js"></script>
	<script src="./resources/assets/scripts/custom.js"></script>
	<script src="./resources/assets/scripts/pnotify.custom.min.js"></script>
	<spring:url value="/resources/assets/js/menuscripts.js" var="mainJs18" />
	<script src="${mainJs18}"></script>
	<script type="text/javascript">
		
	</script>

<!-- 	Welcome <br> -->
<%-- 	${email} <br> --%>
<%-- 	Your name is ${name} --%>

	
</body>

</html>