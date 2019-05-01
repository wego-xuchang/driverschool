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
	<script src="${pageContext.request.contextPath}/js/registerPage.js" type="text/javascript"></script>
</head>
<body onload="createCode(4);createCode_trainer(4);">
<!-- 导入头部文件 -->
<%@ include file="/jsp/headerSub.jsp" %>


<!--窗体部分 开始-->

<br>
<br>
<div class="uk-container">
	<ul class="uk-subnav uk-subnav-pill" uk-switcher="animation: uk-animation-slide-left-medium, uk-animation-slide-right-medium">
		<li><a href="#">学员注册</a></li>
		<li><a href="#">教练注册</a></li>
	</ul>

	<ul class="uk-switcher uk-margin">
		<li>
			<!--学员注册 开始-->
			<div class="uk-container">
				<center><h3>学员注册</h3></center>

				<form id="trainee" name="trainee" method="post" action="${pageContext.request.contextPath}/TraineeServlet?method=traineeRegister" onsubmit="return trainee_check_form();" enctype="application/x-www-form-urlencoded">
					<div class="" uk-grid>
						<div class="uk-width-1-4@s">
							<div class="uk-align-right">用户名：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="text"  required name="trainee_name" id="trainee_name" onblur="check_trainee_name();">
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainee_span1"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">密  码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="password" required onblur="check_trainee_password();" name="password" id="trainee_password">
						</div>
						<div class="uk-width-1-4@s">
							<span></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">确认密码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="password" required onblur="check_trainee_Repassword();" id="trainee_repassword">
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainee_span2"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">邮箱：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="email" required name="email" id="traineeEmail" onblur="check_trainee_email();">
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainee_span3"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">手机号码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="number" required name="telephone" id="traineeTelephone" onblur="check_trainee_phone();">
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainee_span4"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">注册类型：</div>
						</div>
						<div class="uk-width-1-2@s" name="traineeType" id="traineeType">

							<div class="uk-form-controls">
								<select class="uk-select" >
									<option>我是学员</option>
									<option>我是教练</option>
									<option>我是管理员</option>
								</select>
							</div>
						</div>
						<div class="uk-width-1-4@s">
							<span></span>
						</div><br>
						<div class="uk-width-1-4@s">
							<div class="uk-align-right">验证码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input uk-width-1-2@s" required type="text" id="yancode" onblur="validate();">
							<a class="uk-button uk-button-danger" onclick="createCode(4);"  ><span id="checkCode"></span></a>
							<span id="trainee_span5"></span>
						</div>
						<br>


					</div>

					


					<br>
					<center>
						<button type="submit" class="uk-button uk-button-danger" >注册</button>
						<button type="reset" class="uk-button uk-button-secondary">取消</button>
					</center>



				</form><br><br>

			</div>
			<!--学员注册 结束-->
		</li>
		<li>
			<!--教练注册 开始-->
			<div class="uk-container">
				<center><h3>教练注册</h3></center>

				<form method="post" name="trainer" action="${pageContext.request.contextPath}/TrainerServlet?method=trainerRegister" id="trainer" onsubmit="return trainer_check_form();" enctype="application/x-www-form-urlencoded">
					<div class="" uk-grid>
						<div class="uk-width-1-4@s">
							<div class="uk-align-right">用户名：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="text" required name="trainer_name" id="trainer_name" onblur="check_trainer_name();">
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainer_span1"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">密  码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="password" required name="password" id="trainer_password" onblur="trainer_check_password();">
						</div>
						<div class="uk-width-1-4@s">
							<span></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">确认密码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="password" required id="trainer_repassword" onblur="check_trainer_Repassword();" >
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainer_span2"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">邮箱：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="text" required name="email" id="trainerEmail" onblur="check_trainer_email();">
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainer_span3"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">手机号码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input" type="number" required name="telephone" id="trainerTelephone" onblur="check_trainer_phone();">
						</div>
						<div class="uk-width-1-4@s">
							<span id="trainer_span4"></span>
						</div>

						<div class="uk-width-1-4@s">
							<div class="uk-align-right">注册类型：</div>
						</div>
						<div class="uk-width-1-2@s">

							<div class="uk-form-controls">
								<select class="uk-select"  name="trainerType" id="trainerType">
									<option>我是学员</option>
									<option>我是教练</option>
									<option>我是管理员</option>
								</select>
							</div>
						</div>
						<div class="uk-width-1-4@s">
							<span></span>
						</div><br>
						<div class="uk-width-1-4@s">
							<div class="uk-align-right">验证码：</div>
						</div>
						<div class="uk-width-1-2@s">
							<input class="uk-input uk-width-1-2@s" required type="text" id="yancode_trainer" onblur="validate_trainer();">
							<a class="uk-button uk-button-danger" onclick="createCode_trainer(4);"><span id="checkCode_trainer"></span></a>
							<span id="trainer_span5"></span>
						</div>
						<div class="uk-width-1-4@s">
							
						</div><br>


					</div>

					
					<br><br>
					<center>
						<button type="submit" class="uk-button uk-button-danger" >注册</button>
						<button type="reset" class="uk-button uk-button-secondary">取消</button>
					</center>



				</form><br><br>





			</div>
			<!--教练注册 结束-->
		</li>
	</ul>
</div>





<!--窗体部分 结束-->
<br>

<!-- 导入尾部文件 -->
	<%@ include file="/jsp/footer.jsp" %>
</body>
</html>