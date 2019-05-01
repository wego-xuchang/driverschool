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
	<script src="${pageContext.request.contextPath}/js/loginPage_admin.js" type="text/javascript"></script>
</head>
<body onload="createCode_admin(4);createCode_admin1(4);">
<!-- 导入头部文件 -->
<%@ include file="/jsp/headerSub.jsp" %>

${msg }
<!--窗体部分 开始-->
<div class="uk-inline uk-margin">

	<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">

	<div class="uk-position-small uk-position-center uk-overlay uk-overlay-default">
		<div class="">
			<center><h3>管理员登录</h3></center>
			<form class="account" id="form_login_admin" action="${pageContext.request.contextPath}/AdminServlet?method=adminEmail" method="post">

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: user"></span>
						<input class="uk-input" type="text" name="email"placeholder="请输入邮箱" required id="longin_name_admin" onblur="check_login_admin();">

					</div>
					<span id="login_span1_admin"></span>
				</div>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon " uk-icon="icon: lock"></span><!--uk-form-icon-flip右边图标-->
						<input class="uk-input" type="password"name="password" placeholder="请输入密码" required id="login_password_admin" onblur="check_password_admin();">
					</div>
					<span id="login_span2_admin"></span>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<!--<span class="uk-form-icon " uk-icon="icon: lock"></span>--><!--uk-form-icon-flip右边图标-->
						<input class="uk-input uk-width-1-3" type="text" id="yancode_admin" required onblur="validate_admin();">
						<a class="uk-button uk-button-danger uk-button-small" onclick="createCode_admin(4);"><span id="checkCode_admin"></span></a>
						<span class="uk-width-1-3"  id="login_span3_admin"></span>
					</div>
				</div>
				<left>
				<input class="uk-width-3-4 uk-button uk-button-primary uk-margin-small-bottom" type="submit" value="登录">
				</left><br>
				</form>
				<form class="account" id="form_login_admin1" action="${pageContext.request.contextPath}/AdminServlet?method=adminTelephone" method="post" id="" hidden>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: user"></span>
						<input class="uk-input" type="text" placeholder="请输入手机号码" required id="longin_name_admin1" onblur="check_login_admin1();checkAdminTelephone();" name="telephone" >

					</div>
					<span id="login_span1_admin1"></span>
				</div>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon " uk-icon="icon: lock"></span><!--uk-form-icon-flip右边图标-->
						<input class="uk-input" type="password" placeholder="请输入密码" required id="login_password_admin1" onblur="check_password_admin1();"  name="password">
					</div>
					<span id="login_span2_admin1"></span>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<!--<span class="uk-form-icon " uk-icon="icon: lock"></span>--><!--uk-form-icon-flip右边图标-->
						<input class="uk-input uk-width-1-3" type="text" id="yancode_admin1" required onblur="validate_admin1();">
						<a class="uk-button uk-button-danger uk-button-small" onclick="createCode_admin1(4);"><span id="checkCode_admin1"></span></a>
						<span class="uk-width-1-3"  id="login_span3_admin1"></span>
					</div>
				</div>
				<left>
					<input class="uk-width-3-4 uk-button uk-button-primary uk-margin-small-bottom" type="submit" value="登录">

				</left><br>

			</form>

				<a  uk-toggle="target: .account"><span uk-icon="whatsapp" uk-tooltip="切换登录"></span> </a>
				


				



			
		</div>
		
		<div class="">
			<a href="">忘记账号</a>|
			<a href="">忘记密码</a>|
			<a href="">激活账号</a>
		</div>
	</div>
</div>



<!--窗体部分 结束-->


<!-- 导入尾部文件 -->
	<%@ include file="/jsp/footer.jsp" %>
	

</body>
</html>