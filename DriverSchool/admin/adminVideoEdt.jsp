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
<%@ include file="/admin/header.jsp" %>

<!--编辑视频-->
					<div class="uk-container">
						<form method="" action="" id="">
						<div class="uk-grid">
							<div class="uk-width-1-2">
								<div class="uk-grid">
									<div class="uk-width-1-4">视频作者：</div>
									<div class="uk-width-3-4">
										<input class="uk-input uk-width-1-1"  type="text" placeholder="请输入作者">
									</div>
								</div>
							</div>
							<div class="uk-width-1-2">
								<div class="uk-grid">
									<div class="uk-width-1-4">视频标题：</div>
									<div class="uk-width-3-4">
										<input class="uk-input uk-width-1-1"  type="text" placeholder="请输入标题">
									</div>
								</div>
							</div>
							<div class="uk-width-1-2"><br>
								<div class="uk-grid">
									<div class="uk-width-1-4">视频类型：</div>
									<div class="uk-width-3-4">
										<select class="uk-select" id="form-horizontal-select">
											<option>视频类型</option>
											<option>文明类型</option>
											<option>实战类型</option>
											<option>上机考试类型</option>
											<option>训练类型</option>
										</select>
									</div>
								</div>
							</div>
							<div class="uk-width-1-2"><br>
								<div class="uk-grid">
									<div class="uk-width-1-4">上传时间：</div>
									<div class="uk-width-3-4">
										<input class="uk-input uk-width-1-1"  type="text" placeholder="请输入上传时间">
									</div>
								</div>
							</div>
							<div class="uk-width-1-2"><br>
								<div class="uk-grid">
									<div class="uk-width-1-4">所属：</div>
									<div class="uk-width-3-4">
										<div class="uk-form-controls uk-form-controls-text">
											<label><input class="uk-radio" type="radio" name="radio1"> 科目一</label>
											<label><input class="uk-radio" type="radio" name="radio1"> 科目二</label>
											<label><input class="uk-radio" type="radio" name="radio1"> 科目三</label>
											<label><input class="uk-radio" type="radio" name="radio1"> 科目四</label>
										</div>
									</div>
								</div>
							</div>
							<div class="uk-width-3-4">
								<br>
								<h3>上传视频封面</h3>
								<div class="uk-text-center uk-width-1-2">
									<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
										<input type="file" id="IDcard2" multiple>
										<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
										<div class="uk-position-center">
											<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
										</div>
									</div>
								</div>
							</div>

							<div class="uk-width-3-4">
								<br>
								<h3>简介</h3>
								<textarea class="uk-textarea" rows="5" placeholder="Textarea"></textarea>
							</div>
						</div>




					<div class="uk-placeholder uk-text-center">
						<div class="js-upload uk-placeholder uk-text-center">
							<span uk-icon="icon: cloud-upload"></span>
							<span class="uk-text-middle">上传视频文件</span>
							<div uk-form-custom>
								<input type="file" multiple>
								<span class="uk-link">点击</span>
							</div>
						</div>
					</div>

					<center>
						<inpuut type="submit" class="uk-button uk-button-primary uk-button-small">保存</inpuut>
						<inpuut type="" class="uk-button uk-button-secondary uk-button-small">取消</inpuut>
					</center>

						</form>
					</div>



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