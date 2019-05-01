<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>驾校系统</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css" />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/backtop.css" />
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>

<!-- 导入头部文件 -->
<%@ include file="/jsp/header.jsp" %>

<!--video 开始--><br>

<c:if test="${empty video }">
		<div class="uk-container">

<center>

	<video controls playsinline uk-video width="800px" height="600px">
		<source src="https://quirksmode.org/html5/videos/big_buck_bunny.mp4" type="video/mp4">
		<source src="https://quirksmode.org/html5/videos/big_buck_bunny.ogv" type="video/ogg">
	</video>
</center>
</div>
</c:if>
<c:if test="${not empty video }" >
		<div class="uk-container">

<center>

	<video controls playsinline uk-video width="800px" height="600px">
		<source src="${video.video_url }" type="video/mp4">
		<!-- <source src="https://quirksmode.org/html5/videos/big_buck_bunny.ogv" type="video/ogg">
	</video> -->
</center>
</div>
</c:if>

<!--video 结束-->

<div class="uk-container">




</div>

<!--视频推荐 开始-->
<div class="uk-container">
	<h3>视频推荐</h3>

	<!--视频推荐 开始-->
	<div class="uk-position-relative uk-visible-toggle uk-light" uk-slider>

		<ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-3@m uk-grid">
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
					<div class="uk-position-center uk-panel"><h1>推荐视频标题</h1></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>

		</ul>

		<a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
		<a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

	</div><br>
	<!--视频推荐 结束-->
</div>
<!--视频推荐 结束-->


<!--返回顶部 开始-->
<div id="jquery-script-menu">
	<div class="jquery-script-center">
		<div class="jquery-script-clear"></div>
	</div>
</div>
<div id="elevator_item"> <a id="elevator" onclick="return false;" title="Back To Top"></a> <a class="qr"></a>
	<div class="qr-popup"> <a class="code-link"> <img class="code" src="${pageContext.request.contextPath}/images/top01.png" width="150" height="150"/> </a> <span>扫描二维码</span>
		<div class="arr"></div>
	</div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/top.js"></script>

<!--返回顶部 结束-->

<!-- 导入尾部文件 -->
	<%@ include file="/jsp/footer.jsp" %>
</body>
</html>