<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Muli:300,400,700'
	rel='stylesheet' type='text/css'>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
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

/*     function chk1()
	{
		
	 str=str.concat('1');
		console.log(str);
		
		
	}
	function chk2()
	{
		str=str.concat('2');
		
		console.log(str);
		
	}
	
    function chk3()
	{
		str=str.concat('3');
		
		console.log(str);
		
	}
    
    function chk4()
	{
		str=str.concat('4');
		
		console.log(str);
		
	}
    
    function chk5()
	{
		str=str.concat('5');
		
		console.log(str);
	}
    
 */
    
    function able(id, which)
    {

      //var item = document.forms['testForm'].elements[id];
var item=document.getElementById('testForm').elements[id];

      if (item)
      {

        if (item.length)
        {
          for (i = item.length - 1; i >= 0; i--)
          {

            item[i].disabled = which;
            if (item[i].src)
              alert(item[i].src);
              
          }
        }
        else
        {
          item.disabled = which;
          if (item.src)
            alert(item.src);
        }
      }
    }
function disable(id)
    {
      able(id, true);
    }
function enable(id)
{
  able(id, false);
}
</script>

</head>
<body>

<%-- <center><form:form id="testForm" name="testForm" method="POST" modelAttribute="qd">

<c:forEach items="${onetq}" var="onetq">
<span><b><font size="3" color="red">${onetq.questionText}</font></b></span><br> 
<br>
<span>${onetq.choice1}</span>
<form:checkbox  path="one" onclick="chk1()" id="1" value="1" /><br>
<span>${onetq.choice2}</span> 
<form:checkbox path="two" id="2" onclick="chk2()"/><br> 
<span>${onetq.choice3}</span> 
<form:checkbox path="three" id="3" value="3" onclick="chk3()"/><br>
<span>${onetq.choice4}</span> 
<form:checkbox path="four" id="4" value="4" onclick="chk4()"/><br> 
<span>${onetq.choice5}</span>
<form:checkbox path="five" id="5" value="5" onclick="chk5()"/><br> 
<br>

</c:forEach> --%>
<center>
<form:form id="testForm" name="testForm" method="POST" modelAttribute="qd">


<span><b><font size="3" color="red">${oo.questionText}</font></b></span><br> 
<br>
<span>${oo.choice1}</span>
<form:checkbox  path="one"  value="1" name="res1" onclick="enable('res2')"/><br>
<span>${oo.choice2}</span> 
<form:checkbox path="two"  value="2" name="res1" onclick="enable('res2')"/><br> 
<span>${oo.choice3}</span> 
<form:checkbox path="three"  value="3" name="res1" onclick="enable('res2')"/><br>
<span>${oo.choice4}</span> 
<form:checkbox path="four"  value="4"  name="res1" onclick="enable('res2')"/><br> 
<span>${oo.choice5}</span>
<form:checkbox path="five"  value="5"  name="res1" onclick="enable('res2')"/><br> 
<br>
<span><b><font size="3" color="red">${o1.questionText}</font></b></span><br> 
<br>
<span>${o1.choice1}</span>
<form:checkbox  path="six"   id="res2" value="0"  onclick="enable('res3')"/><br>
<span>${o1.choice2}</span> 
<form:checkbox path="seven"   id="res2" value="1" onclick="enable('res3')"/><br> 
<span>${o1.choice3}</span> 
<form:checkbox path="eight"   id="res2" value="2" onclick="enable('res3')"/><br>
<span>${o1.choice4}</span> 
<form:checkbox path="nine"   id="res2" value="3" onclick="enable('res3')"/><br> 
<span>${o1.choice5}</span>
<form:checkbox path="ten"   id="res2" value="4" onclick="enable('res3')" /><br> 
<br>
<span><b><font size="3" color="red">${o2.questionText}</font></b></span><br> 
<br>
<span>${o2.choice1}</span>
<form:checkbox  path="eleven" id="res3" value="0" name="res3" onclick="enable('res4')"/><br>
<span>${o2.choice2}</span> 
<form:checkbox path="twelve" id="res3" value="1" name="res3" onclick="enable('res4')"/><br> 
<span>${o2.choice3}</span> 
<form:checkbox path="thirteen" id="res3" value="2" name="res3" onclick="enable('res4')"/><br>
<span>${o2.choice4}</span> 
<form:checkbox path="fourteen" id="res3" value="3" name="res3" onclick="enable('res4')"/><br> 
<span>${o2.choice5}</span>
<form:checkbox path="fifteen" id="res3" value="4" name="res3" onclick="enable('res4')"/><br> 
<br>
<span><b><font size="3" color="red">${o3.questionText}</font></b></span><br> 
<br>
<span>${o3.choice1}</span>
<form:checkbox  path="sixteen"  value="0"  id="res4" onclick="enable('res5')"/><br>
<span>${o3.choice2}</span> 
<form:checkbox path="seventeen"  value="1" id="res4" onclick="enable('res5')"/><br> 
<span>${o3.choice3}</span> 
<form:checkbox path="eighteen"  value="2" id="res4" onclick="enable('res5')"/><br>
<span>${o3.choice4}</span> 
<form:checkbox path="nineteen"  value="3" id="res4" onclick="enable('res5')"/><br> 
<span>${o4.choice5}</span>
<form:checkbox path="twenty"  value="4" id="res4" onclick="enable('res5')"/><br> 
<br>
<span><b><font size="3" color="red">${o4.questionText}</font></b></span><br> 
<br>
<span>${o4.choice1}</span>
<form:checkbox  path="twentyone"  value="0" id="res5" onclick="enable('res6')"/><br>
<span>${o4.choice2}</span> 
<form:checkbox path="twentytwo"  value="1" id="res5" onclick="enable('res6')"/><br> 
<span>${o4.choice3}</span> 
<form:checkbox path="twentythree"  value="2" id="res5" onclick="enable('res6')"/><br>
<span>${o4.choice4}</span> 
<form:checkbox path="twentyfour"  value="3" id="res5" onclick="enable('res6')"/><br> 
<span>${o4.choice5}</span>
<form:checkbox path="twentyfive"  value="4" id="res5" onclick="enable('res6')"/><br> 
<br>
<span><b><font size="3" color="red">${o5.questionText}</font></b></span><br>
<br>
<span>${o5.choice1}</span>
<form:checkbox  path="twentysix"  value="0" id="res6" onclick="enable('res7')"/><br>
<span>${o5.choice2}</span> 
<form:checkbox path="twentyseven"  value="1" id="res6" onclick="enable('res7')"/><br> 
<span>${o5.choice3}</span> 
<form:checkbox path="twentyeight"  value="2" id="res6" onclick="enable('res7')"/><br>
<span>${o5.choice4}</span> 
<form:checkbox path="twentynine"  value="3" id="res6" onclick="enable('res7')"/><br> 
<span>${o5.choice5}</span>
<form:checkbox path="thirty"  value="4" id="res6" onclick="enable('res7')"/><br> 
<br>
<span><b><font size="3" color="red">${o6.questionText}</font></b></span><br> 
<br>
<span>${o6.choice1}</span>
<form:checkbox  path="thirtyone"  value="0" id="res7" onclick="enable('res8')"/><br>
<span>${o6.choice2}</span> 
<form:checkbox path="thirtytwo"  value="1" id="res7" onclick="enable('res8')"/><br> 
<span>${o6.choice3}</span> 
<form:checkbox path="thirtythree"  value="2" id="res7" onclick="enable('res8')"/><br>
<span>${o6.choice4}</span> 
<form:checkbox path="thirtyfour"  value="3" id="res7" onclick="enable('res8')"/><br> 
<span>${o6.choice5}</span>
<form:checkbox path="thirtyfive"  value="4" id="res7" onclick="enable('res8')"/><br> 
<br>
<span><b><font size="3" color="red">${o7.questionText}</font></b></span><br> 
<br>
<span>${o7.choice1}</span>
<form:checkbox  path="thirtysix"  value="0" id="res8" onclick="enable('res9')"/><br>
<span>${o7.choice2}</span> 
<form:checkbox path="thirtyseven"  value="1" id="res8" onclick="enable('res9')"/><br> 
<span>${o7.choice3}</span> 
<form:checkbox path="thirtyeight"  value="2" id="res8" onclick="enable('res9')"/><br>
<span>${o7.choice4}</span> 
<form:checkbox path="thirtynine"  value="3" id="res8" onclick="enable('res9')"/><br> 
<span>${o7.choice5}</span>
<form:checkbox path="forty"  value="4" id="res8" onclick="enable('res9')"/><br> 
<br>
<span><b><font size="3" color="red">${o8.questionText}</font></b></span><br> 
<br>
<span>${o8.choice1}</span>
<form:checkbox  path="fortyone"  value="0" id="res9" onclick="enable('res10')"/><br>
<span>${o8.choice2}</span> 
<form:checkbox path="fortytwo"  value="1" id="res9" onclick="enable('res10')"/><br> 
<span>${o8.choice3}</span> 
<form:checkbox path="fortythree"  value="2" id="res9" onclick="enable('res10')"/><br>
<span>${o8.choice4}</span> 
<form:checkbox path="fortyfour"  value="3" id="res9" onclick="enable('res10')"/><br> 
<span>${o8.choice5}</span>
<form:checkbox path="fortyfive"  value="4" id="res9" onclick="enable('res10')"/><br> 
<br>
<span><b><font size="3" color="red">${o9.questionText}</font></b></span><br> 
<br>
<span>${o9.choice1}</span>
<form:checkbox  path="fortysix"  value="0" id="res10" onclick="enable('res11')"/><br>
<span>${o9.choice2}</span> 
<form:checkbox path="fortyseven" value="1" id="res10" onclick="enable('res11')"/><br> 
<span>${o9.choice3}</span> 
<form:checkbox path="fortyeight"  value="2" id="res10" onclick="enable('res11')"/><br>
<span>${o9.choice4}</span> 
<form:checkbox path="fortynine"  value="3" id="res10" onclick="enable('res11')"/><br> 
<span>${o9.choice5}</span>
<form:checkbox path="fifty" value="4" id="res10" onclick="enable('res11')"/><br> 
<br>
<span><b><font size="3" color="red">${ten.questionText}</font></b></span><br> 
<br>
<span>${ten.choice1}</span>
<form:checkbox  path="fiftyone"  value="0" id="res11" onclick="enable('res12')"/><br>
<span>${ten.choice2}</span> 
<form:checkbox path="fiftytwo"  value="1" id="res11" onclick="enable('res12')"/><br> 
<span>${ten.choice3}</span> 
<form:checkbox path="fiftythree"  value="2" id="res11" onclick="enable('res12')"/><br>
<span>${ten.choice4}</span> 
<form:checkbox path="fiftyfour"  value="3" id="res11" onclick="enable('res12')"/><br> 
<span>${ten.choice5}</span>
<form:checkbox path="fiftyfive"  value="4" id="res11" onclick="enable('res12')"/><br> 
<br>
<span><b><font size="3" color="red">${eleven.questionText}</font></b></span><br> 
<br>
<span>${eleven.choice1}</span>
<form:checkbox  path="fiftysix"  value="0" id="res12" /><br>
<span>${eleven.choice2}</span> 
<form:checkbox path="fiftyseven"  value="1" id="res12"/><br> 
<span>${eleven.choice3}</span> 
<form:checkbox path="fiftyeight"  value="2" id="res12"/><br>
<span>${eleven.choice4}</span> 
<form:checkbox path="fiftynine"  value="3" id="res12"/><br> 
<span>${eleven.choice5}</span>
<form:checkbox path="sixty"  value="4" id="res12"/><br> 
<br>


<c:choose>
					<c:when test="${qd.first==true}">
					</c:when>
					<c:otherwise>
						<a class="back" href="javascript:prev();">Back</a>
						<!-- <i class="fa fa-long-arrow-left"></i> -->
					</c:otherwise>
				</c:choose>
<c:choose>
					<c:when test="${qd.last==true}">
					
					<a class="next" href="javascript:submitTest();" id="next">SUBMIT TEST</a>
					</c:when>
					<c:otherwise>
						<a class="next" href="javascript:next();" id="next">Next</a>
						
					</c:otherwise>
				</c:choose>
				
				</center>
<script type="text/javascript">
if(document.getElementById("res2").checked && document.getElementById("res3").checked && document.getElementById("res4").checked &&
   document.getElementById("res5").checked && document.getElementById("res6").checked && document.getElementById("res7").checked &&
   document.getElementById("res8").checked && document.getElementById("res9").checked && document.getElementById("res10").checked &&
   document.getElementById("res11").checked && document.getElementById("res12").checked)
	{}else
	{
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
				

</form:form>
<script type="text/javascript">
var str=window.localStorage.getItem('str', str);
if(str)
{
var str='';
}




    function next(){
    window.localStorage.setItem('str', str);
	document.testForm.action = "nextOnetQuestion?para=${qd.next+12}&Page=${qd.page}";
    document.testForm.submit();
	}
	
    function prev(){
	document.testForm.action = "prevOnetQuestion?para=${qd.next-12}&Page=${qd.page}";
    document.testForm.submit();
	}
    
	function submitTest()
	{
		
	 document.testForm.action = "submitTest1?para=${qd.next+12}&ans="+str;	
	 document.testForm.submit();	
	}
</script>	

</body>
</html>