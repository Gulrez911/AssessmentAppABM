<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}

.container {
  width: 100%;
  background-color: #ddd;
}

.skills {
  text-align: right;
  padding: 10px;
  color: white;
}

.html {width: 40%; background-color: #4CAF50;}
.css {width: 80%; background-color: #2196F3;}
.js {width: 65%; background-color: #f44336;}
.php {width: 60%; background-color: #808080;}
</style>
<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
</script>
</head>
<body onLoad="noBack();">
<%-- <c:forEach items="${rs}" var="rs"> --%>
<h1>My Skills</h1>

<p>${rs.area }</p>
<div class="container">
  <div style="width: ${rs.score }%; background-color: #4CAF50;">${rs.score }</div>
</div>

<!-- <p>Investigative</p>
<div class="container">
  <div class="skills css">80%</div>
</div>

<p>Artistic</p>
<div class="container">
  <div class="skills js">65%</div>
</div>

<p>Social</p>
<div class="container">
  <div class="skills php">60%</div>
</div>

<p>Enterprising</p>
<div class="container">
  <div class="skills js">65%</div>
</div>

<p>Conventional</p>
<div class="container">
  <div class="skills php">60%</div>
</div> -->

</body>
</html>
