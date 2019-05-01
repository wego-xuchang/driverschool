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

<!--查找 开始-->
<div class="uk-container">
	<form action="${pageContext.request.contextPath}/AdminUserServlet?method=queryTrainer" method="post">
			<div class="uk-grid">
			<div class="uk-width-1-3">
				<div class="uk-margin">
					<select class="uk-select">
						<option>按照驾校查找</option>
						<option>驾校1</option>
						<option>驾校2</option>
						<option>驾校3</option>
						<option>驾校4</option>
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
				<input class="uk-input uk-width-1-1" type="text" name="trainer_name" placeholder="请输入教练名字...">
			</div>
			<div class="uk-width-1-4"><br>
				<button class="uk-button uk-button-primary">搜索</button>
			</div>
		</div>
		</form>
	</div>

	<br><br>

	<!--查找显示 开始-->
<div class="uk-container">
		
		<c:if test="${empty queryListTrainer }">
				<h3>无教练信息</h3>
		</c:if>
		<c:if test="${not empty queryListTrainer}">
		<c:forEach items="${queryListTrainer }" var="p">
				<div class="uk-grid">
				<div class="uk-width-3-4" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">


					
					<div class="uk-grid">
						<div class="uk-width-2-5">
							<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent "  src="${pageContext.request.contextPath}/images/man.png" width="100"  height="100">
						</div>
						<div class="uk-width-3-5">
							<h3>教练名字：${p.trainer_name }</h3>
							<p>教练所属驾校：某某驾校</p>
						</div>

					</div>
					<div class="uk-grid" id="a${p.trainer_id }" hidden>
							<div class="uk-width-1-2">
							
									<c:choose>
													<c:when test="${p.state == 0 }">用户未激活</c:when>
													<c:when test="${p.state == 1 }">身份证未验证</c:when>
													<c:when test="${p.state == 2}">
													<h5>身份证已验证</h5>
													<h5>身份证：4444122456654</h5>
													<img   src="${pageContext.request.contextPath}/images/nav14.png" width="100"  height="100">
													</c:when>
													<c:when test="${p.state == 3}">
													<h5>机动车证已验证</h5>
													<h5>身份证：4444122456654</h5>
													<img   src="${pageContext.request.contextPath}/images/nav14.png" width="100"  height="100">
													<h5>机动车证：C1</h5>
													<img   src="${pageContext.request.contextPath}/images/nav15.png" width="100"  height="100">
													</c:when>										
										
									</c:choose>
							</div>
						<div class="uk-width-1-2">
							<h5>地区：${p.position }</h5>
							<h5>手机号码：${ p.telephone}</h5>
							<h5>邮箱：${p.email }</h5>
							<h5>类型：驾校负责人</h5>
						</div>

					</div>
					
					
					
				</div>
				<div class="uk-width-1-4">
					<div class="uk-grid">
						<div class="uk-width-1-1">
							<ul class="uk-iconnav">
								<li><a>
									<span class="uk-badge" uk-toggle="target: #a${p.trainer_id }; animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
								</a>
								</li>
								<li><a href="#" uk-icon="icon: trash">设置权限</a></li>
							</ul>
						</div>
					</div>

				</div>

			</div>
		
		</c:forEach>
			
		</c:if>
			

	</div>

	<!--查找显示 结束-->

<!--查找 结束-->



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