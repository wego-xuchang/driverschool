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

<%-- <c:forEach items="${school}" var="s">
				${s.school_name }
</c:forEach> --%>

<div class="uk-container">
	<div uk-filter="target: .js-filter">
		<h3>选择驾校</h3>
		<ul class="uk-subnav uk-subnav-pill">
			<li class="uk-active" uk-filter-control><a href="#">所有</a></li>
			<c:forEach items="${school}" var="s">
				<li uk-filter-control="[data-school='${s.school_id }']"><a href="#">${s.school_name }</a></li>
			</c:forEach>
			<li  uk-filter-control="[data-school='']"><a href="#">其他</a></li>
		</ul>
		<h3>选择教练</h3>
		<ul class="js-filter uk-child-width-1-2 uk-child-width-1-4@m uk-text-center" uk-grid>
			
			<c:forEach items="${trainer}" var="tr">
				<li data-school="${tr.school_id}">
					<div class="uk-card uk-card-default uk-card-body">
						<div class="uk-text-center">
								<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
									<img  src="${pageContext.request.contextPath}/${tr.trainer_img}" height="100"  width="100" alt="">
																
								</div>
								</div>
									<p>教练：${tr.trainer_name}</p>
									<p >类型：${tr.trainer_type}</p>
									<p>电话：${tr.telephone}|邮箱：${tr.email}</p>
									<c:if test="${not empty tr.school_id}">
										<form action="${pageContext.request.contextPath}/PageSettingServlet?method=selectInTrainerAndSchool" method="post">
											<input class="uk-input uk-form-width-medium uk-form-small" name="trainee_id" value="${trainee.trainee_id}" type="text"  hidden>
											 <input class="uk-input uk-form-width-medium uk-form-small" name="school_id" value="${tr.school_id}" type="text"  hidden>
											  <input class="uk-input uk-form-width-medium uk-form-small" name="trainer_id" value="${tr.trainer_id}" type="text"  hidden>
											<center>
												<input class="uk-button uk-button-default uk-button-small" type="submit" value="选择" />
		    									<button class="uk-button uk-button-primary uk-button-small">查看</button>
											</center>
										</form>
									</c:if>
							</div>
				</li>
			</c:forEach>
		</ul>

	</div>

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