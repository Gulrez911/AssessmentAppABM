<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<!-- <link href="/resources/css" rel="stylesheet" type="text/css">
 -->
<spring:url value="/resources/css/mystyle.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
</head>
<body>

	<h1>This is a heading</h1>
	<p>This is a paragraph.</p>

</body>
</html>
