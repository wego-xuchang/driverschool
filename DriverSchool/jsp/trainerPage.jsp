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
<c:choose>
<c:when test="${trainer.state ==1 }">

<div class="uk-container ">
	<div class="uk-alert-danger" uk-alert>
		<a class="uk-alert-close" uk-close></a>
		<center><p>驾校提醒你，你的账号未实名</p></center>
	</div>
</div>
<div class="uk-column-1-2"></div>
</c:when>
<c:when test="${trainer.state ==2 }">

<div class="uk-container ">
	<div class="uk-alert-danger" uk-alert>
		<a class="uk-alert-close" uk-close></a>
		<center><p>驾校提醒你，你的机动车未未上传</p></center>
	</div>
</div>
<div class="uk-column-1-2"></div>
</c:when>
</c:choose>


<div class="uk-container">

<form method="post" action="${pageContext.request.contextPath}/TrainerPensonServlet?method=updateTrainerDetail" id="" enctype="application/x-www-form-urlencoded">
	<article class="uk-comment uk-comment-primary">
		<header class="uk-comment-header uk-grid-medium uk-flex-middle" uk-grid>
			<div class="uk-width-auto">
				<c:if test="${empty trainer.trainer_img}">
					<img class="uk-comment-avatar uk-border-circle" src="${pageContext.request.contextPath}/images/man.png" width="120px" height="120px" alt="">
				</c:if>
				<c:if test="${not empty trainer.trainer_img}">
					<img class="uk-comment-avatar uk-border-circle" src="${pageContext.request.contextPath}/${trainer.trainer_img}" width="120px" height="120px" alt="">
					<input class="uk-input uk-form-small" type="text" name="trainer_img"  value="${trainer.trainer_img}" hidden>
														
				</c:if>
			</div>
			<div class="uk-width-expand">
				<h3 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#">${trainer.trainer_name}</a></h3>
				<ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
					<li><a href="#">类型：${trainer.trainer_type}</a></li>
						<input class="uk-input uk-form-small" type="text" name="trainer_type"  value="${trainer.trainer_type}" hidden>
						
					<li>
					<c:if test="${not empty trainer.school_id }">${trainer.school_id}</c:if>
					<c:if test="${empty trainer.school_id }">
					<a href="${pageContext.request.contextPath}/TrainerPensonServlet?method=selectSchoolInTrainer&trainer_id=${trainer.trainer_id}"><span uk-icon="icon: plus"></span>请选择驾校</a>
					</c:if>
					</li>
				</ul>
				<h5>
						<font class="toggle_sex uk-align-left" >性別：${trainer.sex }</font>
							<div class="toggle_sex uk-align-left" hidden>
									<input class="uk-input uk-form-small" type="text" name="sex" value="${trainer.sex }" >
							</div>
							<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon: file-edit" uk-toggle="target: .toggle_sex;animation: uk-animation-fade"></span>
				</h5>
				<h5>
				入职时间：${trainer.entry_time}
				</h5>
			</div>
		</header>
		<div class="uk-comment-body">

	<!--个人资料 开始-->

			<div class="uk-container"><br>
				<div class="uk-text-center" uk-grid>
					<div class="uk-width-1-5">
						<div class="uk-background-muted ">
							<ul class="uk-nav uk-nav-default " uk-switcher="connect: #component-nav1; animation: uk-animation-fade; toggle: > :not(.uk-nav-header)">
								<li><a href="#">我的资料</a></li>
								<li><a href="#">学员状态</a></li>
								<li><a href="#">购车订单</a></li>
							</ul>
						</div>
					</div>
					<div class="uk-width-4-5">
						<div >
							<ul id="component-nav1" class="uk-switcher">
								<li>
									<!--我的资料 开始-->
			
			
									<!-- <form method="" action="" id=""> -->
										<div class="uk-grid">
											<div class="uk-width-1-2">
												<div class="uk-grid">
													<div class="uk-width-1-4">
														用户名：
													</div>
													<div class="uk-width-3-4 uk-visible-toggle">
														<font class="toggle_trainee uk-align-left" >${trainer.trainer_name}</font>
														<div class="toggle_trainee uk-align-left" hidden>
															<input class="uk-input uk-form-small" type="text" name="trainer_name"  value="${trainer.trainer_name}">
															<input class="uk-input uk-form-small" type="text" name="trainer_id"  value="${trainer.trainer_id}" hidden>
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
														<font class="toggle_position uk-align-left" >${trainer.position}</font>
														<div class="toggle_position uk-align-left" hidden>
															<input class="uk-input uk-form-small" name="position" type="text" value="${trainer.position}" >
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
														<font class="toggle_phone uk-align-left" >${trainer.telephone}</font>
														<div class="toggle_phone uk-align-left" hidden>
															<input class="uk-input uk-form-small" name="telephone" type="text" value="${trainer.telephone}" >
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
														<font class="toggle_email uk-align-left" >${trainer.email}</font>
														<div class="toggle_email uk-align-left" hidden>
															<input class="uk-input uk-form-small" name="email" type="text" value="${trainer.email}" >
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
														<font class="toggle_school uk-align-left" >${trainer.school_id }</font>
														<div class="toggle_school uk-align-left" name="school_id" value="${trainer.school_id }" hidden>
															<input class="uk-input uk-form-small" type="text"  >
														</div>
														<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:more" uk-toggle="target: .toggle_school;animation: uk-animation-fade"></span>
													</div>
												</div>
											</div>
											<div class="uk-width-1-2">
												<div class="uk-grid">
													<div class="uk-width-1-4">
														入职日期：
													</div>
													<div class="uk-width-3-4 uk-visible-toggle">
														<font class="toggle_date uk-align-left" >${trainer.entry_time}</font>
														<div class="toggle_date uk-align-left" hidden>
															<input class="uk-input uk-form-small" type="text" name="entry_time" value="${trainer.entry_time}" >
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
													<c:if test="${not empty trainer.id_card }">
														你的账号已实名
													</c:if>
													<c:if test="${empty trainer.id_card }">
														你的账号未实名
													</c:if>
															<%-- <c:choose>
																<c:when test="${trainer.state ==1 }">
																你的账号未实名
																</c:when>
																<c:when test="${trainer.state ==2 }">
																你的账号已实名
																</c:when>
															</c:choose> --%>
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
																		<input type="file" id="IDcard1"  multiple>
																		<input class="uk-input uk-form-small" type="text" name="id_card_img" value="${trainer.id_card_img}"  hidden>
																		<img src="${pageContext.request.contextPath}/${trainer.id_card_img}" alt="">
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
																			<input type="file" id="IDcard2" multiple>
																			<img src="${pageContext.request.contextPath}/${trainer.id_card_img}" alt="">
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
																<font class="toggle_IDCardName uk-align-left" >${trainer.trainer_name}</font>
																<div class="toggle_IDCardName uk-align-left" hidden>
																	<input class="uk-input uk-form-small" type="text"  value="${trainer.trainer_name}" >
																</div>
																<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:question" uk-toggle="target: .toggle_IDCardName;animation: uk-animation-fade"></span>
															</div>
														</div>
														<div class="uk-grid">
															<div class="uk-width-1-4">
																编号：
															</div>
															<div class="uk-width-3-4 uk-visible-toggle">
																<font class="toggle_IDCardNumber uk-align-left" >${trainer.id_card}</font>
																<div class="toggle_IDCardNumber uk-align-left"  hidden>
																	<input class="uk-input uk-form-small" name="id_card" value="${trainer.id_card}" type="text"  >
																</div>
																<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:question" uk-toggle="target: .toggle_IDCardNumber;animation: uk-animation-fade"></span>
															</div>
														</div>
													</div>
												</div>
			
											</div>
			
			
			
										</div>
			
										<div class="uk-grid">
											<div class="uk-width-1-1@s">
												<div class="js-upload uk-placeholder uk-text-center">
			
													<span class="uk-text-middle">
													<c:if test="${not empty trainer.car_img }">
														你的账号已上传机动车证
													</c:if>
													<c:if test="${empty trainer.car_img }">
														你的账号未实名未上传机动车证
													</c:if>
															<%-- <c:choose>
																<c:when test="${trainer.state ==1 }">
																你的账号未实名未上传机动车证
																</c:when>
																<c:when test="${trainer.state ==2 }">
																你的账号已实名未上传机动车证
																</c:when>
																<c:when test="${trainer.state ==3 }">
																你的账号已上传机动车证
																</c:when>
															</c:choose> --%>
													</span>
													<span uk-icon="icon: cloud-upload" uk-tooltip="title: 点击进入实名; pos: right" uk-toggle="target: #toggle-animation1; animation: uk-animation-fade"></span>
												</div>
			
												<progress id="js-progressbar1" class="uk-progress" value="0" max="100" ></progress>
											</div>
											<div id="toggle-animation1" class="uk-card uk-card-default uk-card-body uk-margin-small" hidden>
												<div class="uk-grid">
													<div class="uk-width-1-4">
														<div class="">
															<div class="uk-text-center">
																<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
																	<input type="file" id="IDcard11"  multiple >
																	<input class="uk-input uk-form-small" type="text" name="car_img" value="${trainer.car_img}"  hidden>
																	<img src="${pageContext.request.contextPath}/${trainer.car_img}" alt="">
																	<div class="uk-position-center">
																		<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
																	</div>
																</div>
															</div>
															<p>驾照正面</p>
														</div>
													</div>
													<div class="uk-width-1-4">
														<div class="">
															<div class="uk-text-center">
																<div class="uk-text-center">
																	<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
																		<input type="file" id="IDcard21" multiple>
																		<img src="${pageContext.request.contextPath}/${trainer.car_img}" alt="">
																		<div class="uk-position-center">
																			<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
																		</div>
																	</div>
																</div>
															</div>
															<p>驾照反面</p>
			
														</div>
													</div>
													<div class="uk-width-1-2">
														<div class="uk-grid">
															<div class="uk-width-1-4">
																名字：
															</div>
															<div class="uk-width-3-4 uk-visible-toggle">
																<font class="toggle_carName uk-align-left" >${trainer.trainer_name }</font>
																<div class="toggle_carName uk-align-left" hidden>
																	<input class="uk-input uk-form-small" type="text" value="${trainer.trainer_name }" >
																</div>
																<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:question" uk-toggle="target: .toggle_carName;animation: uk-animation-fade"></span>
															</div>
														</div>
														<div class="uk-grid">
															<div class="uk-width-1-4">
																编号：
															</div>
															<div class="uk-width-3-4 uk-visible-toggle">
																<font class="toggle_carNumber uk-align-left" >${ trainer.id_card}</font>
																<div class="toggle_carNumber uk-align-left"  hidden>
																	<input class="uk-input uk-form-small" value="${ trainer.id_card}" type="text"  >
																</div>
																<span class="uk-align-left uk-hidden-hover uk-iconnav" uk-tooltip="title: 编辑; pos: right" uk-icon="icon:question" uk-toggle="target: .toggle_carNumber;animation: uk-animation-fade"></span>
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
									<!--学员状态 开始-->
			
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
									<!--学员状态 结束-->
			
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




			<!--优秀学员  开始-->
			<h3>优秀学员</h3>

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
								<p class="uk-margin-small-top">优秀学员</p>
								<p class="uk-margin-small-top">某某驾校</p>
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
								<p class="uk-margin-small-top">优秀学员</p>
								<p class="uk-margin-small-top">某某驾校</p>
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
								<p class="uk-margin-small-top">优秀学员</p>
								<p class="uk-margin-small-top">某某驾校</p>
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
								<p class="uk-margin-small-top">优秀学员</p>
								<p class="uk-margin-small-top">某某驾校</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--优秀学员  结束-->

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
</form>


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