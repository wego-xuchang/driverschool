<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>驾校系统</title>
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.css" /> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css" />
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit-rtl.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit-rtl.min.css" /> --%>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/backtop.css" />
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>
<!-- 导入头部文件 -->
<%@ include file="/admin/header.jsp" %>



<!--管理用户 开始-->
<div class="uk-container">
	<div class="uk-grid">
		<div class="uk-width-1-6">
			<ul class="uk-nav-primary uk-nav-parent-icon" uk-nav>
				<li ><a href="${pageContext.request.contextPath}/admin/adminUser.jsp">用户概述</a></li>
				<li ><a href="${pageContext.request.contextPath}/AdminUserServlet?method=selectAllTrainer&num=1">教练信息</a></li>
				<li class="uk-parent uk-active">
					<a href="#">学员信息</a>
					<ul class="uk-nav-sub uk-tab-right" uk-tab="connect: #component-tab-trainee; animation: uk-animation-fade">
						<li><a href="#">学员信息组</a></li>
						<li><a href="#">查找</a></li>
						<li><a href="#">权限设置</a></li>
					</ul>
				</li>

			</ul>
		</div>
		<div class="uk-width-5-6"><br>
			
			
			<!--学员信息-->
			<div class="uk-container">
				<ul id="component-tab-trainee" class="uk-switcher">
					<li>
						<!--学员信息 开始-->
						<h3>学员信息</h3>
						<div class="uk-container">
							<div class="uk-grid">
								<div class="uk-width-1-4">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照手机号排序</option>
											<option>文明类型</option>
											<option>实战类型</option>
											<option>上机考试类型</option>
											<option>训练类型</option>
										</select>
									</div>
								</div>
								<div class="uk-width-1-4">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照名字排序</option>
											<option>科目二</option>
											<option>科目三</option>
										</select>
									</div>
								</div>
								<div class="uk-width-1-4">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照时间排序</option>
											<option>日期从后到前</option>
											<option>日期从前到后</option>
										</select>
									</div>
								</div>
							</div>
						</div><br>

						

					<c:if test="${empty page.list}">
								<h3>无用户组</h3>
					</c:if>
					<c:if test="${not empty page.list}">
								<div class="uk-overflow-auto uk-width-1-1">
							<table class="uk-table uk-table-hover uk-table-middle uk-table-divider">
								<thead>
								<tr>
									<th class="uk-table-expand">用户名</th>
									<th class="uk-table-expand">电子邮件</th>
									<th class="uk-table-expand">手机</th>
									<th class="uk-table-expand">所属地区</th>
									<th class="uk-table-expand">操作</th>
								</tr>
								</thead>
								<tbody>
								
								<c:forEach items="${page.list}" var="p">
									<tr>
										<td >${p.trainee_name}</td>
										<td >${p.email }</td>
										<td >${p.telephone }</td>
										<td >${p.position }</td>
										<td >
											<ul class="uk-iconnav">
												<li><a>
													<span class="uk-badge" uk-toggle="target: #a${p.trainee_id }; animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
												</a></li>
												<li><a href="#" uk-icon="icon: file-edit"></a></li>
												<li><a href="#" uk-icon="icon: trash"></a></li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="5" id="a${p.trainee_id }" hidden>
											<ul class="uk-grid" >
												<li class="uk-width-1-2">
												<h5>头像：</h5>
												<img class="" src="${pageContext.request.contextPath}/${p.trainee_img}" width="200">
												<h5>驾校：</h5>
													某某驾校
												</li>
												<li class="uk-width-1-2">
													
													
													<c:choose>
														<c:when test="${p.state == 0 }">用户未激活</c:when>
														<c:when test="${p.state == 1 }">身份证未验证</c:when>
														<c:when test="${p.state == 2}">
														
														<h5>身份证已验证</h5>
														<img class="" src="${pageContext.request.contextPath}/${p.id_card_img}" width="200">
														<h5>身份证姓名：${p.trainee_name }</h5>
														<h6>${p.id_card}</h6>
														
														</c:when>
													</c:choose>
													<br>
													
												</li>
											</ul>
										</td>
									</tr>
								</c:forEach>
								

								</tbody>
							</table>
						</div><br><br>
						<%@ include file="/jsp/pageFile.jsp" %>
						<br><br><br>
					</c:if>
					

						<br>
						
						<!--学员信息 结束-->

					</li>
					
					<li>
						<!--查找 开始-->
						<%@ include file="/admin/queryTrainee.jsp" %>

						<!--查找 结束-->
					</li>
					<li>
						<!--权限设置 开始-->



						<!--权限设置 结束-->

					</li>

				</ul>
			</div>

		</div>
	</div>

</div>




<!--管理用户 结束-->

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