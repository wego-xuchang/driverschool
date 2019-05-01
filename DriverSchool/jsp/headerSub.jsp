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
	<!--导航栏-->
<div class="tm-header">
	<div uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; bottom: #sticky-dropdown">
		<nav class="uk-navbar-container">
			<div class="uk-container">
				<div uk-navbar>
					<div class="uk-navbar-left">
						<a class="uk-navbar-item uk-logo" href="#"><img src="${pageContext.request.contextPath}/images/logo.png" width="80" height="80" ></a>
						<ul class="uk-navbar-nav">
							<li class="uk-active">
								<a href="${pageContext.request.contextPath}/jsp/index.jsp">首页</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/TrainerServlet?method=loginUI">我是教练</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/TraineeServlet?method=loginUI">我是学员</a>
							</li>
							<li class="uk-parent">
								<a href="${pageContext.request.contextPath}/AdminServlet?method=loginUI">管理员</a>
							</li>
						</ul>

					</div>
					<div class="uk-navbar-right">
						<ul class="uk-navbar-nav">
							<li class="uk-active">
								<a href="${pageContext.request.contextPath}/TraineeServlet?method=loginUI">登录</a>
								<div uk-dropdown="animation: uk-animation-slide-top-small; duration: 1000">
									<ul class="uk-nav uk-dropdown-nav">
										<li><a href="#"><span uk-icon="twitter"></span> QQ登录</a></li>
										<li ><a href="#"><span uk-icon="whatsapp"></span> 微信登录</a></li>
										<li><a href="#"><span uk-icon="github"></span> Github</a></li>
										<li><a href="#"><span uk-icon="user"></span> 账号登录</a></li>
									</ul>
								</div>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/TraineeServlet?method=registerUI">注册</a>
							</li>

						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>
</div>
<!--导航栏 结束-->
</body>
</html>