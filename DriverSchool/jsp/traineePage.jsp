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

<!--个人资料管理 开始-->

<!--消息弹出-->
<c:if test="${empty trainee.id_card_img}">
	<div class="uk-container ">
	<div class="uk-alert-danger" uk-alert>
		<a class="uk-alert-close" uk-close></a>
		<center><p>驾校提醒你，你的账号未实名</p></center>
	</div>
</div>
<div class="uk-column-1-2"></div>
</c:if>

<div class="uk-container">
<!--<div class="uk-flex uk-flex-center"></div>-->
 <form method="post"   action="${pageContext.request.contextPath}/TraineeServlet?method=updateTraineeDetail"   id="" enctype="multipart/form-data"> 
	<article class="uk-comment uk-comment-primary">
		<header class="uk-comment-header uk-grid-medium uk-flex-middle" uk-grid>
			<div class="uk-width-auto">
					<c:if test="${empty trainee.trainee_img }">
						<img class="uk-comment-avatar uk-border-circle" src="${pageContext.request.contextPath}/images/man.png" width="120px" height="120px" alt="">
					</c:if>
					<c:if test="${not empty trainee.trainee_img }">
						<img class="uk-comment-avatar uk-border-circle" src="${pageContext.request.contextPath}/${trainee.trainee_img}" width="120px" height="120px" alt="">
						<input class="uk-input uk-form-small" type="text" name="trainee_img" value="${trainee.trainee_img}" hidden>
					</c:if>
				
			</div>
			<div class="uk-width-expand">
				<h3 class="uk-comment-title uk-margin-remove">${trainee.trainee_name}</h3>
				<ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
					<li><a href="#">${trainee.registrationDate }</a></li>
					<c:if test="${empty trainee.school_id }">
						<li><a href="${pageContext.request.contextPath}/PageSettingServlet?method=select&trainee_id=${trainee.trainee_id}"><span uk-icon="icon: plus"></span>请报名</a></li>
					</c:if>
					<c:if test="${not empty trainee.school_id }">
						<li>驾校：<a href="#">${trainee.school_id }</a></li>
					</c:if>
					<c:if test="${empty trainee.tuition }">
						<li><a href="${pageContext.request.contextPath}/PageSettingServlet?method=pay&trainee_id=${trainee.trainee_id}&school_id=${utils.school_id}&trainer_id=${utils.trainer_id}">未缴费，请报名缴费！</a></li>
					</c:if>
					<c:if test="${not empty trainee.tuition }">
						<li>报名费：${trainee.tuition }</li>
					</c:if>
				</ul>
				<h5>
					<font class="toggle_sex uk-align-left" >性別：${trainee.sex }</font>
							<div class="toggle_sex uk-align-left" hidden>
									<input class="uk-input uk-form-small" type="text" name="sex" value="${trainee.sex }" >
							</div>
							<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon: file-edit" uk-toggle="target: .toggle_sex;animation: uk-animation-fade"></span>
				</h5>
				<h5>教练：${trainee.trainer_id }</h5>
			</div>
		</header>
		<div class="uk-comment-body">

			<!--学车流程 开始-->
			<h3>学车流程</h3>
			<div class="uk-position-relative uk-visible-toggle uk-light" uk-slider>

				<ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-3@m uk-grid">
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
							<div class="uk-position-center uk-panel"><h1>开始报名</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
							<div class="uk-position-center uk-panel"><h1>选择驾校</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
							<div class="uk-position-center uk-panel"><h1>选择教练</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="images/nav14.png" alt="">
							<div class="uk-position-center uk-panel"><h1>科目一刷题训练</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
							<div class="uk-position-center uk-panel"><h1>科目二</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
							<div class="uk-position-center uk-panel"><h1>科目三</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
							<div class="uk-position-center uk-panel"><h1>科目四</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav15.png" alt="">
							<div class="uk-position-center uk-panel"><h1>拿证</h1></div>
						</div>
					</li>
					<li>
						<div class="uk-panel">
							<img src="${pageContext.request.contextPath}/images/nav16.png" alt="">
							<div class="uk-position-center uk-panel"><h1>驾校毕业</h1></div>
						</div>
					</li>

				</ul>

				<a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
				<a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

			</div>
			<!--学车流程 结束-->

<!--个人资料 开始-->

<div class="uk-container"><br>
	<div class="uk-text-center" uk-grid>
		<div class="uk-width-1-6">
			<div class="uk-background-muted ">
				<ul class="uk-nav uk-nav-default " uk-switcher="connect: #component-nav1; animation: uk-animation-fade; toggle: > :not(.uk-nav-header)">
					<li><a href="#">我的资料</a></li>
					<li><a href="#">学习计划</a></li>
					<li><a href="#">购车订单</a></li>
				</ul>
			</div>
		</div>
		<div class="uk-width-5-6">
			<div >
				<ul id="component-nav1" class="uk-switcher">
					<li>
<!--我的资料 开始-->
<br><br>
<%-- <form method="post"   action="${pageContext.request.contextPath}/TraineeServlet?method=updateTraineeDetail"   id=""> --%>
					
							<div class="uk-grid">
								<div class="uk-width-1-2">
									<div class="uk-grid">
										<div class="uk-width-1-4">
											用户名：
										</div>
										<div class="uk-width-3-4 uk-visible-toggle">
											<font class="toggle_trainee uk-align-left" >${trainee.trainee_name}</font>
											<div class="toggle_trainee uk-align-left" hidden>
												<input class="uk-input uk-form-small" type="text" name="trainee_name" value="${trainee.trainee_name}" >
												<input class="uk-input uk-form-small" type="text" name="trainee_id" value="${trainee.trainee_id}" hidden>
											</div>
											<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon: file-edit" uk-toggle="target: .toggle_trainee;animation: uk-animation-fade"></span>
										</div>
									</div>
								</div>
								<div class="uk-width-1-2">
									<div class="uk-grid">
										<div class="uk-width-1-4">
											地区：
										</div>
										<div class="uk-width-3-4 uk-visible-toggle">
											<font class="toggle_position uk-align-left" >${trainee.position}</font>
											<div class="toggle_position uk-align-left" hidden>
												<input class="uk-input uk-form-small" type="text" name="position"  value="${trainee.position}"  >
											</div>
											<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:location" uk-toggle="target: .toggle_position;animation: uk-animation-fade"></span>
										</div>
									</div>
								</div>
							</div>

							<div class="uk-grid">
								<div class="uk-width-1-2">
									<div class="uk-grid">
										<div class="uk-width-1-4">
											手机号码：
										</div>
										<div class="uk-width-3-4 uk-visible-toggle">
											<font class="toggle_phone uk-align-left" >${trainee.telephone}</font>
											<div class="toggle_phone uk-align-left" hidden>
												<input class="uk-input uk-form-small" type="text" name="telephone" value="${trainee.telephone}" >
											</div>
											<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:phone" uk-toggle="target: .toggle_phone;animation: uk-animation-fade"></span>
										</div>
									</div>
								</div>
								<div class="uk-width-1-2">
									<div class="uk-grid">
										<div class="uk-width-1-4">
											邮箱：
										</div>
										<div class="uk-width-3-4 uk-visible-toggle">
											<font class="toggle_email uk-align-left" >${trainee.email}</font>
											<div class="toggle_email uk-align-left" hidden>
												<input class="uk-input uk-form-small" type="text" name="email" value="${trainee.email}" >
											</div>
											<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon: sign-in" uk-toggle="target: .toggle_email;animation: uk-animation-fade"></span>
										</div>
									</div>
								</div>
							</div>

							<div class="uk-grid">
								<div class="uk-width-1-2">
									<div class="uk-grid">
										<div class="uk-width-1-4">
											驾校名称：
										</div>
										<div class="uk-width-3-4 uk-visible-toggle">
											<font class="toggle_school uk-align-left" >${trainee.school_id }</font>
											<div class="toggle_school uk-align-left" hidden>
												<input class="uk-input uk-form-small" type="text" value="${trainee.school_id }" >
											</div>
											<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:more" uk-toggle="target: .toggle_school;animation: uk-animation-fade"></span>
										</div>
									</div>
								</div>
								<div class="uk-width-1-2">
									<div class="uk-grid">
										<div class="uk-width-1-4">
											报名日期：
										</div>
										<div class="uk-width-3-4 uk-visible-toggle">
											<font class="toggle_date uk-align-left" >${trainee.registrationDate}</font>
											<div class="toggle_date uk-align-left" hidden>
												<input class="uk-input uk-form-small" type="text"  name="registrationDate"  value="${trainee.registrationDate}" ><!-- name="registrationDate"  name="graduationTime"  -->
												<input class="uk-input uk-form-small" type="text"  value="${trainee.graduationTime}" hidden>
											</div>
											<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:question" uk-toggle="target: .toggle_date;animation: uk-animation-fade"></span>
										</div>
									</div>
								</div>
							</div>

							<div class="uk-grid">
								<div class="uk-width-1-1@s">
									<div class="js-upload uk-placeholder uk-text-center">

										<span class="uk-text-middle">
											<c:choose>
											<c:when test="${trainee.state ==1 }">
											你的账号未实名
											</c:when>
											<c:when test="${trainee.state ==2 }">
											你的账号已实名
											</c:when>
											</c:choose>
										</span>
										<span uk-icon="icon: cloud-upload" uk-tooltip="title: 点击进入实名; pos: right" uk-toggle="target: #toggle-animation; animation: uk-animation-fade"></span>
									</div>

									<progress id="js-progressbar" class="uk-progress" value="0" max="100" ></progress>
								</div>
								<div id="toggle-animation" class="uk-card uk-card-default uk-card-body uk-margin-small" hidden>
									<div class="uk-grid">
									    <div class="uk-width-1-4">
												<div class="">
													<div class="uk-text-center">
														<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
															
															<c:if test="${empty trainee.id_card_img}">
															<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
																<input type="file"  name="id_card_img" >
															</c:if>
															<c:if test="${not empty trainee.id_card_img}">
																<input type="file" name="id_card_img"  value="${trainee.id_card_img}"  hidden multiple>
																<img src="${pageContext.request.contextPath}/${ trainee.id_card_img}" alt="">
															<%-- <input class="uk-input uk-form-small" type="text" name="id_card_img" value="${ trainee.id_card_img}"  hidden> --%>
															</c:if>
															
															<div class="uk-position-center">
																<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
															</div>
														</div>
													</div>
													<p>身份证正面</p>
												</div>
										</div>
									    <div class="uk-width-1-4">
												<div class="">
													<div class="uk-text-center">
														<div class="uk-text-center">
															<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
																<%-- <input type="file" id="IDcard2" multiple>
																<img src="${pageContext.request.contextPath}/${ trainee.id_card_img}" alt=""> --%>
																<c:if test="${empty trainee.id_card_img}">
																<input type="file" id="IDcard1"  >提交
															</c:if>
															<c:if test="${not empty trainee.id_card_img}">
																<input type="file"  value="${ trainee.id_card_img}"  hidden multiple>
																<img src="${pageContext.request.contextPath}/${ trainee.id_card_img}" alt="">
															<%-- <input class="uk-input uk-form-small" type="text" name="id_card_img" value="${ trainee.id_card_img}"  hidden> --%>
															</c:if>
																<div class="uk-position-center">
																	<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
																</div>
															</div>
														</div>
													</div>
													<p>身份证反面</p>

												</div>
										</div>
										<div class="uk-width-1-2">
											<div class="uk-grid">
												<div class="uk-width-1-4">
													名字：
												</div>
												<div class="uk-width-3-4 uk-visible-toggle">
													<font class="toggle_IDCardName uk-align-left" >${trainee.trainee_name }</font>
													<div class="toggle_IDCardName uk-align-left" hidden>
														<input class="uk-input uk-form-small"  value="${trainee.trainee_name }" type="text"  >
													</div>
													<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:question" uk-toggle="target: .toggle_IDCardName;animation: uk-animation-fade"></span>
												</div>
											</div>
											<div class="uk-grid">
												<div class="uk-width-1-4">
													编号：
												</div>
												<div class="uk-width-3-4 uk-visible-toggle">
													<font class="toggle_IDCardNumber uk-align-left" >${trainee.id_card }</font>
													<div class="toggle_IDCardNumber uk-align-left" hidden>
														<input class="uk-input uk-form-small" name="id_card"  value="${trainee.id_card }" type="text"  >
													</div>
													<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:question" uk-toggle="target: .toggle_IDCardNumber;animation: uk-animation-fade"></span>
												</div>
											</div>
										</div>
									</div>

								</div>



							</div>

							<button type="submit" class="uk-button uk-button-danger uk-button-small" >修改</button>
							<inpuut type="reset" class="uk-button uk-button-secondary uk-button-small">取消</inpuut>

						
						<!-- </form> --><br>

						<!--我的资料 结束-->
					</li>
					<li>
						<!--学习计划 开始-->

						<div class="uk-container">
							<ul uk-accordion="multiple: true">
								<li class="uk-open">
									<a class="uk-accordion-title" href="#">Item 1</a>
									<div class="uk-accordion-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									</div>
								</li>
								<li>
									<a class="uk-accordion-title" href="#">Item 2</a>
									<div class="uk-accordion-content">
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit.</p>
									</div>
								</li>
								<li>
									<a class="uk-accordion-title" href="#">Item 3</a>
									<div class="uk-accordion-content">
										<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat proident.</p>
									</div>
								</li>
							</ul>
						</div>
						<!--学习计划 结束-->

					</li>
					<li>

						<!--购车订单  开始-->

						<!--购车订单  结束-->
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!--个人资料 开始-->

<!--个人资料管理 结束-->


			<!--我的学习进度  开始-->
			<h3>我的学习进度</h3>

			<div class="uk-flex uk-flex-center">
				<div class="uk-text-center" uk-grid>
					<div class="uk-width-1-4">
						<div class="uk-card uk-card-default uk-card-body">
							<div class="uk-text-center">
								<div class="uk-inline-clip uk-transition-toggle" tabindex="0" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
									<img src="${pageContext.request.contextPath}/images/img1.jpg" alt="">
									<div class="uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default">
										<p class="uk-h4 uk-margin-remove">科目一</p>
									</div>
								</div>
								<p class="uk-margin-small-top">开始科目一练习刷题</p>
								<p class="uk-margin-small-top">还未有成绩</p>
							</div>

						</div>
					</div>
					<div class="uk-width-1-4">
						<div class="uk-card uk-card-default uk-card-body">

							<div class="uk-text-center">
								<div class="uk-inline-clip uk-transition-toggle" tabindex="0" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
									<img src="${pageContext.request.contextPath}/images/img1.jpg" alt="">
									<div class="uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default">
										<p class="uk-h4 uk-margin-remove">科目二</p>
									</div>
								</div>
								<p class="uk-margin-small-top">开始科目二练习刷题</p>
							</div>
						</div>
					</div>
					<div class="uk-width-1-4">
						<div class="uk-card uk-card-default uk-card-body">
							<div class="uk-text-center">
								<div class="uk-inline-clip uk-transition-toggle" tabindex="0" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
									<img src="${pageContext.request.contextPath}/images/img1.jpg" alt="">
									<div class="uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default">
										<p class="uk-h4 uk-margin-remove">科目三</p>
									</div>
								</div>
								<p class="uk-margin-small-top">开始科目三练习刷题</p>
							</div>
						</div>
					</div>
					<div class="uk-width-1-4">
						<div class="uk-card uk-card-default uk-card-body">
							<div class="uk-text-center">
								<div class="uk-inline-clip uk-transition-toggle" tabindex="0" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
									<img src="${pageContext.request.contextPath}/images/img1.jpg" alt="">
									<div class="uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default">
										<p class="uk-h4 uk-margin-remove">科目四</p>
									</div>
								</div>
								<p class="uk-margin-small-top">开始科目四练习刷题</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--我的学习进度  结束-->

			<!--浏览记录  开始-->
			<h3>浏览记录</h3>
			<div class="uk-text-center" uk-grid>
				<div class="uk-width-1-4">
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
				<div class="uk-width-1-4">
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
				<div class="uk-width-1-4">
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
				<div class="uk-width-1-4">
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
				<div class="uk-width-1-4">
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
				<div class="uk-width-1-4">
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
			</div>
			<!--浏览记录  结束-->



		</div>
	</article>
</form><br>


</div>
<br>


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

<br><br>
<!-- 导入尾部文件 -->
	<%@ include file="/jsp/footer.jsp" %>
</body>
</html>