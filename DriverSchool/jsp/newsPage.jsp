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

<!--资讯 开始-->
<!--
<div class="uk-background-fixed uk-background-center-center uk-height-small uk-width-1-1" style="background-image: url(images/nav19.png);"></div>
-->
<img src="${pageContext.request.contextPath}/images/nav19.png" ><br><br>

<div class="uk-container">
	<div class="uk-flex uk-flex-center"><!--学车资讯-->
		<div>
			<ul uk-tab>
				<li><a href="#">热点新闻</a></li>
				<li><a href="#">学车须知</a></li>
				<li><a href="#">交规考试秘笈</a></li>
				<li><a href="#">驾驶常识</a></li>
				<li><a href="#">法律法规</a></li>
			</ul>

			<ul class="uk-switcher uk-margin">
				<li><!--热点新闻-->
					<div class="uk-grid">
						<div class="uk-width-3-4" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">

							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
								</div>
								<div class="uk-width-3-5">
									<h3>热点标题</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
								<div class="uk-width-1-1"><br>
									<div class="uk-align-right">

										<span uk-icon="comment"></span>500人评论&nbsp;&nbsp;
										<span uk-icon="heart"></span>100万点赞
									</div>
									<div class="uk-align-right">
										<a class="uk-button uk-button-text" href="#">浏览更多</a>
									</div>


								</div>
								<hr>
							</div>
							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
								</div>
								<div class="uk-width-3-5">
									<h3>热点标题</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
								<div class="uk-width-1-1"><br>
									<div class="uk-align-right">

										<span uk-icon="comment"></span>500人评论&nbsp;&nbsp;
										<span uk-icon="heart"></span>100万点赞
									</div>
									<div class="uk-align-right">
										<a class="uk-button uk-button-text" href="#">浏览更多</a>
									</div>


								</div>
							</div>
							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
								</div>
								<div class="uk-width-3-5">
									<h3>热点标题</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
								<div class="uk-width-1-1"><br>
									<div class="uk-align-right">

										<span uk-icon="comment"></span>500人评论&nbsp;&nbsp;
										<span uk-icon="heart"></span>100万点赞
									</div>
									<div class="uk-align-right">
										<a class="uk-button uk-button-text" href="#">浏览更多</a>
									</div>


								</div>
							</div>

							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
								</div>
								<div class="uk-width-3-5">
									<h3>热点标题</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
								<div class="uk-width-1-1"><br>
									<div class="uk-align-right">

										<span uk-icon="comment"></span>500人评论&nbsp;&nbsp;
										<span uk-icon="heart"></span>100万点赞
									</div>
									<div class="uk-align-right">
										<a class="uk-button uk-button-text" href="#">浏览更多</a>
									</div>


								</div>
							</div>

							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
								</div>
								<div class="uk-width-3-5">
									<h3>热点标题</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
								<div class="uk-width-1-1"><br>
									<div class="uk-align-right">

										<span uk-icon="comment"></span>500人评论&nbsp;&nbsp;
										<span uk-icon="heart"></span>100万点赞
									</div>
									<div class="uk-align-right">
										<a class="uk-button uk-button-text" href="#">浏览更多</a>
									</div>


								</div>
							</div>

							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
								</div>
								<div class="uk-width-3-5">
									<h3>热点标题</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
								<div class="uk-width-1-1"><br>
									<div class="uk-align-right">

										<span uk-icon="comment"></span>500人评论&nbsp;&nbsp;
										<span uk-icon="heart"></span>100万点赞
									</div>
									<div class="uk-align-right">
										<a class="uk-button uk-button-text" href="#">浏览更多</a>
									</div>


								</div>
							</div>

							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
								</div>
								<div class="uk-width-3-5">
									<h3>热点标题</h3>
									<p>华软地铁将于2018年底开通，方便出行</p>
								</div>
								<div class="uk-width-1-1"><br>
									<div class="uk-align-right">

										<span uk-icon="comment"></span>500人评论&nbsp;&nbsp;
										<span uk-icon="heart"></span>100万点赞
									</div>
									<div class="uk-align-right">
										<a class="uk-button uk-button-text" href="#">浏览更多</a>
									</div>


								</div>
							</div>


						</div>
						<div class="uk-width-1-4">
							<div class="uk-grid">
								<div class="uk-width-1-1">
									<div class="uk-card uk-card-default uk-card-body" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
										<ul class="uk-list uk-list-bullet">
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
											<li>资讯标题1</li>
										</ul>

									</div>
								</div>
							</div>

						</div>

					</div>


				</li>
				<li><!--学车须知-->

					<div>
						<ul class="uk-grid-small uk-child-width-1-2 uk-child-width-1-4@s uk-text-center" uk-sortable="handle: .uk-sortable-handle" uk-grid>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
							<li>
								<div class="uk-card uk-card-default uk-card-body">
									<div class="uk-text-center uk-sortable-handle uk-margin-small-right">
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
							</li>
						</ul>
					</div>

				</li>
				<li><!--交规考试秘笈-->

				</li>
				<li>
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
				<li>

				</li>

			</ul>
		</div>


	</div>


</div>


<!--资讯 结束-->


<hr class="uk-divider-icon">

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