<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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



<div class="uk-container">
<c:forEach items="${school}" var="s">
	<article class="uk-comment uk-comment-primary uk-visible-toggle">
		<header class="uk-comment-header uk-position-relative">
			<div class="uk-grid-medium uk-flex-middle" uk-grid>
				<div class="uk-width-auto">
					<img class="uk-comment-avatar" src="images/nav14.png" width="80" height="80" alt="">
				</div>
				<div class="uk-width-expand">
					<h4 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#">驾校名称:${s.school_name }</a></h4>
					<p class="uk-comment-meta uk-margin-remove-top"><a class="uk-link-reset" href="#">地区:${s.position }</a></p>
				</div>
			</div>
			<div class="uk-position-top-right uk-position-small uk-hidden-hover"><a class="uk-link-muted" href="#">详细信息</a></div>
		</header>
		<div class="uk-comment-body">
			<p>驾校简介:${s.introduce} </p>
			<form action="${pageContext.request.contextPath}/TrainerPensonServlet?method=updateSchoolInTrainer" method="post">
					<input class="uk-input uk-form-width-medium uk-form-small" name="trainer_id" value="${trainer.trainer_id}" type="text"  hidden>
					 <input class="uk-input uk-form-width-medium uk-form-small" name="school_id" value="${s.school_id}" type="text"  hidden>
					<center>
						<input class="uk-button uk-button-default uk-button-small" type="submit" value="选择" />
									<button class="uk-button uk-button-primary uk-button-small">查看</button>
					</center>
				</form>
			<%-- <c:if test="${not empty trainer.school_id}">
					
				</c:if> --%>
			
		</div>
	</article><br>
</c:forEach>
	
	
	
</div>

<br><br>
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