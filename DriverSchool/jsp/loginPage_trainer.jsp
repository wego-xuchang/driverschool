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
	<script src="${pageContext.request.contextPath}/js/loginPage_trainer.js" type="text/javascript"></script>
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
			<center><h3>教练登录</h3></center>
			<form class="account" id="form_login" onsubmit="return check_form_phone();" action="${pageContext.request.contextPath}/TrainerServlet?method=trainerTelephone" method="post" >

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: user"></span>
						<input class="uk-input" type="text" name="telephone" required placeholder="请输入手机号码" id="longin_name" onblur="check_login();">

					</div>
					<span id="login_span1"></span>
				</div>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon " uk-icon="icon: lock"></span><!--uk-form-icon-flip右边图标-->
						<input class="uk-input" type="password" name="password" required placeholder="请输入密码" id="login_password" onblur="check_password();">
					</div>
					<span id="login_span2"></span>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<!--<span class="uk-form-icon " uk-icon="icon: lock"></span>--><!--uk-form-icon-flip右边图标-->
						<input class="uk-input uk-width-1-3" type="text" id="yancode" required onblur="validate();">
						<a class="uk-button uk-button-danger uk-button-small" onclick="createCode(4);"><span id="checkCode"></span></a>
						<span class="uk-width-1-3"  id="login_span3"></span>
					</div>
				</div>
				
				<left>
				<input class="uk-width-3-4 uk-button uk-button-primary uk-margin-small-bottom" type="submit" value="登录">
				</left><br>
			</form>
			<form class="account" action="${pageContext.request.contextPath}/TrainerServlet?method=trainerEmail" onsubmit="return check_form_email();" method="post" id="trainerEmailFrom" hidden>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: user"></span>
						<input class="uk-input" type="text" required placeholder="请输入邮箱" name="email" id="trainerEmail1"  onblur="trainerEmail();">

					</div>
					<span id="spanEmail1" ></span>
				</div>

				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon " uk-icon="icon: lock"></span><!--uk-form-icon-flip右边图标-->
						<input class="uk-input" type="password" required placeholder="请输入密码"  name="password" id="login_password1" onblur="check_password1();">
					</div>
					<span id="spanEmail2"></span>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<!--<span class="uk-form-icon " uk-icon="icon: lock"></span>--><!--uk-form-icon-flip右边图标-->
						<input class="uk-input uk-width-1-3" required type="text" id="yancode1" required onblur="validate1();" >
						<a class="uk-button uk-button-danger uk-button-small" onclick="createCode1(4);"><span id="checkCode1"></span></a>
						<span class="uk-width-1-3" id="spanEmail3"></span>
					</div>
				</div>
				<left>
					<input class="uk-width-3-4 uk-button uk-button-primary uk-margin-small-bottom" type="submit" value="登录">

				</left><br>

			</form>
			<a href="#" uk-toggle="target: .account"><span uk-icon="github" uk-tooltip="切换登录"></span> </a>
				<a href="" uk-toggle="target: #qq"><span uk-icon="twitter"></span> </a>
				<a href="" uk-toggle="target: #wechat"><span uk-icon="whatsapp"></span> </a>
				


				<div id="qq" uk-modal>
					<div class="uk-modal-dialog uk-modal-body">
						<button class="uk-modal-close-default" type="button" uk-close></button>
						<center>
							<h2 class="uk-modal-title">QQ登录</h2>

							<img data-src="${pageContext.request.contextPath}/images/a.png" width="" height="" alt="" uk-img>
						</center>
					</div>
				</div>
				<div id="wechat" uk-modal>
					<div class="uk-modal-dialog uk-modal-body">
						<button class="uk-modal-close-default" type="button" uk-close></button>
						<center>
							<h2 class="uk-modal-title">微信登录</h2>

							<img data-src="${pageContext.request.contextPath}/images/a.png" width="" height="" alt="" uk-img>
						</center>
					</div>
				</div>
				



			
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