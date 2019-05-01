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
								<li >
									<a href="${pageContext.request.contextPath}/admin/adminIndex.jsp">首页</a>
								</li>
								<li >
									<a  href="${pageContext.request.contextPath}/admin/adminUser.jsp" >用户</a>
								</li>
								<li >
									<a href="${pageContext.request.contextPath}/AdminQuestionServlet?method=selectAllQuestion&num=1" >试题</a>
								</li>
								<li >
									<a href="${pageContext.request.contextPath}/AdminVideoServlet?method=selectAllVideo&num=1" >视频</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/admin/adminNews.jsp">资讯</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/admin/adminCar.jsp" >购车</a>
								</li>

								<li>
									<a href="${pageContext.request.contextPath}/admin/adminSetting.jsp" >设置</a>
								</li>
							</ul>

						</div>


						<div class="nav-overlay uk-navbar-right ">
							<ul class="uk-navbar-nav" >
								<li><a ><span class="uk-badge" uk-toggle="target: #offcanvas-flip">Hi! ${loginAdmin1.email }${loginAdmin2.telephone }</span></a></li>
								<a class="uk-navbar-toggle uk-visible@s" uk-tooltip="title: 搜索; pos: bottom-right" uk-search-icon uk-toggle="target: .nav-overlay; animation: uk-animation-fade" href="#"></a>
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
					<span uk-navbar-toggle-icon uk-toggle="target: #offcanvas-push"></span> <span class="uk-margin-small-left" uk-toggle="target: #offcanvas-push">Menu</span>

					<div id="offcanvas-push" uk-offcanvas="mode: push; overlay: true">
						<div class="uk-offcanvas-bar">


							<div class="uk-width-1-2@s uk-width-2-5@m">
								<ul class="uk-nav-default uk-nav-parent-icon" uk-nav>
									<li class="uk-active"><a href="./adminIndex.jsp" >首页</a></li>
									<li class="uk-parent">
										<a href="./adminUser.jsp" target="_blank">用户</a>
									</li>
									<li class="uk-parent">
										<a href="./adminQuestion.jsp" target="_blank">试题</a>
									</li>
									<li class="uk-parent">
										<a href="./adminVideo.jsp" target="_blank">视频</a>
									</li>
									<li class="uk-parent">
										<a href="./adminNews.jsp" target="_blank">资讯</a>
									</li>
									<li class="uk-parent">
										<a href="./adminCar.jsp" target="_blank">购车</a>
									</li>
									<li class="uk-parent">
										<a href="./adminSetting.jsp" target="_blank">设置</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>


</div><br>

<div class="uk-offcanvas-content">

	<div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
		<div class="uk-offcanvas-bar">

			<button class="uk-offcanvas-close" type="button" uk-close></button>

			<h5>上次登录时间：2018.01.01</h5>
			<p>${loginAdmin1.email }${loginAdmin2.telephone }<a href="${pageContext.request.contextPath}/AdminServlet?method=logOut"><span class="uk-label-warning" >退出</span></a></p>
			<p>管理员登录地区：广东广州</p>
			<p>新消息提醒</p>
			<p>管理员主页</p>

		</div>
	</div>

</div>
<!--顶部导航栏 结束-->




</body>
</html>