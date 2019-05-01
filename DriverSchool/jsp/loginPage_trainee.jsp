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
	<script src="${pageContext.request.contextPath}/js/loginPage_trainee.js" type="text/javascript"></script>
</head>
<body onload="createCode(4);createCode1(4);">
<!-- 导入头部文件 -->
<%@ include file="/jsp/headerSub.jsp" %>

${msg }
<!--窗体部分 开始-->
<div class="uk-inline uk-margin">

	<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">

	<div class="uk-position-small uk-position-center uk-overlay uk-overlay-default">
		<div class="">
			<center><h3>学员登录</h3></center>
			<form class="account" id="form_login" action="${pageContext.request.contextPath}/TraineeServlet?method=traineeTelephone" method="post" >

				<div class="uk-margin">
					<div class="uk-inline ">
						<span class="uk-form-icon" uk-icon="icon: user" ></span>
						<input class="uk-input loginuser" required type="text" name="telephone" placeholder="请输入手机号" id="longin_name_admin" onblur="check_login_admin();" >
					</div>
					<span id="login_span1_admin"></span>
				</div>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon " uk-icon="icon: lock"></span>
						<input class="uk-input" type="password" required name="password" placeholder="请输入密码"  id="login_password_admin" onblur="check_password_admin();">
					</div>
					<span id="login_span2_admin"></span>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<!--<span class="uk-form-icon " uk-icon="icon: lock"></span>--><!--uk-form-icon-flip右边图标-->
						<input class="uk-input uk-width-1-3" type="text" required id="yancode" onblur="validate();">
						<a class="uk-button uk-button-danger uk-button-small" onclick="createCode(4);"><span id="checkCode"></span></a>
						<span class="uk-width-1-3" id="login_span3"></span>
					</div>
				</div>
				<left>
				<input class="uk-width-3-4 uk-button uk-button-primary uk-margin-small-bottom" type="submit" value="登录">
				</left><br>
		</form>
		<form class="account" action="${pageContext.request.contextPath}/TraineeServlet?method=traineeEmail" method="post" id="" hidden>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: user"></span>
						<input class="uk-input" type="text" required placeholder="请输入邮箱" name="email" id="longin_name_admin1" onblur="check_login_admin1();">

					</div>
					<span id="login_span1_admin1"></span>
				</div>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon " uk-icon="icon: lock"></span><!--uk-form-icon-flip右边图标-->
						<input class="uk-input" type="password" required placeholder="请输入密码"  name="password"   id="login_password_admin1" onblur="check_password_admin1();">
					</div>
					<span id="login_span2_admin1"></span>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<!--<span class="uk-form-icon " uk-icon="icon: lock"></span>--><!--uk-form-icon-flip右边图标-->
						<input class="uk-input uk-width-1-3" required id="yancode1" onblur="validate1();" type="text"  >
						<a class="uk-button uk-button-danger uk-button-small" onclick="createCode1(4);"><span id="checkCode1"></span></a>
						<span class="uk-width-1-3" id="spanEmail3" ></span>
					</div>
				</div>
				<left>
					<input class="uk-width-3-4 uk-button uk-button-primary uk-margin-small-bottom" type="submit" value="登录">

				</left><br>

			</form>
				<a  uk-toggle="target: .account"><span uk-icon="github" uk-tooltip="切换登录"></span> </a>
				<a href="" uk-toggle="target: #qq"><span uk-icon="twitter" uk-tooltip="微信扫码"></span> </a>
				<a href="" uk-toggle="target: #wechat"><span uk-icon="whatsapp" uk-tooltip="QQ快捷"></span> </a>
				


				<div id="qq" uk-modal>
					<div class="uk-modal-dialog uk-modal-body">
						<button class="uk-modal-close-default" type="button" uk-close></button>
						<center>
							<h2 class="uk-modal-title">QQ登录</h2>

							<img data-src="${pageContext.request.contextPath}/images/top01.png" width="" height="" alt="" uk-img>
						</center>
					</div>
				</div>
				<div id="wechat" uk-modal>
					<div class="uk-modal-dialog uk-modal-body">
						<button class="uk-modal-close-default" type="button" uk-close></button>
						<center>
							<h2 class="uk-modal-title">微信登录</h2>

							<img data-src="${pageContext.request.contextPath}/images/top01.png" width="" height="" alt="" uk-img>
						</center>
					</div>
				</div>
		
			
		</div>
		<!-- <hr > -->
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