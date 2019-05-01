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

<!--查找 开始-->
<form  action="${pageContext.request.contextPath}/AdminUserServlet?method=queryTrainee" method="post">
	<div class="uk-container">

		<div class="uk-grid">
			<div class="uk-width-1-3">
				<div class="uk-margin">
					<select class="uk-select">
						<option>按照教练查找</option>
						<option>教练1</option>
						<option>教练2</option>
						<option>教练3</option>
						<option>教练4</option>
					</select>
				</div>
			</div>
			<div class="uk-width-1-3">
				<div class="uk-margin">
					<select name="sex" class="uk-select">
						<option value="">按照性别查找</option>
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
			</div>
			<div class="uk-width-1-3">
				<div class="uk-margin">
					<select name="byDay" class="uk-select">
						<option value="" >日期排序</option>
						<option value="DESC">日期从后到前</option>
						<option value="ASC">日期从前到后</option>
					</select>
				</div>
			</div>

			<div class="uk-width-3-4 "><br>
				<input class="uk-input uk-width-1-1" type="text" name="trainee_name" placeholder="请输入学员名字...">
			</div>
			<div class="uk-width-1-4"><br>
				<button class="uk-button uk-button-primary">搜索</button>
			</div>
		</div>
	</div>
</form>
	<br><br>

	<!--查找显示 开始-->
<div class="uk-container">
	<c:if test="${empty queryListTrainee}">
				<h3>请输入查找信息</h3>
	</c:if>
	<c:if test="${not empty queryListTrainee}">
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
				
				<c:forEach items="${queryListTrainee}" var="p">
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
		<br><br><br>
	</c:if>


</div>

	<!--查找显示 结束-->

<!--查找 结束-->




</body>
</html>