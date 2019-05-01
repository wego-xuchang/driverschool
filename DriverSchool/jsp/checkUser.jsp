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

<div class="uk-flex uk-flex-center">
	<h1>验证账号</h1>
</div><br>
<div class="uk-container">
	<div class="uk-grid">
		<div class="uk-width-1-4@s">
			<div class="uk-align-right">
				<a>
					<sapn class="uk-label" uk-toggle="target: .validate_traiee; animation:  uk-animation-slide-left, uk-animation-slide-bottom">切换验证方式</sapn>
				</a>

			</div><br>
		</div>
		<div class="validate_traiee uk-width-1-1" >
			<div class="uk-grid">
				<div class="uk-width-1-4@s">
					<div class="uk-align-right">邮箱：</div>
				</div>
				<div class="uk-width-1-2@s">
					<input class="uk-input" type="email" required name="email" id="traineeEmail" onblur="check_trainee_email();">
				</div>
				<div class="uk-width-1-4@s">
					<span id="trainee_span3"></span>
				</div>
				<div class="uk-width-1-4@s"><br>
					<div class="uk-align-right">邮箱验证：</div>
				</div>
				<div class="uk-width-1-2@s"><br>
					<input class="uk-input uk-width-1-2@s" type="text" >
					<button class="uk-button uk-button-danger">获取验证码</button>
				</div>
				<div class="uk-width-auto@s">
					<span></span>
				</div><br>
			</div>
		</div>
		<div class="validate_traiee uk-width-1-1" hidden >
			<div class="uk-grid">
				<div class="uk-width-1-4@s">
					<div class="uk-align-right">手机号码：</div>
				</div>
				<div class="uk-width-1-2@s">
					<input class="uk-input" type="email" required name="email" id="" onblur="check_trainee_email();">
				</div>
				<div class="uk-width-1-4@s">
					<span id="trainee_span"></span>
				</div>
				<div class="uk-width-1-4@s"><br>
					<div class="uk-align-right">手机验证：</div>
				</div>
				<div class="uk-width-1-2@s"><br>
					<input class="uk-input uk-width-1-2@s" type="text" >
					<button class="uk-button uk-button-danger">获取验证码</button>
				</div>
				<div class="uk-width-auto@s">
					<span></span>
				</div><br>
			</div>
		</div>
		<!--<div class="uk-width-1-2@s">
			<center>
				<input class="uk-checkbox" type="checkbox">接受用户协议
			</center>
		</div>-->
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