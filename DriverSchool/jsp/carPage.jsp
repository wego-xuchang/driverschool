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
<br>
<!--车分类 开始-->
<div class="uk-container">
	<div  class="uk-grid">
	    <div class="uk-width-1-6">
			<center><h3>品牌：</h3></center>
		</div>
	    <div class="uk-width-5-6">
					<a href="#"><span class="uk-label uk-label-success">品牌1</span></a>
					<a href="#"><span class="uk-label uk-label-success">品牌2</span></a>
					<a href="#"><span class="uk-label uk-label-success">品牌3</span></a>
					<a href="#"><span class="uk-label uk-label-success">品牌4</span></a>
		</div>
	</div>
	</div>





</div>
<br>
<div class="uk-container">
	<div  class="uk-grid">
		<div class="uk-width-1-6">
			<center><h3>类型：</h3></center>
		</div>
		<div class="uk-width-5-6">
				<a href="#"><span class="uk-label uk-label-warning">类型1</span></a>
				<a href="#"><span class="uk-label uk-label-warning">类型1</span></a>
				<a href="#"><span class="uk-label uk-label-warning">类型1</span></a>
				<a href="#"><span class="uk-label uk-label-warning">类型1</span></a>
		</div>
	</div>
</div>





</div>


<!--车分类 结束-->
<!--浏览车信息 开始-->
<div class="uk-container">
	<div class="uk-flex uk-flex-center"><!--学车资讯-->
		<div>
			<ul uk-tab>
				<li><a href="#">推荐</a></li>
				<li><a href="#">大众车</a></li>
				<li><a href="#">二手车</a></li>
			</ul>

			<ul class="uk-switcher uk-margin">
				<li><!--推荐-->
					<div class="uk-flex uk-flex-center">
						<div class="uk-child-width-1-4@m" uk-grid uk-scrollspy="cls: uk-animation-fade; target: > div > .uk-card; delay: 300; repeat: true">
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light uk-animation-shake uk-animation-reverse" tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li> <!--大众车-->
					<div class="uk-flex uk-flex-center">
						<div class="uk-child-width-1-4@m" uk-grid uk-scrollspy="cls: uk-animation-fade; target: > div > .uk-card; delay: 300; repeat: true">
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light uk-animation-shake uk-animation-reverse" tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li> <!--二手车-->
					<div class="uk-flex uk-flex-center">
						<div class="uk-child-width-1-4@m" uk-grid uk-scrollspy="cls: uk-animation-fade; target: > div > .uk-card; delay: 300; repeat: true">
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
							<div>
								<div class="uk-card uk-card-default uk-card-hover uk-card-body">
									<div class="uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light uk-animation-shake uk-animation-reverse" tabindex="0">
											<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
											<div class="uk-position-center">
												<span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
											</div>
										</div>
									</div>
									<h3 class="uk-card-title">华软地铁开通</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
							</div>
						</div>
					</div>
				</li>

			</ul>
		</div>


	</div>


</div>




<!--浏览车信息 结束-->

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