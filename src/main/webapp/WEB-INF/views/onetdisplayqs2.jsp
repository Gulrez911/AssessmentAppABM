<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0037)https://www.mynextmove.org/explore/ip -->
<html lang="en" class="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="alternate" type="application/rss+xml"
	href="https://www.onetcenter.org/rss/whatsnew.xml">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/emoticons/bubblepop-1.0.css">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/emoticons/jquery.fancybox.css">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/emoticons/base.css">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/emoticons/header.css">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/emoticons/css_main.css">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/emoticons/main.css">
<script type="text/javascript"
	src="./resources/assets/emoticons/jquery-1.9.1.min.js.download"></script>
<script type="text/javascript"
	src="./resources/assets/emoticons/jquery-migrate-1.1.1.min.js.download"></script>
<script type="text/javascript"
	src="./resources/assets/emoticons/bubblepop-1.0.js.download"></script>
<script type="text/javascript"
	src="./resources/assets/emoticons/linktrack.js.download"></script>
<script type="text/javascript"
	src="./resources/assets/emoticons/jquery.fancybox.pack.js.download"></script>
<script type="text/javascript"
	src="./resources/assets/emoticons/base.js.download"></script>
<script type="text/javascript"
	src="./resources/assets/emoticons/js_main.js.download"></script>
<style type="text/css">
</style>
<script type="text/javascript">
function helpwin()
{
  var win = window.open("/explore/ip-help", "window_help",
                        "menubar=0,toolbar=0,location=0,directories=0," +
                        "status=0,scrollbars=1,resizable=1," +
                        "width=600,height=500");
  win.focus();
  return false;
}

function find(arr, item)
{
  var len = arr.length;
  var idx;
  for (idx = 0; idx < len; idx++)
  {
    if (arr[idx] == item)
      return idx;
  }
  return -1;
}

function hover(id, which)
{
  var item = document.getElementById(id);
  if (item)
  {
    var path = item.src;
    var path2;
    if (path)
    {
      path2 = path.replace("_ovr.gif", ".gif");     // turn off
      if (which)
        path2 = path.replace(".gif", "_ovr.gif");   // turn on
      item.src = path2;
    }
  }
}

function graphhover(start, which)
{
  var bar = document.getElementById("graph" + which);
  var legend = document.getElementById("legend" + which);
  var name = document.getElementById("cname" + which);
  var score = document.getElementById("cscore" + which);
  
  if (start)
  {
    if (bar)
      bar.className = "graph" + which + "_ovr";
    if (legend)
      legend.className = "legend" + which + "_ovr";
    if (name)
      name.className = "chart" + which + "_ovr";
    if (score)
      score.className = "chart" + which + "_ovr";
  }
  else
  {
    if (bar)
    {
      if (document.getElementById("graphsel"))
        bar.className = "graph" + which + "_dim";
      else
        bar.className = "graph" + which;
    }
    if (legend)
      legend.className = "legend" + which;
    if (name)
      name.className = "chart" + which;
    if (score)
      score.className = "chart" + which;
  }
}

function able(id, which)
{
	
  var item = document.forms['toolsform'].elements[id];
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
function enable(id)
{
  able(id, false);
}
function disable(id)
{
  able(id, true);
}



var nextDisabled = '';
function set_next(msg)
{
  nextDisabled = msg;
  
  var btn = document.getElementById('nextbtn');
  if (msg.length > 0)
      btn.src = './resources/assets/emoticons/next.gif';
  else
      btn.src = './resources/assets/emoticons/next.gif';
}
function check_next()
{
  if (nextDisabled.length > 0)
  {
    alert(nextDisabled);
    return false;
  }
  return true;
}

function checkscores(pg)
{
  for (var i = 0; i < 6; i++)
  {
    var val = document.forms['toolsform'].elements['score' + i].value;
    if (val == null)
    {
      set_next("Please enter your scores for all six interests. Each score should be an integer between 0 and 40.");
      return false;
    }
    var matched = val.search(/^\s*(?:40|[0123]?\d)\s*$/);
    if (matched < 0)
    {
      set_next("Please enter your scores for all six interests. Each score should be an integer between 0 and 40.");
      return false;
    }
  }
  set_next('');
  return true;
}

var progress = 0;
function setprogress(id)
{
  var sofar = parseInt(id);
  if (sofar > progress)
  {
    progress = sofar;
    var num = document.getElementById("answered");
    if (num)
      num.replaceChild(document.createTextNode(id), num.firstChild);
    var bar = document.getElementById("progressbar");
    if (bar)
      bar.style.width = (sofar * 3) + "px";
  }
}

function doClick(id)
{
  if (id == 'nextbtn')
  {
    if (!check_next())
      return true;
  }
    
  var btn = document.getElementById(id);
  if (btn)
  {
    btn.click();
    return true;
  }
  return false;
}

function inTextField(event)
{
  var elem = event.target || event.srcElement;
  if (elem.nodeType == 3)
    elem = elem.parentNode;
  
  if (elem.tagName == "TEXTAREA" ||
      (elem.tagName == "INPUT" && (elem.getAttribute("type") == "text")))
  {
      if (elem.className == "numonly")
      {
          var chrr = charFromCode(event.keyCode || event.which);
          if (chrr == "0" || chrr == "1" || chrr == "2" ||
              chrr == "3" || chrr == "4" || chrr == "5" ||
              chrr == "6" || chrr == "7" || chrr == "8" ||
              chrr == "9")
              return true;
          else
              return false;
      }
      return true;
  }
  
  return false;
}

var currentQuestion = 0;
var allQuestions = new Array();

function setCurrentQ(idx)
{
  // remove indicator on old current question
  var elem = document.getElementById("num" + allQuestions[currentQuestion]);
  if (elem)
    elem.style.textDecoration = "none";

  currentQuestion = idx;
  if (currentQuestion >= allQuestions.length)
  {
    // no more questions on this page; allow Next
    set_next('');
  }
  else
  {
    // activate next question if needed
    var qid = allQuestions[currentQuestion];
    enable(qid);
    
    // indicate new current question
    elem = document.getElementById("num" + qid);
    if (elem)
      elem.style.textDecoration = "underline";
  }
}

function answer(id)
{
  setprogress(id);
  setCurrentQ(find(allQuestions, "res" + id) + 1);
}

function chooseInt(id)
{
  document.forms['toolsform'].elements['submit_page_S1_' + id].click();
  cancelEvent(event);
  return false;
}

function chooseInt2(id)
{
  document.forms['toolsform'].elements['submit_page_R3_' + id].click();
  cancelEvent(event);
  return false;
}

function charFromCode(code)
{
  if (code >= 96 && code <= 105)
    code = code - 48;
  return String.fromCharCode(code).toUpperCase();
}

function keyShortcut(event)
{
  if (!event)
    event = window.event;
  
  var code = event.keyCode || event.which;
  if (code != 13 && inTextField(event))
    return;
  
  var chrr = charFromCode(code);
  
  if (code == 13)
  {
    doClick("nextbtn") || doClick("closebtn");
    cancelEvent(event);
    return false;
  }
  else if (chrr == "B")
  {
    doClick("backbtn");
    cancelEvent(event);
    return false;
  }
  else if (chrr == "C")
  {
    doClick("closebtn");
    cancelEvent(event);
    return false;
  }
  else if (chrr == "N")
  {
    doClick("nextbtn");
    cancelEvent(event);
    return false;
  }
  
  if (currentQuestion < allQuestions.length)
  {
    if (chrr == "1" ||
        chrr == "2" ||
        chrr == "3" ||
        chrr == "4" ||
        chrr == "5")
    {
      var qid = allQuestions[currentQuestion];
      var elem = document.forms['toolsform'].elements[qid];
      
      var idx = parseInt(chrr, 10) - 1;
      elem[idx].click();
      cancelEvent(event);
      if (currentQuestion < allQuestions.length)
      {
        // move tab focus to next question
        qid = allQuestions[currentQuestion];
        elem = document.forms['toolsform'].elements[qid];
        elem[0].focus();
      }
      return false;
    }
  }
  
  var page = document.forms['toolsform'].elements['page'].value;
  var subpage = document.forms['toolsform'].elements['subpage'].value;
  if (page == "S5" ||
      (page == "R2" && subpage == "Z"))
  {
    if (chrr == "1" ||
        chrr == "2" ||
        chrr == "3" ||
        chrr == "4" ||
        chrr == "5")
    {
      document.forms['toolsform'].elements['newzone'][chrr - 1].click();
      cancelEvent(event);
      return false;
    }
  }
}

addHandler(document, "keydown", keyShortcut);

$(document).ready(function(){

    
      var fbShow = function() {
        $("#allcontent").attr('aria-hidden', 'true');
        var fwrap = $(".fancybox-wrap");
        fwrap.attr('role', 'dialog');
        fwrap.attr('aria-hidden', 'false');
        fwrap.focus();
      };
      var fbClose = function() {
        $("#allcontent").attr('aria-hidden', 'false');
      };
        
      $(".popup_ind").fancybox({
        width : 350,
        height : 250,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_green").fancybox({
        width : 350,
        height : 200,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_t2hot").fancybox({
        width : 350,
        height : 200,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_bright").fancybox({
        width : 350,
        height : 240,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_jobzone").fancybox({
        width : 700,
        height : 450,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_training").fancybox({
        width : 350,
        height : 270,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_appren").fancybox({
        width : 350,
        height : 270,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_salary").fancybox({
        width : 350,
        height : 300,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_jobs").fancybox({
        width : 350,
        height : 350,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });
      $(".popup_military").fancybox({
        width : 450,
        height : 350,
        afterShow : fbShow,
        afterClose : fbClose,
        type : 'iframe'
      });

});
</script>
<title>O*NET Interest Profiler at My Next Move</title>
<style type="text/css">
.fancybox-margin {
	margin-right: 17px;
}
</style>
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
	<!--[if lte IE 6]>
<script type="text/javascript" src="/shared/base_ie6.js"></script>
<![endif]-->
	<!--[if lte IE 7]>
<script type="text/javascript" src="/shared/base_ie7.js"></script>
<![endif]-->
	<a name="top"></a>
	<div id="allcontent">
		<a href="https://www.mynextmove.org/explore/ip#postnav" id="skipnav"
			class="screenreader">Skip navigation</a>
		<div id="headprint" style="display: none; width: 500px">
			<img src="./resources/assets/emoticons/onet_logo_print.png"
				alt="O*NET" width="100" height="74" style="width: 100px"><img
				src="./resources/assets/emoticons/header_mynextmove_print.png"
				width="400" height="74" alt="My Next Move" style="width: 400px">
		</div>
		<div id="head"
			style="position: relative; height: 54px; width: 938px; margin: 0 auto">
			<div
				style="position: absolute; left: 0; top: 36px; width: 755px; height: 2px; overflow: hidden; background: #ddd"></div>
			<a href="https://www.mynextmove.org/"
				style="position: absolute; left: 30px; top: 0; height: 74px; width: 323px; padding-left: 10px; background: white"><img
				src="./resources/assets/emoticons/mnm_white.png" alt="My Next Move"
				width="323" height="74"></a>
			<div
				style="position: absolute; left: 754px; top: 20px; height: 34px; width: 2px; background: #ddd; overflow: hidden"></div>
			<div
				style="position: absolute; left: 650px; top: 10px; height: 54px; width: 65px">
				<img src="./resources/assets/emoticons/header_init.png"
					alt="O*NET in-it" width="65" height="54">
			</div>

			<div
				style="position: absolute; right: 0; top: 10px; height: 54px; width: 176px">
				<div
					style="position: absolute; overflow: hidden; left: 0px; top: 0px; width: 44px; height: 54px">
					<a href="https://www.mynextmove.org/"><img
						src="./resources/assets/emoticons/buttons_header.png"
						style="position: relative; left: 0; top: 0"
						alt="Return to home page." title="Return to home page."
						onmouseover="this.style.left = &#39;0&#39;; this.style.top = &#39;-54px&#39;; return true"
						onmouseout="this.style.left = &#39;0&#39;; this.style.top = &#39;0&#39;; return true"></a>
				</div>
				<div
					style="position: absolute; overflow: hidden; left: 44px; top: 0px; width: 44px; height: 54px">
					<a href="https://www.mynextmove.org/find/search"><img
						src="./resources/assets/emoticons/buttons_header.png"
						style="position: relative; left: -44px; top: 0"
						alt="Search careers with key words."
						title="Search careers with key words."
						onmouseover="this.style.left = &#39;-44px&#39;; this.style.top = &#39;-54px&#39;; return true"
						onmouseout="this.style.left = &#39;-44px&#39;; this.style.top = &#39;0&#39;; return true"></a>
				</div>
				<div
					style="position: absolute; overflow: hidden; left: 88px; top: 0px; width: 44px; height: 54px">
					<a href="https://www.mynextmove.org/find/browse"><img
						src="./resources/assets/emoticons/buttons_header.png"
						style="position: relative; left: -88px; top: 0"
						alt="Browse careers by industry."
						title="Browse careers by industry."
						onmouseover="this.style.left = &#39;-88px&#39;; this.style.top = &#39;-54px&#39;; return true"
						onmouseout="this.style.left = &#39;-88px&#39;; this.style.top = &#39;0&#39;; return true"></a>
				</div>
				<div
					style="position: absolute; overflow: hidden; left: 132px; top: 0px; width: 44px; height: 54px">
					<a href="https://www.mynextmove.org/explore/ip"><img
						src="./resources/assets/emoticons/buttons_header.png"
						style="position: relative; left: -132px; top: 0"
						alt="Discover your interests." title="Discover your interests."
						onmouseover="this.style.left = &#39;-132px&#39;; this.style.top = &#39;-54px&#39;; return true"
						onmouseout="this.style.left = &#39;-132px&#39;; this.style.top = &#39;0&#39;; return true"></a>
				</div>
			</div>
		</div>

		<div id="realcontent">
			<div id="content">
				<a name="postnav" tabindex="1"></a>
				<!-- begin content -->
				<img src="./resources/assets/emoticons/blank.gif"
					style="position: absolute; left: -10000px; width: 1px; height: 1px"
					alt="">
				<%-- 								<form action="https://www.mynextmove.org/explore/ip" method="POST" name="toolsform"> --%>
				<form:form id="testForm" name="testForm" method="POST"
					modelAttribute="qd">

					<table cellspacing="0" cellpadding="0" border="0"
						style="width: 850px; margin: 32px auto 0; height: 56px">
						<tbody>
							<tr>
								<td
									style="width: 49px; height: 56px; background-image: url(https://www.mynextmove.org/image/ip/main_topleft.gif)"></td>
								<td
									style="height: 56px; background-image: url(https://www.mynextmove.org/image/ip/main_top.gif)"><div
										style="float: right">
										<a href="https://www.mynextmove.org/explore/ip-help"
											target="_new" onclick="return helpwin()"><img
											src="./resources/assets/emoticons/help.gif" width="19"
											height="39" alt="Help"></a>
									</div> <img src="./resources/assets/emoticons/main_title.gif"
									width="232" height="39" alt="O*NET Interest Profiler"></td>
								<td
									style="width: 49px; height: 56px; background-image: url(https://www.mynextmove.org/image/ip/main_topright.gif)"></td>
							</tr>
						</tbody>
					</table>
					<table cellspacing="0" cellpadding="0" border="0"
						style="width: 850px; margin: 0 auto">
						<tbody>
							<tr>
								<td
									style="width: 49px; background-image: url(https://www.mynextmove.org/image/ip/main_left.gif)">&nbsp;</td>
								<td style="background-color: #ddd">
									<div class="inner">
										<div style="margin: 0 0 0 47px">
											<table cellpadding="0" cellspacing="0" border="0"
												width="100%">
												<tbody>
													<tr>
														<td
															style="text-align: left; vertical-align: bottom; width: 210px"><img
															src="./resources/assets/emoticons/ques_header_strongly_dislike.png"
															width="40" height="40" alt="Strongly Dislike"
															title="Strongly Dislike"><img
															src="./resources/assets/emoticons/ques_header_dislike.png"
															width="40" height="40" alt="Dislike" title="Dislike"><img
															src="./resources/assets/emoticons/ques_header_unsure.png"
															width="40" height="40" alt="Unsure" title="Unsure"><img
															src="./resources/assets/emoticons/ques_header_like.png"
															width="40" height="40" alt="Like" title="Like"><img
															src="./resources/assets/emoticons/ques_header_strongly_like.png"
															width="40" height="40" alt="Strongly Like"
															title="Strongly Like"></td>
														<td
															style="text-align: right; padding-right: 10px; vertical-align: middle;">
															<div style="font-size: 11px; font-weight: bold">Progress:</div>
														</td>
														<td style="width: 200px; vertical-align: middle">
															<div
																style="margin: 0 auto; height: 24px; width: 186px; position: relative; overflow: hidden">

																<div
																	style="background-color: #A03; height: 6px; overflow: hidden; width: 0px; position: absolute; left: 3px; top: 9px"
																	id="progressbar"></div>

																<img src="./resources/assets/emoticons/end_left.gif"
																	alt="" width="3" height="24"
																	style="position: absolute; left: 0; top: 0"> <img
																	src="./resources/assets/emoticons/end_right.gif" alt=""
																	width="3" height="24"
																	style="position: absolute; right: 0; top: 0"> <img
																	src="./resources/assets/emoticons/left_sel.gif" alt=""
																	width="36" height="24"
																	style="position: absolute; left: 3px; top: 0px">
																<img src="./resources/assets/emoticons/mid.gif" alt=""
																	width="36" height="24"
																	style="position: absolute; left: 39px; top: 0px">
																<img src="./resources/assets/emoticons/mid.gif" alt=""
																	width="36" height="24"
																	style="position: absolute; left: 75px; top: 0px">
																<img src="./resources/assets/emoticons/mid.gif" alt=""
																	width="36" height="24"
																	style="position: absolute; left: 111px; top: 0px">
																<img src="./resources/assets/emoticons/right.gif" alt=""
																	width="36" height="24"
																	style="position: absolute; left: 147px; top: 0px">
															</div>
														</td>
														<td
															style="text-align: right; vertical-align: middle; width: 144px">
															<div style="font-size: 11px">
																Page ${param.Page} of 5<br> <span id="answered">${param.para}</span>
																of 60 questions
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="ipquesRealistic"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres1"
												style="margin-right: 10px; text-decoration: underline;">${num}
											</span>
										</div>
										<div class="ipquesRealistic"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${oo.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="one1" value="1"
														onclick="enable('res2')" id="res1"
														title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="one1" value="2"
														onclick="enable('res2')" id="res1" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="one1" value="3" id="res1"
														onclick="enable('res2')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="one1" value="4" id="res1"
														onclick="enable('res2')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="one1" value="5" id="res1"
														onclick="enable('res2')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesRealistic2"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres2" style="margin-right: 10px">${num+1}</span>
										</div>
										<div class="ipquesRealistic2"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o1.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="two1" id="res2" value="1"
														onclick="enable('res3')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="two1" id="res2" value="2"
														onclick="enable('res3')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="two1" id="res2" value="3"
														onclick="enable('res3')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="two1" id="res2" value="4"
														onclick="enable('res3')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="two1" id="res2" value="5"
														onclick="enable('res3')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesInvestigative"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres3" style="margin-right: 10px">${num+2}</span>
										</div>
										<div class="ipquesInvestigative"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o2.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="three1" id="res3" value="1"
														name="res3" onclick="enable('res4')"
														title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="three1" id="res3" value="2"
														name="res3" onclick="enable('res4')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="three1" id="res3" value="3"
														name="res3" onclick="enable('res4')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="three1" id="res3" value="4"
														name="res3" onclick="enable('res4')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="three1" id="res3" value="5"
														name=" res3" onclick="enable('res4')"
														title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesInvestigative2"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres4" style="margin-right: 10px">${num+3}</span>
										</div>
										<div class="ipquesInvestigative2"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o3.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="four1" value="1" id="res4"
														onclick="enable('res5')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="four1" value="2" id="res4"
														onclick="enable('res5')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="four1" value="3" id="res4"
														onclick="enable('res5')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="four1" value="4" id="res4"
														onclick="enable('res5')" title="Like" />

												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="four1" value="5" id="res4"
														onclick="enable('res5')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesArtistic"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres5" style="margin-right: 10px">${num+4}</span>
										</div>
										<div class="ipquesArtistic"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o4.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="five1" value="1" id="res5"
														onclick="enable('res6')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="five1" value="2" id="res5"
														onclick="enable('res6')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="five1" value="3" id="res5"
														onclick="enable('res6')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="five1" value="4" id="res5"
														onclick="enable('res6')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="five1" value="5" id="res5"
														onclick="enable('res6')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesArtistic2"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres6" style="margin-right: 10px">${num+5}</span>
										</div>
										<div class="ipquesArtistic2"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o5.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="six1" value="1" id="res6"
														onclick="enable('res7')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="six1" value="2" id="res6"
														onclick="enable('res7')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="six1" value="3" id="res6"
														onclick="enable('res7')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="six1" value="4" id="res6"
														onclick="enable('res7')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="six1" value="5" id="res6"
														onclick="enable('res7')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesSocial"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres7" style="margin-right: 10px">${num+6}</span>
										</div>
										<div class="ipquesSocial"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o6.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="seven1" value="1" id="res7"
														onclick="enable('res8')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="seven1" value="2" id="res7"
														onclick="enable('res8')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="seven1" value="3" id="res7"
														onclick="enable('res8')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="seven1" value="4" id="res7"
														onclick="enable('res8')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="seven1" value="5" id="res7"
														onclick="enable('res8')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesSocial2"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres8" style="margin-right: 10px">${num+7}</span>
										</div>
										<div class="ipquesSocial2"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o7.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eight1" value="1" id="res8"
														onclick="enable('res9')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eight1" value="2" id="res8"
														onclick="enable('res9')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eight1" value="3" id="res8"
														onclick="enable('res9')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eight1" value="4" id="res8"
														onclick="enable('res9')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eight1" value="5" id="res8"
														onclick="enable('res9')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesEnterprising"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres9" style="margin-right: 10px">${num+8}</span>
										</div>
										<div class="ipquesEnterprising"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o8.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="nine1" value="1" id="res9"
														onclick="enable('res10')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="nine1" value="2" id="res9"
														onclick="enable('res10')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="nine1" value="3" id="res9"
														onclick="enable('res10')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="nine1" value="4" id="res9"
														onclick="enable('res10')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="nine1" value="5" id="res9"
														onclick="enable('res10')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesEnterprising2"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres10" style="margin-right: 10px">${num+9}</span>
										</div>
										<div class="ipquesEnterprising2"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${o9.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="ten1" value="1" id="res10"
														onclick="enable('res11')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="ten1" value="2" id="res10"
														onclick="enable('res11')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="ten1" value="3" id="res10"
														onclick="enable('res11')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="ten1" value="4" id="res10"
														onclick="enable('res11')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="ten1" value="5" id="res10"
														onclick="enable('res11')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesConventional"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres11" style="margin-right: 10px">${num+10}</span>
										</div>
										<div class="ipquesConventional"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${ten.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eleven1" value="1" id="res11"
														onclick="enable('res12')" title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eleven1" value="2" id="res11"
														onclick="enable('res12')" title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eleven1" value="3" id="res11"
														onclick="enable('res12')" title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eleven1" value="4" id="res11"
														onclick="enable('res12')" title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="eleven1" value="5" id="res11"
														onclick="enable('res12')" title="Strongly Like" />
												</span>
											</div>
										</div>
										<div class="ipquesConventional2"
											style="margin: 0; float: left; width: 48px; text-align: right; color: #555; background-color: transparent">
											<span id="numres12" style="margin-right: 10px">${num+11}</span>
										</div>
										<div class="ipquesConventional2"
											style="padding: 0; margin-bottom: 0; height: 22px; position: relative">
											<div
												style="margin-left: 215px; height: 22px; line-height: 22px">${eleven.questionText}</div>
											<div
												style="position: absolute; top: 0; left: 0; height: 22px; width: 210px; margin: 0; padding: 0; overflow: hidden">
												<span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="twelve1" value="1" id="res12"
														title="Strongly Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="twelve1" value="2" id="res12"
														title="Dislike" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="twelve1" value="2" id="res12"
														title="Unsure" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="twelve1" value="4" id="res12"
														title="Like" />
												</span> <span
													style="float: left; width: 38px; border-right: solid 2px #ddd; overflow: hidden; text-align: center; line-height: 22px; height: 22px; padding: 2px 0; margin: 0">
													<form:radiobutton path="twelve1" value="5" id="res12"
														title="Strongly Like" />
												</span>
											</div>
										</div>
										<div
											style="border-top: solid 1px #ddd; height: 1px; overflow: hidden"></div>
										<!-- 																				<script type="text/javascript">disable('res2');
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
</script>
			 -->
									</div>
								</td>
								<td
									style="width: 49px; background-image: url(https://www.mynextmove.org/image/ip/main_right.gif)">&nbsp;</td>
							</tr>
						</tbody>
					</table>
					<table cellspacing="0" cellpadding="0" border="0"
						style="width: 850px; margin: 0 auto; height: 44px">
						<tbody>
							<tr>

								<c:choose>
									<c:when test="${qd.first==true}">
										<td
											style="width: 115px; height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_botleft.gif)">
											<img src="./resources/assets/emoticons/back.gif" alt="Back"
											onclick="javascript:prev1();">
										</td>
									</c:when>
									<c:otherwise>
										<td
											style="width: 115px; height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_botleft.gif)"><input
											type="image" name="submit_page_D4" id="backbtn" accesskey="b"
											value="Back" src="./resources/assets/emoticons/back.gif"
											alt="Back" onclick="javascript:prev();"></td>

									</c:otherwise>
								</c:choose>

								<td
									style="height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_bot.gif)"><table
										cellpadding="0" cellspacing="0" border="0"
										style="margin: 0 auto; height: 44px">
										<tbody>
											<tr>
												<td style="height: 44px"><a
													href="/AssesmentApp/onetHome"><img
														name="submit_page_D1" id="tab1" value="Start"
														src="./resources/assets/emoticons/tab1.gif" alt="Start"></a></td>
												<td style="height: 44px"><img name="submit_page_I1"
													id="tab2" value="Interests"
													src="./resources/assets/emoticons/tab2_sel.gif"
													alt="Interests"></td>
												<td style="height: 44px"><img name="submit_page_S1"
													id="tab3" value="Results"
													src="./resources/assets/emoticons/tab3_dis.gif"
													alt="Results"></td>
												<td style="height: 44px"><img name="submit_page_S2"
													id="tab4" value="Job Zones"
													src="https://www.mynextmove.org/image/ip/tab4_dis.gif"
													alt="Job Zones"></td>
												<td style="height: 44px; padding: 0"><img
													src="./resources/assets/emoticons/tab5_dis.gif"
													alt="Careers"></td>
											</tr>
										</tbody>
									</table></td>
								<c:choose>
									<c:when test="${qd.last==true}">

										<td
											style="width: 115px; height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_botright.gif)"><input
											type="image" name="submit_page_I2" id="nextbtn" accesskey="n"
											value="Next" src="./resources/assets/emoticons/next.gif"
											alt="Next" onclick="javascript:submitTest();"></td>
									</c:when>
									<c:otherwise>
										<td
											style="width: 115px; height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_botright.gif)"><input
											type="image" name="submit_page_I2" id="nextbtn" accesskey="n"
											value="Next" src="./resources/assets/emoticons/next.gif"
											alt="Next" onclick="javascript:next();"></td>

									</c:otherwise>
								</c:choose>


							</tr>
						</tbody>
					</table>

				</form:form>

				<script type="text/javascript">
allQuestions.push('res1');
allQuestions.push('res2');
allQuestions.push('res3');
allQuestions.push('res4');
allQuestions.push('res5');
allQuestions.push('res6');
allQuestions.push('res7');
allQuestions.push('res8');
allQuestions.push('res9');
allQuestions.push('res10');
allQuestions.push('res11');
allQuestions.push('res12');
setCurrentQ(0);
set_next('Please answer all 12 questions on this page.');
</script>
				<!-- end content -->
			</div>
		</div>




	</div>
	<script type="text/javascript">
			if (/*  document.getElementById("res2").checked
					&& document.getElementById("res3").checked
					&& document.getElementById("res4").checked
					&& document.getElementById("res5").checked
					&& document.getElementById("res6").checked
					&& document.getElementById("res7").checked
					&& document.getElementById("res8").checked
					&& document.getElementById("res9").checked
					&& document.getElementById("res10").checked
					&& document.getElementById("res11").checked
					&& document.getElementById("res12").checked  */
					
					${qd.one1>0}
					
			) {
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
				document.testForm.action = "nextOnetQuestion?para=${qd.next+12}&Page=${qd.page+1}";
				document.testForm.submit();
			}

			function prev() {
				document.testForm.action = "prevOnetQuestion?para=${qd.next-12}&Page=${qd.page-1}";
				document.testForm.submit();
			}

			function submitTest() {

				document.testForm.action = "submitTest1?para=${qd.next+12}";
						
				document.testForm.submit();
			}
			
			function prev1() {
				window.location = "/AssesmentApp/onetHome?name=4";
			};
		</script>
</body>
</html>