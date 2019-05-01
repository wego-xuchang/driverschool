<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css" />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/backtop.css" />
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>
<!-- 导入头部文件 -->
<%@ include file="/jsp/header.jsp" %>

<!--图片轮播  开始-->
<div uk-slideshow="animation: push; autoplay:true;" >

	<!-- <div class="uk-position-relative uk-visible-toggle uk-light uk-height-medium"> -->


<ul class="uk-slideshow-items " >
	<li>
		<img src="${pageContext.request.contextPath}/images/nav14.png" alt="" uk-cover>
	</li>
	<li>
		<img src="${pageContext.request.contextPath}/images/nav15.png"  alt="" uk-cover>
	</li>
	<li>
		<img src="${pageContext.request.contextPath}/images/nav16.png"  alt="" uk-cover>
	</li>
</ul>

<!-- <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="" uk-slidenav-previous uk-slideshow-item="previous"></a>
<a class="uk-position-center-right uk-position-small uk-hidden-hover" href="" uk-slidenav-next uk-slideshow-item="next"></a> -->

	<!-- </div> -->


</div><br>
<!--图片轮播  结束-->


	<!--主体部分  开始-->
<div class="uk-flex uk-flex-center">
	<h1>学车理论考试</h1>
</div><br>
<div class="uk-flex uk-flex-center"><!--学车理论考试-->
	<div class="uk-text-center" uk-grid>
		<div class="uk-width-1-2 uk-width-auto" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
			<div class="uk-card uk-card-default uk-card-body">
				<h4>科目一理论考试</h4><br>
				<div class="uk-overflow-hidden">
					<img src="${pageContext.request.contextPath}/images/nav14.png"  uk-scrollspy="cls: uk-animation-kenburns; repeat: true" width="200">
				</div><br>
				<div class="uk-text-center" uk-grid>

					<div class="uk-width-1-2 uk-width-auto">
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">顺序练习</a></h3>
							<h3><a href="">随机练习</a></h3>
						</div>
					</div>
					<div class="uk-width-1-2 uk-width-auto" >
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">专项练习</a></h3>
							<h3><a href="">错题回顾</a></h3>
						</div>
					</div>
				</div><br>
				<a href="${pageContext.request.contextPath}/QuestionServlet" target="_blank">
				<button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">开始答题</button>
				</a>
			</div>
		</div>
		<div class="uk-width-1-2 uk-width-auto" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
			<div class="uk-card uk-card-default uk-card-body">
				<h4>科目四理论考试</h4><br>
				<div class="uk-overflow-hidden">
					<img src="${pageContext.request.contextPath}/images/nav14.png" width="200" uk-scrollspy="cls: uk-animation-kenburns; repeat: true">
				</div><br>
				<div class="uk-text-center" uk-grid>

					<div class="uk-width-1-2 uk-width-auto">
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">顺序练习</a></h3>
							<h3><a href="">随机练习</a></h3>
						</div>
					</div>
					<div class="uk-width-1-2 uk-width-auto" >
						<div class="uk-card uk-card-default uk-card-body">
							<h3><a href="">专项练习</a></h3>
							<h3><a href="">错题回顾</a></h3>
						</div>
					</div>
				</div><br>
				<a href="${pageContext.request.contextPath}/QuestionServlet" target="_blank">
				<button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">开始答题</button>
				</a>
			</div>
		</div>
	</div>

</div><br>
<hr class="uk-divider-icon">

<!--学车资讯 开始-->
<div class="uk-container">
<div class="uk-flex uk-flex-center">
	<h1>学车资讯</h1>
</div><br>

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
				<div class="uk-flex uk-flex-center">
					<div class="uk-child-width-1-4@s" uk-grid uk-scrollspy="cls: uk-animation-fade; target: > div > .uk-card; delay: 300; repeat: true">
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
			<li> <!--学车须知-->
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
			交规考试秘笈
			</li>
			<li> 
			驾驶常识
			</li>
			<li>
			法律法规
			</li>
		</ul>
		</div>


</div>

	<center><div class="uk-width-1-2">
		<a href="#" target="_blank">
			<button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">查看更多</button>
		</a>
	</div></center>
</div>

<!--学车资讯 结束-->
<br><br>

<!--学车视频 开始-->

<div class="uk-flex uk-flex-center">
	<h1>学车视频</h1>
</div><br>
<div class="uk-container" >
	<div class="uk-text-center uk-flex-center" uk-grid>
		<div class="uk-width-3-4">
			<div class="" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
				<video controls playsinline uk-video>
					<source src="${pageContext.request.contextPath}/videoes/bg.mp4" type="video/mp4">
					<source src="${pageContext.request.contextPath}/videoes/bg.mp4" type="video/ogg">
				</video>

			</div>
		</div>
		<div class="uk-width-1-4 uk-visible@m">
			<div class="uk-card uk-card-default uk-card-body" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
				<ul class="uk-list uk-list-bullet">
					<li>推荐视频标题1</li>
					<li>推荐视频标题 2</li>
					<li>推荐视频标题3</li>
					<li>推荐视频标题4</li>
					<li>推荐视频标题5</li>
					<li>推荐视频标题6</li>
					<li>推荐视频标题7</li>
					<li>推荐视频标题8</li>
					<li>推荐视频标题9</li>
					<li>推荐视频标题10</li>
					<li>推荐视频标题11</li>
					<li>推荐视频标题12</li>
					<li>推荐视频标题13</li>
				</ul>

			</div>
		</div>
	</div><br>

	<!--视频推荐 开始-->
	<div class="uk-position-relative uk-visible-toggle uk-light" uk-slider>

		<ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-3@m uk-grid">
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
					<div class="uk-position-center uk-panel"><h1>推荐视频标题</h1></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
					<div class="uk-position-center uk-panel"><h3>推荐视频标题</h3></div>
				</div>
			</li>

		</ul>

		<a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
		<a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

	</div><br>
	<!--视频推荐 结束-->
</div>
<div class="uk-container">
	<center><div class="uk-width-1-2">
		<a href="#" target="_blank">
			<button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">查看更多</button>
		</a>
	</div></center>
</div><br>
<!--学车视频 结束-->


<!--优秀学员 开始-->
<div class="uk-container">
<div class="uk-flex uk-flex-center">
	<h1>优秀学员</h1>
</div><br>
<div class="uk-flex uk-flex-center">
	<div class="uk-text-center" uk-grid>
		<div class="uk-width-1-3">
			<div class="uk-card uk-card-default uk-card-body">
				<div class="uk-text-center">
					<div class="uk-inline-clip uk-transition-toggle" tabindex="0" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
						<img src="${pageContext.request.contextPath}/images/img1.jpg" alt="">
						<div class="uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default">
							<p class="uk-h4 uk-margin-remove">学员驾校</p>
						</div>
					</div>
					<p class="uk-margin-small-top">学员图片资源</p>
				</div>

			</div>
		</div>
		<div class="uk-width-1-3">
			<div class="uk-card uk-card-default uk-card-body">

				<div class="uk-text-center">
					<div class="uk-inline-clip uk-transition-toggle" tabindex="0" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
						<img src="${pageContext.request.contextPath}/images/img1.jpg" alt="">
						<div class="uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default">
							<p class="uk-h4 uk-margin-remove">学员驾校</p>
						</div>
					</div>
					<p class="uk-margin-small-top">学员图片资源</p>
				</div>
			</div>
		</div>
		<div class="uk-width-1-3">
			<div class="uk-card uk-card-default uk-card-body">
				<div class="uk-text-center">
					<div class="uk-inline-clip uk-transition-toggle" tabindex="0" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
						<img src="${pageContext.request.contextPath}/images/img1.jpg" alt="">
						<div class="uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default">
							<p class="uk-h4 uk-margin-remove">学员驾校</p>
						</div>
					</div>
					<p class="uk-margin-small-top">学员图片资源</p>
				</div>
			</div>
		</div>
	</div>


</div><br>
</div>

<div class="uk-container">
<div class="uk-flex uk-flex-center">
	<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
		<div class="uk-card-media-left uk-cover-container" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
			<img src="${pageContext.request.contextPath}/images/nav15.png" alt="" uk-cover>
			<canvas width="600" height="400"></canvas>
		</div>
		<div>
			<div class="uk-card-body">
				<h3 class="uk-card-title">驾校图片</h3>
				<p>金统领驾校永远本着服务第一的原则，使学车的朋友高兴而来满意而归。为了保证教学质量，我校对教练员采取评优、考核，学员给予鉴定等多种考核制度，不断优胜劣汰，培养了一支思想作风好，教学质量高，纪律严明的教练员队伍。 
驾校有严格的管理制度 </p>
			</div>
		</div>
	</div>


	<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
		<div class="uk-flex-last@s uk-card-media-right uk-cover-container" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
			<img src="${pageContext.request.contextPath}/images/nav15.png" alt="" uk-cover>
			<canvas width="600" height="400"></canvas>
		</div>
		<div>
			<div class="uk-card-body">
				<h3 class="uk-card-title">驾校图片</h3>
				<p>金统领驾校永远本着服务第一的原则，使学车的朋友高兴而来满意而归。为了保证教学质量，我校对教练员采取评优、考核，学员给予鉴定等多种考核制度，不断优胜劣汰，培养了一支思想作风好，教学质量高，纪律严明的教练员队伍。 
驾校有严格的管理制度</p>
			</div>
		</div>
	</div>
</div>

<div class="uk-flex uk-flex-center">
	<div class="uk-card uk-card-default uk-card-body">
		<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
			<div class="uk-flex-last@s uk-card-media-right uk-cover-container" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
				<img src="${pageContext.request.contextPath}/images/nav14.png" alt="" uk-cover>
				<canvas width="600" height="400"></canvas>
			</div>
			<div>
				<div class="uk-card-body">
					<h3 class="uk-card-title">介绍</h3>
					<p>总之，驾校是具有雄厚实力的资深驾校。规范化注重业绩，师资好教程细是该校的特点。 　　
本驾校是北京市公安交通管理局车辆管理最先资质认证合格的驾校之一，驾校自成立之日起就十分重视教练队伍整体素质的提升，经过近十年的运作，目前教练员素质高、业务精、服务态度好，管理严格，是令人信服的精干队伍，在社会上享有相当高的声誉。 经过长期的摸索已初步形成了自己独特的管理教学模式。使学员在掌握练车技术方面领会的快，驾驶技术易于掌握，桩考、路考合格率较高，同时驾校教学方式适合各界人士学车，对此得到了社会上广泛的认可。</p>
				</div>
			</div>
		</div>
	</div>

</div>
</div>
	<br>

<!--优秀学员 结束-->


<!--主体部分  结束-->


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