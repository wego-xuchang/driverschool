<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<!--顶部导航栏 开始-->

	<div id="transparent-dropbar" class="uk-section-secondary uk-preserve-color">

		<div class="tm-header">
			<div uk-sticky="show-on-up: true; animation: uk-animation-slide-top; sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; cls-inactive: uk-navbar-transparent uk-light; top: 200; bottom: #transparent-dropbar">
				<nav class="uk-navbar-container uk-visible@s" uk-scrollspy="target: > div; delay: 500">
					<div class="uk-container uk-container-expand">
						<div uk-navbar="dropbar: true; dropbar-anchor: !.uk-navbar-container">
							<div class="nav-overlay uk-navbar-left  ">

								<a class="uk-navbar-item uk-logo uk-visible@m" href="#">
									<img src="${pageContext.request.contextPath}/images/logo.png" width="80" height="80" alt="">
								</a>

								<ul class="uk-navbar-nav" >
									<!--首页-->
									<li ><a href="${pageContext.request.contextPath}/jsp/index.jsp">首页</a></li>
									<li>
										<a href="${pageContext.request.contextPath}/jsp/testPage.jsp" target="_blank">考试</a>
										
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/VideoServlet?method=selectUserVideo&num=1" target="_blank">视频</a>
										<div class="uk-navbar-dropdown">
											<ul class="uk-nav uk-navbar-dropdown-nav">
												<li class="uk-active"><a href="#">视频专区</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon: video-camera"></span>文明驾车视频</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon: video-camera"></span>科目二</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon: video-camera"></span>科目三</a></li>
											</ul>
										</div>
									</li>
									<li><!--车-->
										<a href="${pageContext.request.contextPath}/jsp/carPage.jsp" target="_blank">车</a>
										<div class="uk-navbar-dropdown uk-navbar-dropdown-width-2">
											<div class="uk-navbar-dropdown-grid uk-child-width-1-2" uk-grid>
												<div>
													<ul class="uk-nav uk-navbar-dropdown-nav">
														<li class="uk-active"><a href="#">新车</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:   thumbnails"></span>官方推荐</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:   thumbnails"></span>家庭出行</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:   thumbnails"></span>商务车</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:   thumbnails"></span>业务车</a></li>
													</ul>
												</div>
												<div>
													<ul class="uk-nav uk-navbar-dropdown-nav">
														<li class="uk-active"><a href="#">二手车</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span>二手车平台</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span>二手车</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span>二手车</a></li>
														<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span>二手车</a></li>
													</ul>
												</div>
											</div>
										</div>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/jsp/newsPage.jsp" target="_blank">资讯</a>
										<div class="uk-navbar-dropdown">
											<ul class="uk-nav uk-navbar-dropdown-nav">
												<li class="uk-active"><a href="#">资讯</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span>热点新闻</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span>学车须知</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span> 交规考试</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span> 驾驶常识</a></li>
												<li><a href="#"><span class="uk-margin-small-right" uk-icon="icon:  list"></span> 法律法规</a></li>
											</ul>
										</div>
									</li>
									
									<li><a href="./aboutUsPage.jsp" target="_blank">关于我们</a></li>

								</ul>

							</div>

							<div class="nav-overlay uk-nav-center">


							</div>
							<div class="nav-overlay uk-navbar-right ">
								<ul class="uk-navbar-nav" >
									<!--<li><a href=""><span class="uk-badge">登录</span></a></li>
									<li><a href=""><span uk-icon="users" uk-tooltip="title: 注册账号; pos: bottom-right"></span></a></li>-->
									<li><a ><span uk-toggle="target: #offcanvas-flip" uk-icon="user" uk-tooltip="title: 个人中心; pos: bottom-right"></span></a></li>
									<a class="uk-navbar-toggle uk-visible@s" uk-tooltip="title: 搜索; pos: bottom-right" uk-search-icon uk-toggle="target: .nav-overlay; animation: uk-animation-fade" ></a>
								</ul>

							</div>

							<div class="nav-overlay uk-navbar-left uk-flex-1" hidden>

								<div class="uk-navbar-item uk-width-expand">
									<form class="uk-search uk-search-navbar uk-width-1-1">
										<input class="uk-search-input" type="search" placeholder="Search..." autofocus>
									</form>
								</div>

								<a class="uk-navbar-toggle" uk-close uk-toggle="target: .nav-overlay; animation: uk-animation-fade" href="#"></a>

							</div>

						</div>
					</div>



				</nav>


				<nav class="uk-navbar uk-navbar-container uk-margin uk-hidden@s">
					<div class="uk-navbar-left uk-container-expand uk-offcanvas-content" uk-navbar="dropbar: true; dropbar-anchor: !.uk-navbar-container">
						&nbsp;&nbsp;<span uk-navbar-toggle-icon uk-toggle="target: #offcanvas-push"></span> <span class="uk-margin-small-left" uk-toggle="target: #offcanvas-push">菜单 </span>
						<div id="offcanvas-push" uk-offcanvas="mode: push; overlay: true">
							<div class="uk-offcanvas-bar">


								<div class="uk-width-1-2@s uk-width-2-5@m">
									<ul class="uk-nav-default uk-nav-parent-icon" uk-nav>
										<li class="uk-active"><a href="${pageContext.request.contextPath}/jsp/index.jsp" target="_blank">主页</a></li>
										<li class="uk-parent">
											<a href="${pageContext.request.contextPath}/jsp/questionPage.jsp" target="_blank">考试</a>
											<ul class="uk-nav-sub">
												<li><a href="#">科目一</a></li>
												<li><a href="#">科目四</a></li>

											</ul>
										</li>
										<li class="uk-parent">
											<a href="${pageContext.request.contextPath}/jsp/carPage.jsp" target="_blank">车</a>
											<ul class="uk-nav-sub">
												<li><a href="#">新车</a></li>
												<li><a href="#">二手车</a></li>
											</ul>
										</li>
										<li class="uk-parent">
											<a href="${pageContext.request.contextPath}/jsp/newsPage.jsp" target="_blank">资讯</a>
											<ul class="uk-nav-sub">
												<li><a href="#">热点新闻</a></li>
												<li><a href="#">学车须知</a></li>
												<li><a href="#">交规考试</a></li>
												<li><a href="#">驾驶常识</a></li>
												<li><a href="#">法律法规</a></li>
											</ul>
										</li>
										<li class="uk-parent">
											<a href="${pageContext.request.contextPath}/jsp/videoPage.jsp" target="_blank">视频</a>
											<ul class="uk-nav-sub">
												<li><a href="#">文明驾车视频</a></li>
												<li><a href="#">科目二</a></li>
												<li><a href="#">科目三</a></li>
											</ul>
										</li>
										<li class="uk-parent">
											<a href="${pageContext.request.contextPath}/jsp/aboutUsPage.jsp" target="_blank">关于我们</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>


	</div>
<!--用户弹出-->
<div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
	<div class="uk-offcanvas-bar">

		<button class="uk-offcanvas-close" type="button" uk-close></button>
			<br>
		<div class="uk-grid">
		<%-- <c:choose>
			<c:when test="${ loginTrainee == null }">
			loginTrainee为空
		</c:when>
		<c:when test="${not empty loginTrainer }">
			loginTrainer为空
		</c:when>
		<c:when test="${not empty loginTrainer1 }">
			loginTrainer为空
		</c:when>
		</c:choose> --%>
		<c:if test="${empty  loginTrainee }">
				<h3>欢迎进入驾校系统</h3>
			<div class="uk-width-1-1">
			</div>
			<div class="uk-width-1-2">
				<a href="${pageContext.request.contextPath}/TraineeServlet?method=loginUI" ><span class="uk-label-success">请登录</span></a>
				<a href="${pageContext.request.contextPath}/TraineeServlet?method=registerUI" target="_blank"><span class="uk-label-danger" >注册</span></a><br>
			</div>
		</c:if>	
			<c:if test="${not empty loginTrainee }">
			<div class="uk-width-1-1">
				<img src="${pageContext.request.contextPath}/images/man.png" width="50" height="50">
				<a href="${pageContext.request.contextPath}/PageSettingServlet?method=traineeUI&trainee_id=${loginTrainee.trainee_id}"><span class="uk-text-middle">欢迎${loginTrainee.trainee_name }</span></a>
				<a href="${pageContext.request.contextPath}/TraineeServlet?method=logOut"><span class="uk-label-warning" >退出</span></a>
			</div>
			<div class="uk-width-1-1">
				<h5>上次登录时间：2018.01.01</h5>
	
				<p>登录地区：广东广州</p>
				<p>消息提醒</p>
			</div>
			</c:if>
			
			<c:if test="${not empty loginTrainer1 }">
			<div class="uk-width-1-1">
				<img src="${pageContext.request.contextPath}/images/man.png" width="50" height="50">
				<a href="${pageContext.request.contextPath}/TrainerPensonServlet?method=findTrainerById&trainer_id=${loginTrainer1.trainer_id}"><span class="uk-text-middle">欢迎${loginTrainer1.trainer_name }教练</span></a>
				<a href="${pageContext.request.contextPath}/TrainerServlet?method=logOut"><span class="uk-label-warning" >退出</span></a>
			</div>
			<div class="uk-width-1-1">
				<h5>上次登录时间：2018.01.01</h5>
	
				<p>登录地区：广东广州</p>
				<p>消息提醒</p>
			</div>
			</c:if>
			<c:if test="${not empty loginTrainer2 }">
			<div class="uk-width-1-1">
				<img src="${pageContext.request.contextPath}/images/man.png" width="50" height="50">
				<a href="${pageContext.request.contextPath}/TrainerPensonServlet?method=findTrainerById&trainer_id=${loginTrainer2.trainer_id}"><span class="uk-text-middle">欢迎${loginTrainer2.trainer_name }教练</span></a>
				<a href="${pageContext.request.contextPath}/TrainerServlet?method=logOut"><span class="uk-label-warning" >退出</span></a>
			</div>
			<div class="uk-width-1-1">
				<h5>上次登录时间：2018.01.01</h5>
	
				<p>登录地区：广东广州</p>
				<p>消息提醒</p>
			</div>
			</c:if>
			
		</div>

	</div>
</div>
<!--用户弹出 结束-->

<!--顶部导航栏 结束-->
</body>
</html>