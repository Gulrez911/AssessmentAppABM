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
									<div class="inner" id="tbl1">
										<div style="padding-bottom: 16px">
											<table cellpadding="0" cellspacing="0" border="0">
												<tbody>
													<tr>
														<td style="vertical-align: middle">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 32px; width: ${rs.score }px; vertical-align: bottom"
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
																					style="margin: 0 4px; padding: 4px 0; font-size: 10px; font-weight: bold; cursor: pointer;"
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

														</td>
														<td style="vertical-align: middle">

															<div
																style="width: 180px; margin-left: 64px; margin-right: 16px; text-align: center; margin-bottom: 2px">
																<span style="font-size: 11px">Click to change
																	your Job Zone:</span>
															</div>
															<div
																style="width: 180px; height: 36px; margin-left: 64px; margin-right: 16px">
																<table cellpadding="0" cellspacing="0" border="0"
																	style="width: 180px; height: 36px">
																	<tbody>
																		<tr>
																			<td><img
																				src="./resources/assets/emoticons/zone1_sel.gif"
																				alt="Job Zone One" width="36" height="36"></td>
																			<td><a href="career?name=2"><img alt=""
																					src="./resources/assets/emoticons/zone2.gif"></a>
																			</td>
																			<td><a href="career?name=3"><img alt=""
																					src="./resources/assets/emoticons/zone3.gif"></a>
																			</td>
																			<td><a href="career?name=4"><img alt=""
																					src="./resources/assets/emoticons/zone4.gif"></a>
																			</td>
																			<td><a href="career?name=5"><img alt=""
																					src="./resources/assets/emoticons/zone5.gif"></a>
																			</td>
																		</tr>
																	</tbody>
																</table>

															</div>
														</td>
														<td style="vertical-align: top">

															<div
																style="font-size: 11px; font-weight: bold; margin-top: 20px">Job
																Zone One</div>
															<div style="font-size: 11px">little or no job
																preparation</div>

														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div style="margin-bottom: 4px; font-weight: bold">Careers
											that fit your interests and preparation level:</div>
										<div
											style="background-color: #fff; border: solid 1px #aaa; height: 222px; width: 100%; overflow: auto; position: relative">
											<div style="margin: 1px 8px 8px">
												<div class="tableheader"
													style="position: relative; margin: 0; padding: 0; border: none; height: 26px">
													<div style="float: left">
														<img src="./resources/assets/emoticons/strong_legend.gif"
															alt="Best fit, great fit"
															title="Best matches are listed first">
													</div>

													<div id="tableunder_1"
														style="position: absolute; z-index: 2; right: 2px; top: 0; text-align: right; width: 419px; height: 26px">
														<div
															style="position: absolute; right: 0; width: 0px; height: 26px"></div>
													</div>
												</div>
												<table class="careers" cellspacing="0" border="0"
													style="margin: 0; padding: 0">
													<tbody>
														<tr>
															<th><span class="screenreader">Career name</span><img
																src="./resources/assets/emoticons/blank.gif" alt=" "></th>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2051.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2051.00">Cement
																	Masons &amp; Concrete Finishers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7011.00">Conveyor
																	Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-5011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5011.00">Derrick
																	Operators, Oil &amp; Gas</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9093.00">Fabric
																	Menders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-4021.00">Fallers</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-2092.02">Farmworkers
																	&amp; Laborers, Crop</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-2093.00">Farmworkers,
																	Farm, Ranch, &amp; Aquacultural Animals</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/45-3011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-3011.00">Fishers
																	&amp; Related Fishing Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9022.00">Grinding
																	&amp; Polishing Workers, Hand</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-3014.00">Helpers--Painters,
																	Paperhangers, Plasterers, &amp; Stucco Masons</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/45-3021.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-3021.00">Hunters
																	&amp; Trappers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/37-3011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/37-3011.00">Landscaping
																	&amp; Groundskeeping Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6011.00">Laundry
																	&amp; Dry-Cleaning Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-4022.00">Logging
																	Equipment Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-3022.00">Meat,
																	Poultry, &amp; Fish Cutters &amp; Trimmers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2161.00">Plasterers
																	&amp; Stucco Masons</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5051.00">Rock
																	Splitters, Quarry</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-5071.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5071.00">Roustabouts,
																	Oil &amp; Gas</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4071.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4071.00">Septic
																	Tank Servicers &amp; Sewer Pipe Cleaners</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6031.00">Sewing
																	Machine Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/35-9021.00">Dishwashers</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6021.00">Pressers,
																	Textile, Garment, &amp; Related Materials</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div style="margin: 10px 0; font-size: 11px">
											<div style="float: right; padding-left: 32px">
												<a
													href="https://www.mynextmove.org/explore/ip-print?t=o&amp;z=1&amp;i=210804000000"
													id="printbtn" target="_ipprint"><img
													src="./resources/assets/emoticons/print_small.gif"
													alt="Print" width="64" height="22"></a>
											</div>
											Click on a career to learn what they do.
										</div>
									</div> <!-- div 2 -->
									<div class="inner" id="tbl2">
										<div style="padding-bottom: 16px">
											<table cellpadding="0" cellspacing="0" border="0">
												<tbody>
													<tr>
														<td style="vertical-align: middle">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 32px; width: ${rs.score }px; vertical-align: bottom"
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
																					style="margin: 0 4px; padding: 4px 0; font-size: 10px; font-weight: bold; cursor: pointer;"
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

														</td>
														<td style="vertical-align: middle">

															<div
																style="width: 180px; margin-left: 64px; margin-right: 16px; text-align: center; margin-bottom: 2px">
																<span style="font-size: 11px">Click to change
																	your Job Zone:</span>
															</div>
															<div
																style="width: 180px; height: 36px; margin-left: 64px; margin-right: 16px">
																<table cellpadding="0" cellspacing="0" border="0"
																	style="width: 180px; height: 36px">
																	<tbody>
																		<tr>
																			<td><a href="career?name=1"><img alt=""
																					src="./resources/assets/emoticons/zone1.gif"></a></td>
																			<td><img
																				src="./resources/assets/emoticons/zone2_sel.gif"
																				alt="Job Zone Two" width="36" height="36"></td>
																			<td><a href="career?name=3"><img alt=""
																					src="./resources/assets/emoticons/zone3.gif"></a>
																			</td>
																			<td><a href="career?name=4"><img alt=""
																					src="./resources/assets/emoticons/zone4.gif"></a>
																			</td>
																			<td><a href="career?name=5"><img alt=""
																					src="./resources/assets/emoticons/zone5.gif"></a>
																			</td>
																		</tr>
																	</tbody>
																</table>

															</div>
														</td>
														<td style="vertical-align: top">

															<div
																style="font-size: 11px; font-weight: bold; margin-top: 20px">Job
																Zone Two</div>
															<div style="font-size: 11px">some job preparation</div>

														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div style="margin-bottom: 4px; font-weight: bold">Careers
											that fit your interests and preparation level:</div>
										<div
											style="background-color: #fff; border: solid 1px #aaa; height: 222px; width: 100%; overflow: auto; position: relative">
											<div style="margin: 1px 8px 8px">
												<div class="tableheader"
													style="position: relative; margin: 0; padding: 0; border: none; height: 26px">
													<div style="float: left">
														<img src="./resources/assets/emoticons/strong_legend.gif"
															alt="Best fit, great fit"
															title="Best matches are listed first">
													</div>

													<div id="tableunder_1"
														style="position: absolute; z-index: 2; right: 2px; top: 0; text-align: right; width: 419px; height: 26px">
														<div
															style="position: absolute; right: 0; width: 0px; height: 26px"></div>
													</div>
												</div>
												<table class="careers" cellspacing="0" border="0"
													style="margin: 0; padding: 0">
													<tbody>
														<tr>
															<th><span class="screenreader">Career name</span><img
																src="./resources/assets/emoticons/blank.gif" alt=" "></th>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9191.00">Adhesive
																	Bonding Machine Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-2091.00">Agricultural
																	Equipment Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-2011.00">Agricultural
																	Inspectors</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2011.00">Aircraft
																	Structure, Surfaces, Rigging, &amp; Systems Assemblers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-2021.00">Animal
																	Breeders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/39-2011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/39-2011.00">Animal
																	Trainers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3021.00">Automotive
																	Body &amp; Related Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-3091.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3091.00">Bicycle
																	Repairers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8099.01">Biofuels
																	Processing Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8099.03">Biomass
																	Plant Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2021.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2021.00">Brickmasons
																	&amp; Blockmasons</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-7011.00">Cabinetmakers
																	&amp; Bench Carpenters</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2041.00">Carpet
																	Installers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9011.00">Chemical
																	Equipment Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8091.00">Chemical
																	Plant &amp; System Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-7061.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7061.00">Cleaners
																	of Vehicles &amp; Equipment</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9192.00">Cleaning,
																	Washing, &amp; Metal Pickling Equipment Operators &amp;
																	Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9121.00">Coating,
																	Painting, &amp; Spraying Machine Setters, Operators,
																	&amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2021.00">Coil
																	Winders, Tapers, &amp; Finishers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2031.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2031.01">Construction
																	Carpenters</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2061.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2061.00">Construction
																	Laborers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5041.00">Continuous
																	Mining Machine Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9193.00">Cooling
																	&amp; Freezing Equipment Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9021.00">Crushing,
																	Grinding, &amp; Polishing Machine Setters, Operators,
																	&amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9032.00">Cutting
																	&amp; Slicing Machine Setters, Operators, &amp; Tenders</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/51-9081.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9081.00">Dental
																	Laboratory Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7031.00">Dredge
																	Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4032.00">Drilling
																	&amp; Boring Machine Tool Setters, Operators, &amp;
																	Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-5021.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5021.00">Earth
																	Drillers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2022.00">Electrical
																	&amp; Electronic Equipment Assemblers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2023.00">Electromechanical
																	Equipment Assemblers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2031.00">Engine
																	&amp; Other Machine Assemblers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9194.00">Etchers
																	&amp; Engravers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7032.00">Excavating
																	&amp; Loading Machine &amp; Dragline Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5031.00">Explosives
																	Workers, Ordnance Handling Experts, &amp; Blasters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4021.00">Extruding
																	&amp; Drawing Machine Setters, Operators, &amp;
																	Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6091.00">Extruding
																	&amp; Forming Machine Setters, Operators, &amp;
																	Tenders, Synthetic &amp; Glass Fibers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2091.00">Fiberglass
																	Laminators &amp; Fabricators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2043.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2043.00">Floor
																	Sanders &amp; Finishers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-3091.00">Food
																	&amp; Tobacco Roasting, Baking, &amp; Drying Machine
																	Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4022.00">Forging
																	Machine Setters, Operators, &amp; Tenders, Metal &amp;
																	Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4071.00">Foundry
																	Mold &amp; Coremakers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9051.00">Furnace,
																	Kiln, Oven, Drier, &amp; Kettle Operators &amp; Tenders</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-7021.00">Furniture
																	Finishers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7071.00">Gas
																	Compressor &amp; Gas Pumping Station Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9099.01">Geothermal
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2121.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2121.00">Glaziers</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4033.00">Grinding,
																	Lapping, Polishing, &amp; Buffing Machine Tool Setters,
																	Operators, &amp; Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4191.00">Heat
																	Treating Equipment Setters, Operators, &amp; Tenders,
																	Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-3032.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-3032.00">Heavy
																	&amp; Tractor-Trailer Truck Drivers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-3011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-3011.00">Helpers--Brickmasons,
																	Blockmasons, Stonemasons, &amp; Tile &amp; Marble
																	Setters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-3012.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-3012.00">Helpers--Carpenters</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-3013.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-3013.00">Helpers--Electricians</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-5081.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5081.00">Helpers--Extraction
																	Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-3015.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-3015.00">Helpers--Pipelayers,
																	Plumbers, Pipefitters, &amp; Steamfitters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/51-9198.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9198.00">Helpers--Production
																	Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4051.00">Highway
																	Maintenance Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7041.00">Hoist
																	&amp; Winch Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7051.00">Industrial
																	Truck &amp; Tractor Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2131.00">Insulation
																	Workers, Floor, Ceiling, &amp; Wall</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2132.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2132.00">Insulation
																	Workers, Mechanical</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-7062.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7062.00">Laborers
																	&amp; Freight, Stock, &amp; Material Movers, Hand</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4034.00">Lathe
																	&amp; Turning Machine Tool Setters, Operators, &amp;
																	Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4192.00">Layout
																	Workers, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7033.00">Loading
																	Machine Operators, Underground Mining</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9094.00">Locksmiths
																	&amp; Safe Repairers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7063.00">Machine
																	Feeders &amp; Offbearers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9095.00">Manufactured
																	Building &amp; Mobile Home Installers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9011.00">Mechanical
																	Door Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4051.00">Metal-Refining
																	Furnace Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4035.00">Milling
																	&amp; Planing Machine Setters, Operators, &amp;
																	Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9044.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9044.00">Millwrights</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5042.00">Mine
																	Cutting &amp; Channeling Machine Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7111.00">Mine
																	Shuttle Car Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9023.00">Mixing
																	&amp; Blending Machine Setters, Operators, &amp;
																	Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9195.07">Molding
																	&amp; Casting Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4072.00">Molding,
																	Coremaking, &amp; Casting Machine Setters, Operators,
																	&amp; Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4081.00">Multiple
																	Machine Tool Setters, Operators, &amp; Tenders, Metal
																	&amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.01">Non-Destructive
																	Testing Specialists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-2092.01">Nursery
																	Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2073.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2073.00">Operating
																	Engineers &amp; Other Construction Equipment Operators</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/51-9083.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9083.00">Ophthalmic
																	Laboratory Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-3053.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3053.00">Outdoor
																	Power Equipment &amp; Other Small Engine Mechanics</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-7064.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7064.00">Packers
																	&amp; Packagers, Hand</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2141.00">Painters,
																	Construction &amp; Maintenance</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9122.00">Painters,
																	Transportation Equipment</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9123.00">Painting,
																	Coating, &amp; Decorating Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2142.00">Paperhangers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2071.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2071.00">Paving,
																	Surfacing, &amp; Tamping Equipment Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/37-3012.00">Pesticide
																	Handlers, Sprayers, &amp; Applicators, Vegetation</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2072.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2072.00">Pile-Driver
																	Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2151.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2151.00">Pipelayers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4193.00">Plating
																	&amp; Coating Machine Setters, Operators, &amp;
																	Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4052.00">Pourers
																	&amp; Casters, Metal</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-7072.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7072.00">Pump
																	Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3043.00">Rail
																	Car Repairers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-4013.00">Rail
																	Yard Engineers, Dinkey Operators, &amp; Hostlers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4061.00">Rail-Track
																	Laying &amp; Maintenance Equipment Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-4021.00">Railroad
																	Brake, Signal, &amp; Switch Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3092.00">Recreational
																	Vehicle Service Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9045.00">Refractory
																	Materials Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-7081.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7081.00">Refuse
																	&amp; Recyclable Material Collectors</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2171.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2171.00">Reinforcing
																	Iron &amp; Rebar Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9096.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9096.00">Riggers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5061.00">Roof
																	Bolters, Mining</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2181.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2181.00">Roofers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2031.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2031.02">Rough
																	Carpenters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-7041.00">Sawing
																	Machine Setters, Operators, &amp; Tenders, Wood</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4091.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4091.00">Segmental
																	Pavers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9141.00">Semiconductor
																	Processors</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9012.00">Separating,
																	Filtering, Clarifying, Precipitating, &amp; Still
																	Machine Setters, Operators, &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-5013.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5013.00">Service
																	Unit Operators, Oil, Gas, &amp; Mining</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2211.00">Sheet
																	Metal Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6042.00">Shoe
																	Machine Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2231.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2231.00">Solar
																	Photovoltaic Installers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4121.07">Solderers
																	&amp; Brazers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2221.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2221.00">Structural
																	Iron &amp; Steel Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2082.00">Tapers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9052.00">Telecommunications
																	Line Installers &amp; Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2053.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2053.00">Terrazzo
																	Workers &amp; Finishers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6061.00">Textile
																	Bleaching &amp; Dyeing Machine Operators &amp; Tenders</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6062.00">Textile
																	Cutting Machine Setters, Operators, &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6064.00">Textile
																	Winding, Twisting, &amp; Drawing Out Machine Setters,
																	Operators, &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2044.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2044.00">Tile
																	&amp; Marble Setters</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2093.00">Timing
																	Device Assemblers &amp; Adjusters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9197.00">Tire
																	Builders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3093.00">Tire
																	Repairers &amp; Changers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4194.00">Tool
																	Grinders, Filers, &amp; Sharpeners</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/37-3013.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/37-3013.00">Tree
																	Trimmers &amp; Pruners</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6093.00">Upholsterers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4099.03"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4099.03">Weatherization
																	Installers &amp; Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-7073.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7073.00">Wellhead
																	Pumpers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-7042.00">Woodworking
																	Machine Setters, Operators, &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/33-9011.00">Animal
																	Control Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-6031.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-6031.00">Automotive
																	&amp; Watercraft Service Attendants</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3022.00">Automotive
																	Glass Installers &amp; Repairers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-3011.00">Bakers</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-3021.00">Bus
																	Drivers, Transit &amp; Intercity</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9091.00">Coin,
																	Vending, &amp; Amusement Machine Servicers &amp;
																	Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/35-2014.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/35-2014.00">Cooks,
																	Restaurant</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/43-5021.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/43-5021.00">Couriers
																	&amp; Messengers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9031.00">Cutters
																	&amp; Trimmers, Hand</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4031.00">Cutting,
																	Punching, &amp; Press Machine Setters, Operators, &amp;
																	Tenders, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2081.00">Drywall
																	&amp; Ceiling Tile Installers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9041.00">Extruding,
																	Forming, Pressing, &amp; Compacting Machine Setters,
																	Operators, &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4031.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4031.00">Fence
																	Erectors</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2042.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2042.00">Floor
																	Layers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-3093.00">Food
																	Cooking Machine Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/33-2011.02">Forest
																	Firefighters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9195.04">Glass
																	Blowers, Molders, Benders, &amp; Finishers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9098.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9098.00">Helpers--Installation,
																	Maintenance, &amp; Repair Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-3016.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-3016.00">Helpers--Roofers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9031.00">Home
																	Appliance Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/37-2011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/37-2011.00">Janitors
																	&amp; Cleaners</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/53-3033.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-3033.00">Light
																	Truck or Delivery Services Drivers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-4011.00">Locomotive
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-4012.00">Locomotive
																	Firers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/39-3021.00">Motion
																	Picture Projectionists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9111.00">Packaging
																	&amp; Filling Machine Operators &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9196.00">Paper
																	Goods Machine Setters, Operators, &amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/37-2021.00">Pest
																	Control Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8093.00">Petroleum
																	Pump System Operators, Refinery Operators, &amp;
																	Gaugers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8013.00">Power
																	Plant Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-5113.00">Print
																	Binding &amp; Finishing Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4023.00">Rolling
																	Machine Setters, Operators, &amp; Tenders, Metal &amp;
																	Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-5012.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-5012.00">Rotary
																	Drill Operators, Oil &amp; Gas</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-5011.00">Sailors
																	&amp; Marine Oilers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6041.00">Shoe
																	&amp; Leather Workers &amp; Repairers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-3023.00">Slaughterers
																	&amp; Meat Packers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9195.03">Stone
																	Cutters &amp; Carvers, Manufacturing</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7121.00">Tank
																	Car, Truck, &amp; Ship Loaders</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6063.00">Textile
																	Knitting &amp; Weaving Machine Setters, Operators,
																	&amp; Tenders</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-6051.07">Transportation
																	Vehicle, Equipment &amp; Systems Inspectors</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4122.00">Welding,
																	Soldering, &amp; Brazing Machine Setters, Operators,
																	&amp; Tenders</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div style="margin: 10px 0; font-size: 11px">
											<div style="float: right; padding-left: 32px">
												<a
													href="https://www.mynextmove.org/explore/ip-print?t=o&amp;z=2&amp;i=210804000000"
													id="printbtn" target="_ipprint"><img
													src="./resources/assets/emoticons/print_small.gif"
													alt="Print" width="64" height="22"></a>
											</div>
											Click on a career to learn what they do.
										</div>
									</div> <!-- div 3 -->
									<div class="inner" id="tbl3">
										<div style="padding-bottom: 16px">
											<table cellpadding="0" cellspacing="0" border="0">
												<tbody>
													<tr>
														<td style="vertical-align: middle">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 32px; width: ${rs.score }px; vertical-align: bottom"
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
																					style="margin: 0 4px; padding: 4px 0; font-size: 10px; font-weight: bold; cursor: pointer;"
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

														</td>
														<td style="vertical-align: middle">

															<div
																style="width: 180px; margin-left: 64px; margin-right: 16px; text-align: center; margin-bottom: 2px">
																<span style="font-size: 11px">Click to change
																	your Job Zone:</span>
															</div>
															<div
																style="width: 180px; height: 36px; margin-left: 64px; margin-right: 16px">
																<table cellpadding="0" cellspacing="0" border="0"
																	style="width: 180px; height: 36px">
																	<tbody>
																		<tr>
																			<td><a href="career?name=1"><img alt=""
																					src="./resources/assets/emoticons/zone1.gif"></a></td>
																			<td><a href="career?name=2"> <img
																					src="./resources/assets/emoticons/zone2.gif"
																					alt="Job Zone Two" width="36" height="36"></a></td>
																			<td><a href="career?name=3"><img alt=""
																					src="./resources/assets/emoticons/zone3_sel.gif"></a>
																			</td>
																			<td><a href="career?name=4"><img alt=""
																					src="./resources/assets/emoticons/zone4.gif"></a>
																			</td>
																			<td><a href="career?name=5"><img alt=""
																					src="./resources/assets/emoticons/zone5.gif"></a>
																			</td>
																		</tr>
																	</tbody>
																</table>

															</div>
														</td>
														<td style="vertical-align: top">

															<div
																style="font-size: 11px; font-weight: bold; margin-top: 20px">Job
																Zone Three</div>
															<div style="font-size: 11px">medium job preparation</div>

														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div style="margin-bottom: 4px; font-weight: bold">Careers
											that fit your interests and preparation level:</div>
										<div
											style="background-color: #fff; border: solid 1px #aaa; height: 222px; width: 100%; overflow: auto; position: relative">
											<div style="margin: 1px 8px 8px">
												<div class="tableheader"
													style="position: relative; margin: 0; padding: 0; border: none; height: 26px">
													<div style="float: left">
														<img src="./resources/assets/emoticons/strong_legend.gif"
															alt="Best fit, great fit"
															title="Best matches are listed first">
													</div>

													<div id="tableunder_1"
														style="position: absolute; z-index: 2; right: 2px; top: 0; text-align: right; width: 419px; height: 26px">
														<div
															style="position: absolute; right: 0; width: 0px; height: 26px"></div>
													</div>
												</div>
												<table class="careers" cellspacing="0" border="0"
													style="margin: 0; padding: 0">
													<tbody>
														<tr>
															<th><span class="screenreader">Career name</span><img
																src="./resources/assets/emoticons/blank.gif" alt=" "></th>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4011.01">Agricultural
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3011.00">Aircraft
																	Mechanics &amp; Service Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/27-4011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/27-4011.00">Audio
																	&amp; Video Equipment Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3027.01">Automotive
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3023.01">Automotive
																	Master Mechanics</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3023.02">Automotive
																	Specialty Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2091.00">Avionics
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2011.00">Boilermakers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/27-4012.00">Broadcast
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3031.00">Bus
																	&amp; Truck Mechanics &amp; Diesel Engine Specialists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9061.00">Camera
																	&amp; Photographic Equipment Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9092.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9092.00">Commercial
																	Divers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2011.00">Computer,
																	Automated Teller, &amp; Office Machine Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4011.00">Computer-Controlled
																	Machine Tool Operators, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9012.00">Control
																	&amp; Valve Installers &amp; Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-7021.00">Crane
																	&amp; Tower Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2092.00">Electric
																	Motor, Power Tool, &amp; Related Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2093.00">Electrical
																	&amp; Electronics Installers &amp; Repairers,
																	Transportation Equipment</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2094.00">Electrical
																	&amp; Electronics Repairers, Commercial &amp;
																	Industrial Equipment</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2095.00">Electrical
																	&amp; Electronics Repairers, Powerhouse, Substation,
																	&amp; Relay</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3012.02">Electrical
																	Drafters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3023.03">Electrical
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9051.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9051.00">Electrical
																	Power-Line Installers &amp; Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2111.00">Electricians</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3024.00">Electro-Mechanical
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2096.00">Electronic
																	Equipment Installers &amp; Repairers, Motor Vehicles</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3023.01">Electronics
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.04">Electronics
																	Engineering Technologists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4021.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4021.00">Elevator
																	Installers &amp; Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/31-9099.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/31-9099.02">Endoscopy
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3041.00">Farm
																	Equipment Mechanics &amp; Service Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4093.00">Forest
																	&amp; Conservation Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/45-4011.00">Forest
																	&amp; Conservation Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9071.06">Gem
																	&amp; Diamond Workers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4041.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4041.00">Hazardous
																	Materials Removal Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9021.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9021.01">Heating
																	&amp; Air Conditioning Mechanics &amp; Installers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2011.03"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2011.03">Histotechnologists
																	&amp; Histologic Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8099.04">Hydroelectric
																	Plant Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9041.00">Industrial
																	Machinery Mechanics</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4041.00">Machinists</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9071.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9071.00">Maintenance
																	&amp; Repair Workers, General</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9043.00">Maintenance
																	Workers, Machinery</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.09">Manufacturing
																	Production Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3013.00">Mechanical
																	Drafters</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3027.00">Mechanical
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.07">Mechanical
																	Engineering Technologists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/51-9082.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9082.00">Medical
																	Appliance Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9062.00">Medical
																	Equipment Repairers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3042.00">Mobile
																	Heavy Equipment Mechanics</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4061.00">Model
																	Makers, Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-7031.00">Model
																	Makers, Wood</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3051.00">Motorboat
																	Mechanics &amp; Service Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-3052.00">Motorcycle
																	Mechanics</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9063.00">Musical
																	Instrument Repairers &amp; Tuners</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.12">Nanotechnology
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2099.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2099.01">Neurodiagnostic
																	Technologists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4062.00">Patternmakers,
																	Metal &amp; Plastic</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-7032.00">Patternmakers,
																	Wood</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.08">Photonics
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2152.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2152.01">Pipe
																	Fitters &amp; Steamfitters</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2152.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2152.02">Plumbers</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9195.05">Potters,
																	Manufacturing</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9071.07">Precious
																	Metal Workers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2021.01">Radio
																	Mechanics</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2021.00">Radio,
																	Cellular, &amp; Tower Equipment Installers &amp;
																	Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9021.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9021.02">Refrigeration
																	Mechanics &amp; Installers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3024.01">Robotics
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-2098.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2098.00">Security
																	&amp; Fire Alarm Systems Installers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9097.00">Signal
																	&amp; Track Switch Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4099.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4099.02">Solar
																	Thermal Installers &amp; Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8021.00">Stationary
																	Engineers &amp; Boiler Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-2022.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-2022.00">Stonemasons</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-2041.00">Structural
																	Metal Fabricators &amp; Fitters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2022.00">Telecommunications
																	Equipment Installers &amp; Repairers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4111.00">Tool
																	&amp; Die Makers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-6041.00">Traffic
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/31-9096.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/31-9096.00">Veterinary
																	Assistants &amp; Laboratory Animal Caretakers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2056.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2056.00">Veterinary
																	Technologists &amp; Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9064.00">Watch
																	Repairers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8031.00">Water
																	&amp; Wastewater Treatment Plant &amp; System Operators</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-4121.06">Welders,
																	Cutters, &amp; Welder Fitters</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/49-9081.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-9081.00">Wind
																	Turbine Service Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-6051.01">Aviation
																	Inspectors</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/27-4031.00">Camera
																	Operators, Television, Video, &amp; Motion Picture</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4031.00">Chemical
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3011.02">Civil
																	Drafters</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3022.00">Civil
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-2012.00">Commercial
																	Pilots</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/47-4011.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/47-4011.00">Construction
																	&amp; Building Inspectors</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/49-2097.00">Electronic
																	Home Entertainment Equipment Installers &amp; Repairers</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/39-4011.00">Embalmers</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4011.02">Food
																	Science Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-9071.01">Jewelers</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4051.01">Nuclear
																	Equipment Operation Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2033.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2033.00">Nuclear
																	Medicine Technologists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4051.02">Nuclear
																	Monitoring Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8011.00">Nuclear
																	Power Reactor Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-5021.03">Pilots,
																	Ship</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-8012.00">Power
																	Distributors &amp; Dispatchers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-5112.00">Printing
																	Press Operators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/27-4013.00">Radio
																	Operators</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2099.06"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2099.06">Radiologic
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2034.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2034.00">Radiologic
																	Technologists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/27-4014.00">Sound
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/51-6052.00">Tailors,
																	Dressmakers, &amp; Custom Sewers</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div style="margin: 10px 0; font-size: 11px">
											<div style="float: right; padding-left: 32px">
												<a
													href="https://www.mynextmove.org/explore/ip-print?t=o&amp;z=3&amp;i=210804000000"
													id="printbtn" target="_ipprint"><img
													src="./resources/assets/emoticons/print_small.gif"
													alt="Print" width="64" height="22"></a>
											</div>
											Click on a career to learn what they do.
										</div>
									</div> <!-- div 4 -->
									<div class="inner" id="tbl4">
										<div style="padding-bottom: 16px">
											<table cellpadding="0" cellspacing="0" border="0">
												<tbody>
													<tr>
														<td style="vertical-align: middle">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 32px; width: ${rs.score }px; vertical-align: bottom"
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
																					style="margin: 0 4px; padding: 4px 0; font-size: 10px; font-weight: bold; cursor: pointer;"
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

														</td>
														<td style="vertical-align: middle">

															<div
																style="width: 180px; margin-left: 64px; margin-right: 16px; text-align: center; margin-bottom: 2px">
																<span style="font-size: 11px">Click to change
																	your Job Zone:</span>
															</div>
															<div
																style="width: 180px; height: 36px; margin-left: 64px; margin-right: 16px">
																<table cellpadding="0" cellspacing="0" border="0"
																	style="width: 180px; height: 36px">
																	<tbody>
																		<tr>
																			<td><a href="career?name=1"><img alt=""
																					src="./resources/assets/emoticons/zone1.gif"></a></td>
																			<td><a href="career?name=2"> <img
																					src="./resources/assets/emoticons/zone2.gif"
																					alt="Job Zone Two" width="36" height="36"></a></td>
																			<td><a href="career?name=3"><img alt=""
																					src="./resources/assets/emoticons/zone3.gif"></a>
																			</td>
																			<td><a href="career?name=4"><img alt=""
																					src="./resources/assets/emoticons/zone4_sel.gif"></a>
																			</td>
																			<td><a href="career?name=5"><img alt=""
																					src="./resources/assets/emoticons/zone5.gif"></a>
																			</td>
																		</tr>
																	</tbody>
																</table>

															</div>
														</td>
														<td style="vertical-align: top">

															<div
																style="font-size: 11px; font-weight: bold; margin-top: 20px">Job
																Zone Four</div>
															<div style="font-size: 11px">high job preparation</div>

														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div style="margin-bottom: 4px; font-weight: bold">Careers
											that fit your interests and preparation level:</div>
										<div
											style="background-color: #fff; border: solid 1px #aaa; height: 222px; width: 100%; overflow: auto; position: relative">
											<div style="margin: 1px 8px 8px">
												<div class="tableheader"
													style="position: relative; margin: 0; padding: 0; border: none; height: 26px">
													<div style="float: left">
														<img src="./resources/assets/emoticons/strong_legend.gif"
															alt="Best fit, great fit"
															title="Best matches are listed first">
													</div>

													<div id="tableunder_1"
														style="position: absolute; z-index: 2; right: 2px; top: 0; text-align: right; width: 419px; height: 26px">
														<div
															style="position: absolute; right: 0; width: 0px; height: 26px"></div>
													</div>
												</div>
												<table class="careers" cellspacing="0" border="0"
													style="margin: 0; padding: 0">
													<tbody>
														<tr>
															<th><span class="screenreader">Career name</span><img
																src="./resources/assets/emoticons/blank.gif" alt=" "></th>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2021.00">Agricultural
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2141.02">Automotive
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.01">Biochemical
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2041.00">Chemical
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-2051.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2051.00">Civil
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.02">Electrical
																	Engineering Technologists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.03">Electromechanical
																	Engineering Technologists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.03">Energy
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/33-3031.00">Fish
																	&amp; Game Wardens</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-1032.00">Foresters</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-4041.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4041.02">Geological
																	Sample Test Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.04">Manufacturing
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2141.00">Mechanical
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/25-4013.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/25-4013.00">Museum
																	Technicians &amp; Conservators</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.11">Nanotechnology
																	Engineering Technologists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2072.01">Radio
																	Frequency Identification Device Specialists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-4099.03"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4099.03">Remote
																	Sensing Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.11">Solar
																	Energy Systems Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-1022.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-1022.00">Surveyors</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-2051.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2051.01">Transportation
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.10">Wind
																	Energy Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3021.00">Aerospace
																	Engineering &amp; Operations Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2011.00">Aerospace
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/53-2011.00">Airline
																	Pilots, Copilots, &amp; Flight Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-4021.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4021.00">Biological
																	Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2031.00">Biomedical
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-1021.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-1021.00">Cartographers
																	&amp; Photogrammetrists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2061.00">Computer
																	Hardware Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/15-1152.00">Computer
																	Network Support Specialists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/15-1199.02">Computer
																	Systems Engineers/Architects</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2011.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2011.01">Cytogenetic
																	Technologists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2071.00">Electrical
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2072.00">Electronics
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-3025.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3025.00">Environmental
																	Engineering Technicians</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-4091.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4091.00">Environmental
																	Science &amp; Protection Technicians, Including Health</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-2041.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-2041.00">Environmental
																	Scientists &amp; Specialists, Including Health</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-2042.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-2042.00">Geoscientists</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-3029.06">Manufacturing
																	Engineering Technologists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-2121.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2121.02">Marine
																	Architects</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-2121.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2121.01">Marine
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2131.00">Materials
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.05">Mechatronics
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2161.00">Nuclear
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.07">Photonics
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-4099.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-4099.02">Precision
																	Agriculture Technicians</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.08">Robotics
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/13-1199.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/13-1199.02">Security
																	Management Specialists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.02">Validation
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2081.01">Water/Wastewater
																	Engineers</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div style="margin: 10px 0; font-size: 11px">
											<div style="float: right; padding-left: 32px">
												<a
													href="https://www.mynextmove.org/explore/ip-print?t=o&amp;z=4&amp;i=210804000000"
													id="printbtn" target="_ipprint"><img
													src="./resources/assets/emoticons/print_small.gif"
													alt="Print" width="64" height="22"></a>
											</div>
											Click on a career to learn what they do.
										</div>
									</div> <!-- div 5 -->
									<div class="inner" id="tbl5">
										<div style="padding-bottom: 16px">
											<table cellpadding="0" cellspacing="0" border="0">
												<tbody>
													<tr>
														<td style="vertical-align: middle">
															<table cellspacing="0" cellpadding="0">
																<tbody>
																	<tr>
																		<c:forEach items="${rs}" var="rs">
																			<td
																				style="height: 32px; width: ${rs.score }px; vertical-align: bottom"
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
																					style="margin: 0 4px; padding: 4px 0; font-size: 10px; font-weight: bold; cursor: pointer;"
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

														</td>
														<td style="vertical-align: middle">

															<div
																style="width: 180px; margin-left: 64px; margin-right: 16px; text-align: center; margin-bottom: 2px">
																<span style="font-size: 11px">Click to change
																	your Job Zone:</span>
															</div>
															<div
																style="width: 180px; height: 36px; margin-left: 64px; margin-right: 16px">
																<table cellpadding="0" cellspacing="0" border="0"
																	style="width: 180px; height: 36px">
																	<tbody>
																		<tr>
																			<td><a href="career?name=1"><img alt=""
																					src="./resources/assets/emoticons/zone1.gif"></a></td>
																			<td><a href="career?name=2"> <img
																					src="./resources/assets/emoticons/zone2.gif"
																					alt="Job Zone Two" width="36" height="36"></a></td>
																			<td><a href="career?name=3"><img alt=""
																					src="./resources/assets/emoticons/zone3.gif"></a>
																			</td>
																			<td><a href="career?name=4"><img alt=""
																					src="./resources/assets/emoticons/zone4.gif"></a>
																			</td>
																			<td><a href="career?name=5"><img alt=""
																					src="./resources/assets/emoticons/zone5_sel.gif"></a>
																			</td>
																		</tr>
																	</tbody>
																</table>

															</div>
														</td>
														<td style="vertical-align: top">

															<div
																style="font-size: 11px; font-weight: bold; margin-top: 20px">Job
																Zone Five</div>
															<div style="font-size: 11px">extensive job
																preparation</div>

														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div style="margin-bottom: 4px; font-weight: bold">Careers
											that fit your interests and preparation level:</div>
										<div
											style="background-color: #fff; border: solid 1px #aaa; height: 222px; width: 100%; overflow: auto; position: relative">
											<div style="margin: 1px 8px 8px">
												<div class="tableheader"
													style="position: relative; margin: 0; padding: 0; border: none; height: 26px">
													<div style="float: left">
														<img src="./resources/assets/emoticons/strong_legend.gif"
															alt="Best fit, great fit"
															title="Best matches are listed first">
													</div>

													<div id="tableunder_1"
														style="position: absolute; z-index: 2; right: 2px; top: 0; text-align: right; width: 419px; height: 26px">
														<div
															style="position: absolute; right: 0; width: 0px; height: 26px"></div>
													</div>
												</div>
												<table class="careers" cellspacing="0" border="0"
													style="margin: 0; padding: 0">
													<tbody>
														<tr>
															<th><span class="screenreader">Career name</span><img
																src="./resources/assets/emoticons/blank.gif" alt=" "></th>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2141.01">Fuel
																	Cell Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/17-2112.01"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2112.01">Human
																	Factors Engineers &amp; Ergonomists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/very_strong.gif"
																	alt=" " width="14" height="14" title="Best fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-2099.01">Remote
																	Sensing Scientists &amp; Technologists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-1011.00">Animal
																	Scientists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-3091.02">Archeologists</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-2011.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-2011.02">Cytotechnologists</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-2041.02"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-2041.02">Environmental
																	Restoration Planners</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/19-2043.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-2043.00">Hydrologists</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/17-2199.06">Microsystems
																	Engineers</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-1029.02">Molecular
																	&amp; Cellular Biologists</a></td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-1024.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-1024.00">Prosthodontists</a>
															</td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-1069.10"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-1069.10">Radiologists</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-1013.00">Soil
																	&amp; Plant Scientists</a></td>
														</tr>
														<tr>
															<td class="title even"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px; text-indent: 0">
																	<div
																		style="position: relative; overflow: hidden; width: 14px; height: 11px; margin: 2px auto 0">
																		<a target="_ipocc"
																			href="https://www.mynextmove.org/profile/bright/29-1131.00"
																			class="popup_bright"><img
																			src="./resources/assets/emoticons/table_markers.png"
																			style="position: relative; left: -14px; top: -11px"
																			alt="Bright Outlook"
																			title="New job opportunities likely in the future. Click to learn more!"></a>
																	</div>
																</div> <a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/29-1131.00">Veterinarians</a>
															</td>
														</tr>
														<tr>
															<td class="title odd"><span
																style="margin-right: 10px"><img
																	src="./resources/assets/emoticons/strong.gif" alt=" "
																	width="14" height="14" title="Great fit"
																	style="vertical-align: bottom"></span>
																<div
																	style="display: inline-block; width: 16px; margin-right: 10px"></div>
																<a target="_ipocc"
																href="https://www.mynextmove.org/profile/summary/19-1023.00">Zoologists
																	&amp; Wildlife Biologists</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div style="margin: 10px 0; font-size: 11px">
											<div style="float: right; padding-left: 32px">
												<a
													href="https://www.mynextmove.org/explore/ip-print?t=o&amp;z=5&amp;i=210804000000"
													id="printbtn" target="_ipprint"><img
													src="./resources/assets/emoticons/print_small.gif"
													alt="Print" width="64" height="22"></a>
											</div>
											Click on a career to learn what they do.
										</div>
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
														src="https://www.mynextmove.org/image/ip/tab4.gif"
														alt="Job Zones" onmouseover="hover(&#39;tab4&#39;, true)"
														onmouseout="hover(&#39;tab4&#39;, false)"></a></td>
												<td style="height: 44px; padding: 0"><img
													src="./resources/assets/emoticons/tab5_sel.gif"
													alt="Careers"></td>
											</tr>
										</tbody>
									</table></td>
								<td
									style="width: 115px; height: 44px; background-image: url(https://www.mynextmove.org/image/ip/main_botright.gif)">
									<img alt="Next"
									src="./resources/assets/emoticons/next_career.gif"
									id="nextbtn3rdPage">
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
	function back() {
		var x = ${param.name};
		window.location = "jobZone2?name="+x;
	}
	</script>
</body>
</html>