<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>驾校系统</title>
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.css" /> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css" />
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit-rtl.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit-rtl.min.css" /> --%>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/backtop.css" />
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>
<!-- 导入头部文件 -->
<%@ include file="/admin/header.jsp" %>

<!--管理用户 开始-->
<div class="uk-container">
	<div class="uk-grid">
		<div class="uk-width-1-6">
			<ul class="uk-nav-primary uk-nav-parent-icon" uk-nav>
				<li class="uk-active"><a href="#">用户概述</a></li>
				<li><a href="${pageContext.request.contextPath}/AdminUserServlet?method=selectAllTrainer&num=1">教练信息</a></li>
				<li><a href="${pageContext.request.contextPath}/AdminUserServlet?method=selectAllTrainee&num=1">学员信息</a></li>

			</ul>
		</div>
		<div class="uk-width-5-6"><br>
			<!--用户概述-->
			<div class="uk-container">
				<img src="${pageContext.request.contextPath}/images/nav19.png">
				<div class="uk-child-width-1-2@m uk-grid-match" uk-grid>
					<div>
						<div class="uk-card uk-card-default uk-card-body" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
							<h3 class="uk-card-title">学员统计</h3>
							<p> </p>
						</div>
					</div>
					<div>
						<div class="uk-card uk-card-default uk-card-body" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
							<h3 class="uk-card-title">教练统计</h3>
							<p></p>
						</div>
					</div>
				</div>

				
			</div><br>
			


		</div>
	</div>

</div>




<!--管理用户 结束-->

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