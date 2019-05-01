<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<br>
<div class="uk-flex uk-flex-center"><!--学车理论考试-->
	<div class="uk-text-center" uk-grid>
		<div class="uk-width-1-2 uk-width-auto" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
			<div class="uk-card uk-card-default uk-card-body">
				<h4>科目一理论考试</h4><br>
				<div class="uk-overflow-hidden">
					<img src="${pageContext.request.contextPath}/images/nav14.png"  uk-scrollspy="cls: uk-animation-kenburns; repeat: true" width="200">
				</div><br>
				<div class="uk-text-center" uk-grid>

					<div class="uk-width-1-2 uk-width-auto">
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">顺序练习</a></h3>
							<h3><a href="">随机练习</a></h3>
						</div>
					</div>
					<div class="uk-width-1-2 uk-width-auto" >
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">专项练习</a></h3>
							<h3><a href="">错题回顾</a></h3>
						</div>
					</div>
				</div><br>
				<a href="${pageContext.request.contextPath}/QuestionServlet" target="_blank">
				<button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">开始答题</button>
				</a>
			</div>
		</div>
		<div class="uk-width-1-2 uk-width-auto" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
			<div class="uk-card uk-card-default uk-card-body">
				<h4>科目四理论考试</h4><br>
				<div class="uk-overflow-hidden">
					<img src="${pageContext.request.contextPath}/images/nav14.png" width="200" uk-scrollspy="cls: uk-animation-kenburns; repeat: true">
				</div><br>
				<div class="uk-text-center" uk-grid>

					<div class="uk-width-1-2 uk-width-auto">
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">顺序练习</a></h3>
							<h3><a href="">随机练习</a></h3>
						</div>
					</div>
					<div class="uk-width-1-2 uk-width-auto" >
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">专项练习</a></h3>
							<h3><a href="">错题回顾</a></h3>
						</div>
					</div>
				</div><br>
				<a href="${pageContext.request.contextPath}/QuestionServlet" target="_blank">
				<button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">开始答题</button>
				</a>
			</div>
		</div>
	</div>

</div><br>

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