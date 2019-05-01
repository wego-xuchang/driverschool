<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- 导入头部文件 -->
<%@ include file="/jsp/header.jsp" %>
<br>

<!--浏览视频信息 开始--><br>
<div class="uk-container">
	<div class="uk-flex uk-flex-center"><!--学车资讯-->
		<div>
			<ul uk-tab>
				<li><a href="#">文明驾车</a></li>
				<li><a href="#">科目二</a></li>
				<li><a href="#">科目三</a></li>
			</ul>

			<ul class="uk-switcher uk-margin">
				<li><!--文明驾车-->
				<c:if test="${empty page.list}">
							<h3>无视频信息，请添加试题！</h3>
				</c:if>
				<c:if test="${not empty page.list}">
							<div class="uk-flex uk-flex-center">
									<div class="uk-child-width-1-4@m" uk-grid uk-scrollspy="cls: uk-animation-fade; target: > div > .uk-card; delay: 300; repeat: true">
										
										<c:forEach items="${page.list}" var="p">
												<div>
													<div class="uk-card uk-card-default uk-card-hover uk-card-body">
														<div class="uk-text-center">
															<div class="uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
																<a href="${pageContext.request.contextPath}/VideoServlet?method=findVideoById&video_id=${p.video_id}">
																	<img class="uk-width-1-1" src="${pageContext.request.contextPath}/${p.video_img }" alt="">
																</a>
																
															</div>
														</div>
														<p>作者：${p.video_author }</p>
														<p >类型：${p.video_type }</p>
														<p><a href="${pageContext.request.contextPath}/VideoServlet?method=findVideoById&video_id=${p.video_id}">
																${p.video_title }
														</a></p>
													</div>
												</div>
										
										</c:forEach>
										
										
										
										
										
										
										
									</div>
								</div>


						<br><br>
						<%@ include file="/jsp/pageFile.jsp" %>
						<br><br>


				</c:if>
				
					
				</li>
				<li> <!--科目二-->
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
				<li> <!--科目三-->
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




<!--浏览视频信息 结束-->

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