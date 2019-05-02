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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JobZone 2</title>
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#tbl1').hide();
	$('#tbl2').hide();
	$('#tbl3').hide();
	$('#tbl4').hide();
	$('#tbl5').hide();
	var x = ${ex};
	if(x===1){
		$('#tbl1').show();
	}else if (x===2) {
		$('#tbl2').show();
	}else if (x===3) {
		$('#tbl3').show();
	}else if (x===4) {
		$('#tbl4').show();
	}else if (x===5) {
		$('#tbl5').show();
	}
	
});

</script>
</head>
<body>
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
				<form action="https://www.mynextmove.org/explore/ip" method="POST"
					name="toolsform">
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
										<table cellpadding="0" cellspacing="0" border="0" width="100%"
											id="tbl1">
											<tbody>
												<tr>
													<td width="50%">
														<h4>Your interest results:</h4>
														<div style="width: 288px; margin: 16px auto 32px">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 96px; width: ${rs.score }px; vertical-align: bottom"
																				title="${rs.area }: ${rs.score }"><a
																				href="/AssesmentApp/profiler?param=${rs.area}">
																					<div id="graph${rs.area }" class="graph${rs.area }"
																						style="margin: 0 4px; height: ${rs.score}px; cursor: pointer;"
																						onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																						onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					</div>
																			</a></td>
																		</c:forEach>
																	</tr>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<c:set var="string1" value="${rs.area }" />
																			<c:set var="string2"
																				value="${fn:substring(string1, 0, 1)}" />

																			<td
																				style="width: 40px; text-align: center; border-top: solid 1px #555"
																				title="${rs.area }: ${rs.score }">
																				<div id="legend${rs.area }"
																					class="legend${rs.area }"
																					style="margin: 0 4px; padding: 4px 0; font-size: 13px; font-weight: bold; cursor: pointer;"
																					onmouseover="
																																												graphhover(1, &#39;${rs.area }&#39;)"
																					onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					<a style="text-decoration: none; color: black;"
																						href="/AssesmentApp/profiler?param=${rs.area}">${string2}</a>
																				</div>
																			</td>
																		</c:forEach>
																	</tr>
																</tbody>
															</table>

														</div>
														<div style="width: 288px; margin: 32px auto 0">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 240px">
																<c:forEach items="${rs}" var="rs">
																	<tbody>
																		<tr>
																			<td id="cname${rs.area }" class="chart${rs.area }"
																				onclick="chooseInt('R')"
																				style="width: 200px; font-weight: bold; cursor: pointer;"
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.area }</a></td>
																			<td id="cscore${rs.area }" class="chart${rs.area }"
																				style="text-align: right; font-weight: bold; cursor: pointer;"
																				onclick="chooseInt(&#39;R&#39;)" )=""
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.score }</a></td>
																		</tr>
																	</tbody>
																</c:forEach>
															</table>

														</div>
													</td>
													<td width="50%">
														<h4>Your Job Zone:</h4>

														<div style="width: 288px; margin: 32px auto">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 180px; height: 36px">
																<tbody>
																	<tr>
																		<td><img
																			src="./resources/assets/emoticons/zone1_sel.gif"
																			alt="Job Zone One" width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone2.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone3.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone4.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone5.gif" alt=" "
																			width="36" height="36"></td>
																	</tr>
																</tbody>
															</table>

															<div
																style="font-size: 16px; font-weight: bold; margin-top: 8px">Job
																Zone One</div>
															<div style="font-size: 16px">Little or No
																Preparation Needed</div>
														</div>

														<div
															style="background-color: #fff; border-bottom: solid 1px #aaa; border-right: solid 1px #aaa; border-top: solid 1px white; padding: 0 16px">

															<p>On the next screen, you will see careers related
																to your Interest Profile in your chosen Job Zone.</p>

															<p>
																Click the <b>Next</b> button to continue.
															</p>

														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- table 2  -->
										<table cellpadding="0" cellspacing="0" border="0" width="100%"
											id="tbl2">
											<tbody>
												<tr>
													<td width="50%">
														<h4>Your interest results:</h4>
														<div style="width: 288px; margin: 16px auto 32px">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 96px; width: ${rs.score }px; vertical-align: bottom"
																				title="${rs.area }: ${rs.score }"><a
																				href="/AssesmentApp/profiler?param=${rs.area}">
																					<div id="graph${rs.area }" class="graph${rs.area }"
																						style="margin: 0 4px; height: ${rs.score}px; cursor: pointer;"
																						onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																						onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					</div>
																			</a></td>
																		</c:forEach>
																	</tr>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<c:set var="string1" value="${rs.area }" />
																			<c:set var="string2"
																				value="${fn:substring(string1, 0, 1)}" />

																			<td
																				style="width: 40px; text-align: center; border-top: solid 1px #555"
																				title="${rs.area }: ${rs.score }">
																				<div id="legend${rs.area }"
																					class="legend${rs.area }"
																					style="margin: 0 4px; padding: 4px 0; font-size: 13px; font-weight: bold; cursor: pointer;"
																					onmouseover="
																																												graphhover(1, &#39;${rs.area }&#39;)"
																					onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					<a style="text-decoration: none; color: black;"
																						href="/AssesmentApp/profiler?param=${rs.area}">${string2}</a>
																				</div>
																			</td>
																		</c:forEach>
																	</tr>
																</tbody>
															</table>

														</div>
														<div style="width: 288px; margin: 32px auto 0">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 240px">
																<c:forEach items="${rs}" var="rs">
																	<tbody>
																		<tr>
																			<td id="cname${rs.area }" class="chart${rs.area }"
																				onclick="chooseInt('R')"
																				style="width: 200px; font-weight: bold; cursor: pointer;"
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.area }</a></td>
																			<td id="cscore${rs.area }" class="chart${rs.area }"
																				style="text-align: right; font-weight: bold; cursor: pointer;"
																				onclick="chooseInt(&#39;R&#39;)" )=""
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.score }</a></td>
																		</tr>
																	</tbody>
																</c:forEach>
															</table>

														</div>
													</td>
													<td width="50%">
														<h4>Your Job Zone:</h4>

														<div style="width: 288px; margin: 32px auto">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 180px; height: 36px">
																<tbody>
																	<tr>
																		<td><img
																			src="./resources/assets/emoticons/zone1.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone2_sel.gif"
																			alt="Job Zone Two" width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone3.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone4.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone5.gif" alt=" "
																			width="36" height="36"></td>
																	</tr>
																</tbody>
															</table>

															<div
																style="font-size: 16px; font-weight: bold; margin-top: 8px">Job
																Zone Two</div>
															<div style="font-size: 16px">Some Preparation
																Needed</div>
														</div>

														<div
															style="background-color: #fff; border-bottom: solid 1px #aaa; border-right: solid 1px #aaa; border-top: solid 1px white; padding: 0 16px">

															<p>On the next screen, you will see careers related
																to your Interest Profile in your chosen Job Zone.</p>

															<p>
																Click the <b>Next</b> button to continue.
															</p>

														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- table 3 -->
										<table cellpadding="0" cellspacing="0" border="0" width="100%"
											id="tbl3">
											<tbody>
												<tr>
													<td width="50%">
														<h4>Your interest results:</h4>
														<div style="width: 288px; margin: 16px auto 32px">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 96px; width: ${rs.score }px; vertical-align: bottom"
																				title="${rs.area }: ${rs.score }"><a
																				href="/AssesmentApp/profiler?param=${rs.area}">
																					<div id="graph${rs.area }" class="graph${rs.area }"
																						style="margin: 0 4px; height: ${rs.score}px; cursor: pointer;"
																						onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																						onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					</div>
																			</a></td>
																		</c:forEach>
																	</tr>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<c:set var="string1" value="${rs.area }" />
																			<c:set var="string2"
																				value="${fn:substring(string1, 0, 1)}" />

																			<td
																				style="width: 40px; text-align: center; border-top: solid 1px #555"
																				title="${rs.area }: ${rs.score }">
																				<div id="legend${rs.area }"
																					class="legend${rs.area }"
																					style="margin: 0 4px; padding: 4px 0; font-size: 13px; font-weight: bold; cursor: pointer;"
																					onmouseover="
																																												graphhover(1, &#39;${rs.area }&#39;)"
																					onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					<a style="text-decoration: none; color: black;"
																						href="/AssesmentApp/profiler?param=${rs.area}">${string2}</a>
																				</div>
																			</td>
																		</c:forEach>
																	</tr>
																</tbody>
															</table>

														</div>
														<div style="width: 288px; margin: 32px auto 0">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 240px">
																<c:forEach items="${rs}" var="rs">
																	<tbody>
																		<tr>
																			<td id="cname${rs.area }" class="chart${rs.area }"
																				onclick="chooseInt('R')"
																				style="width: 200px; font-weight: bold; cursor: pointer;"
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.area }</a></td>
																			<td id="cscore${rs.area }" class="chart${rs.area }"
																				style="text-align: right; font-weight: bold; cursor: pointer;"
																				onclick="chooseInt(&#39;R&#39;)" )=""
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.score }</a></td>
																		</tr>
																	</tbody>
																</c:forEach>
															</table>

														</div>
													</td>
													<td width="50%">
														<h4>Your Job Zone:</h4>

														<div style="width: 288px; margin: 32px auto">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 180px; height: 36px">
																<tbody>
																	<tr>
																		<td><img
																			src="./resources/assets/emoticons/zone1.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone2.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone3_sel.gif"
																			alt="Job Zone Three" width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone4.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone5.gif" alt=" "
																			width="36" height="36"></td>
																	</tr>
																</tbody>
															</table>

															<div
																style="font-size: 16px; font-weight: bold; margin-top: 8px">Job
																Zone Three</div>
															<div style="font-size: 16px">Medium Preparation
																Needed</div>
														</div>

														<div
															style="background-color: #fff; border-bottom: solid 1px #aaa; border-right: solid 1px #aaa; border-top: solid 1px white; padding: 0 16px">

															<p>On the next screen, you will see careers related
																to your Interest Profile in your chosen Job Zone.</p>

															<p>
																Click the <b>Next</b> button to continue.
															</p>

														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- table 4 -->
										<table cellpadding="0" cellspacing="0" border="0" width="100%"
											id="tbl4">
											<tbody>
												<tr>
													<td width="50%">
														<h4>Your interest results:</h4>
														<div style="width: 288px; margin: 16px auto 32px">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 96px; width: ${rs.score }px; vertical-align: bottom"
																				title="${rs.area }: ${rs.score }"><a
																				href="/AssesmentApp/profiler?param=${rs.area}">
																					<div id="graph${rs.area }" class="graph${rs.area }"
																						style="margin: 0 4px; height: ${rs.score}px; cursor: pointer;"
																						onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																						onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					</div>
																			</a></td>
																		</c:forEach>
																	</tr>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<c:set var="string1" value="${rs.area }" />
																			<c:set var="string2"
																				value="${fn:substring(string1, 0, 1)}" />

																			<td
																				style="width: 40px; text-align: center; border-top: solid 1px #555"
																				title="${rs.area }: ${rs.score }">
																				<div id="legend${rs.area }"
																					class="legend${rs.area }"
																					style="margin: 0 4px; padding: 4px 0; font-size: 13px; font-weight: bold; cursor: pointer;"
																					onmouseover="
																																												graphhover(1, &#39;${rs.area }&#39;)"
																					onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					<a style="text-decoration: none; color: black;"
																						href="/AssesmentApp/profiler?param=${rs.area}">${string2}</a>
																				</div>
																			</td>
																		</c:forEach>
																	</tr>
																</tbody>
															</table>

														</div>
														<div style="width: 288px; margin: 32px auto 0">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 240px">
																<c:forEach items="${rs}" var="rs">
																	<tbody>
																		<tr>
																			<td id="cname${rs.area }" class="chart${rs.area }"
																				onclick="chooseInt('R')"
																				style="width: 200px; font-weight: bold; cursor: pointer;"
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.area }</a></td>
																			<td id="cscore${rs.area }" class="chart${rs.area }"
																				style="text-align: right; font-weight: bold; cursor: pointer;"
																				onclick="chooseInt(&#39;R&#39;)" )=""
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.score }</a></td>
																		</tr>
																	</tbody>
																</c:forEach>
															</table>

														</div>
													</td>
													<td width="50%">
														<h4>Your Job Zone:</h4>

														<div style="width: 288px; margin: 32px auto">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 180px; height: 36px">
																<tbody>
																	<tr>
																		<td><img
																			src="./resources/assets/emoticons/zone1.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone2.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone3.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone4_sel.gif"
																			alt="Job Zone Four" width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone5.gif" alt=" "
																			width="36" height="36"></td>
																	</tr>
																</tbody>
															</table>

															<div
																style="font-size: 16px; font-weight: bold; margin-top: 8px">Job
																Zone Four</div>
															<div style="font-size: 16px">High Preparation
																Needed</div>
														</div>

														<div
															style="background-color: #fff; border-bottom: solid 1px #aaa; border-right: solid 1px #aaa; border-top: solid 1px white; padding: 0 16px">

															<p>On the next screen, you will see careers related
																to your Interest Profile in your chosen Job Zone.</p>

															<p>
																Click the <b>Next</b> button to continue.
															</p>

														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- table 5 -->
										<table cellpadding="0" cellspacing="0" border="0" width="100%"
											id="tbl5">
											<tbody>
												<tr>
													<td width="50%">
														<h4>Your interest results:</h4>
														<div style="width: 288px; margin: 16px auto 32px">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 96px; width: ${rs.score }px; vertical-align: bottom"
																				title="${rs.area }: ${rs.score }"><a
																				href="/AssesmentApp/profiler?param=${rs.area}">
																					<div id="graph${rs.area }" class="graph${rs.area }"
																						style="margin: 0 4px; height: ${rs.score}px; cursor: pointer;"
																						onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																						onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					</div>
																			</a></td>
																		</c:forEach>
																	</tr>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<c:set var="string1" value="${rs.area }" />
																			<c:set var="string2"
																				value="${fn:substring(string1, 0, 1)}" />

																			<td
																				style="width: 40px; text-align: center; border-top: solid 1px #555"
																				title="${rs.area }: ${rs.score }">
																				<div id="legend${rs.area }"
																					class="legend${rs.area }"
																					style="margin: 0 4px; padding: 4px 0; font-size: 13px; font-weight: bold; cursor: pointer;"
																					onmouseover="
																																												graphhover(1, &#39;${rs.area }&#39;)"
																					onmouseout="graphhover(0, &#39;${rs.area }&#39;)">

																					<a style="text-decoration: none; color: black;"
																						href="/AssesmentApp/profiler?param=${rs.area}">${string2}</a>
																				</div>
																			</td>
																		</c:forEach>
																	</tr>
																</tbody>
															</table>

														</div>
														<div style="width: 288px; margin: 32px auto 0">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 240px">
																<c:forEach items="${rs}" var="rs">
																	<tbody>
																		<tr>
																			<td id="cname${rs.area }" class="chart${rs.area }"
																				onclick="chooseInt('R')"
																				style="width: 200px; font-weight: bold; cursor: pointer;"
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.area }</a></td>
																			<td id="cscore${rs.area }" class="chart${rs.area }"
																				style="text-align: right; font-weight: bold; cursor: pointer;"
																				onclick="chooseInt(&#39;R&#39;)" )=""
																				onmouseover="graphhover(1, &#39;${rs.area }&#39;)"
																				onmouseout="graphhover(0, &#39;${rs.area }&#39;)"><a
																				style="text-decoration: none; color: black;"
																				href="/AssesmentApp/profiler?param=${rs.area}">${rs.score }</a></td>
																		</tr>
																	</tbody>
																</c:forEach>
															</table>

														</div>
													</td>
													<td width="50%">
														<h4>Your Job Zone:</h4>

														<div style="width: 288px; margin: 32px auto">
															<table cellpadding="0" cellspacing="0" border="0"
																style="width: 180px; height: 36px">
																<tbody>
																	<tr>
																		<td><img
																			src="./resources/assets/emoticons/zone1.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone2.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone3.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone4.gif" alt=" "
																			width="36" height="36"></td>
																		<td><img
																			src="./resources/assets/emoticons/zone5_sel.gif"
																			alt="Job Zone Five" width="36" height="36"></td>
																	</tr>
																</tbody>
															</table>

															<div
																style="font-size: 16px; font-weight: bold; margin-top: 8px">Job
																Zone Five</div>
															<div style="font-size: 16px">Extensive Preparation
																Needed</div>
														</div>

														<div
															style="background-color: #fff; border-bottom: solid 1px #aaa; border-right: solid 1px #aaa; border-top: solid 1px white; padding: 0 16px">

															<p>On the next screen, you will see careers related
																to your Interest Profile in your chosen Job Zone.</p>

															<p>
																Click the <b>Next</b> button to continue.
															</p>

														</div>
													</td>
												</tr>
											</tbody>
										</table>
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
								<td
									style="width: 115px; height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_botleft.gif)">
									<img alt="Back" src="./resources/assets/emoticons/back.gif"
									id="backbtn3rdPage" onclick="back()">

								</td>

								<td
									style="height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_bot.gif)"><table
										cellpadding="0" cellspacing="0" border="0"
										style="margin: 0 auto; height: 44px">
										<tbody>
											<tr>
												<td style="height: 44px"><a
													href="/AssesmentApp/onetHome"><img
														name="submit_page_D1" id="tab1" value="Start"
														src="./resources/assets/emoticons/tab1.gif" alt="Start"
														onmouseover="hover(&#39;tab1&#39;, true)"
														onmouseout="hover(&#39;tab1&#39;, false)"></a></td>
												<td style="height: 44px"><a
													href="/AssesmentApp/OnetPage"> <img
														name="submit_page_I1" id="tab2" value="Interests"
														src="./resources/assets/emoticons/tab2.gif"
														alt="Interests" onmouseover="hover(&#39;tab2&#39;, true)"
														onmouseout="hover(&#39;tab2&#39;, false)"></a></td>
												<td style="height: 44px"><a
													href="/AssesmentApp/profiler2"><img
														name="submit_page_S1" id="tab3" value="Results"
														src="./resources/assets/emoticons/tab3.gif" alt="Results"
														onmouseover="hover(&#39;tab3&#39;, true)"
														onmouseout="hover(&#39;tab3&#39;, false)"></a></td>
												<td style="height: 44px"><a
													href="/AssesmentApp/jobZone"><img name="submit_page_S2"
														id="tab4" value="Job Zones"
														src="https://www.mynextmove.org/image/ip/tab4_sel.gif"
														alt="Job Zones" onmouseover="hover(&#39;tab4&#39;, true)"
														onmouseout="hover(&#39;tab4&#39;, false)"></a></td>
												<td style="height: 44px; padding: 0"><img
													src="./resources/assets/emoticons/tab5.gif"
													alt="Careers"></td>
											</tr>
										</tbody>
									</table></td>
								<td
									style="width: 115px; height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_botright.gif)">
									<img alt="Next" src="./resources/assets/emoticons/next.gif"
									id="nextbtn3rdPage" onclick="next()">
								</td>
							</tr>
						</tbody>
					</table>
				</form>

				<!-- end content -->
			</div>
		</div>

	</div>
	<script type="text/javascript">
	function	next() {
		var x = ${param.name}
		window.location = "career?name="+x;
	}
	function back(){
	window.location = "jobZone?name=4";
	}
	</script>
</body>
</html>