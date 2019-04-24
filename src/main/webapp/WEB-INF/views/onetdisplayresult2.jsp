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
  width: 20%;
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

.dropdown {
  position: relative;
  display:block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:active .dropdown-content {
  display: block;
}

.abc
{
float:left;
 width:40%;

 height: 450px;
  width: 30%;
  background-color: powderblue;
}

#table1 {
  border-collapse: separate;
  border-spacing: 15px;
}

.table1 {
  border-collapse: separate;
  border-spacing: 15px;
}


</style>
</head>
<body>
<table class="table1" cellspacing="0" cellpadding="0" border="0" style="width: 850px; margin: 32px auto 0; height: 56px">
Here are your Interest Profiler results!<br>

Think of your interests as work you like to do.<br>

Your interests can help you find careers you might like to explore. The more a career meets your interests, the more likely it will be satisfying and rewarding to you.
<div class="abc">

<c:forEach items="${rs}" var="rs"> 


<p><b>${rs.area }</b></p>
<div class="container">
  <div style="width: ${rs.score }%; background-color: #4CAF50;">${rs.score }</div>
</div>
</c:forEach></div>


<table id="table1"  width="60%" style="vertical-align: top; background-color: #fff; border-bottom: solid 1px #aaa; border-right: solid 1px #aaa; padding: 0 16px"><tr><td>
<ul>
<div class="dropdown">
<li><span>Realistic</span></li>
<div class="dropdown-content">
  <p>People with Realistic interests like work that includes practical, hands-on problems and answers. Often people with Realistic interests do not like careers that involve paperwork or working closely with others. They like working with plants and animals; real-world materials like wood, tools, and machinery; and outside work.</p>
  </div>
</div>
</td>

<td>
<div class="dropdown">
<li><span>Investigative</span></li>
<div class="dropdown-content">
<p>People with Investigative interests like work that has to do with ideas and thinking rather than physical activity or leading people. They like searching for facts and figuring out problems.</p>
</div>
</div>
</td>

<tr><td>
<div class="dropdown">
<li><span>Artistic</span></li>
<div class="dropdown-content">
<p>People with Artistic interests like work that deals with the artistic side of things, such as acting, music, art, and design. They like creativity in their work and work that can be done without following a set of rules.</p>
</div>
</div>
</td>

<td>
<div class="dropdown">
<li><span>Social</span></li>
<div class="dropdown-content">
<p>People with Social interests like working with others to help them learn and grow. They like working with people more than working with objects, machines, or information. They like teaching, giving advice, and helping and being of service to people.</p>
</div>
</div>
</td></tr>


<tr><td>
<div class="dropdown">
<li><span>Enterprising</span></li>
<div class="dropdown-content">
<p>People with Enterprising interests like work that has to do with starting up and carrying out business projects. These people like taking action rather than thinking about things. They like persuading and leading people, making decisions, and taking risks for profits.</p>
</div>
</div>
</td>

<td>
<div class="dropdown">
<li><span>Conventional</span></li>
<div class="dropdown-content">
<p>People with Conventional interests like work that follows set procedures and routines. They prefer working with information and paying attention to details rather than working with ideas. They like working with clear rules and following a strong leader.</p>
</div>
</div>
</ul>
</td></tr></table>

</table>
</body>
</html>
