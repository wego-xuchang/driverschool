<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<div class="uk-container">
	<h3>编辑试题</h3>
	<div class="uk-container">
							<form method="post" action="${pageContext.request.contextPath }/AdminQuestionServlet?method=updateQuestion" enctype="multipart/form-data" id="">
								<div class="uk-grid">
									<div class="uk-width-1-2">
										<div class="uk-grid">
											<div class="uk-width-1-4">出题人：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1"   type="text" value="${question.question_id}" placeholder="请输入出题人" />
												<input class="uk-input uk-width-1-1" name="question_id"  type="text" value="${question.question_id}" hidden />
											</div>
										</div>
									</div>
									<div class="uk-width-1-2">
										<div class="uk-grid">
											<div class="uk-width-1-4">答案：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="answer"  type="text" value="${question.answer}" placeholder="请输入答案" />
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">试题类型：</div>
											<div class="uk-width-3-4">
												<select class="uk-select" name="q_type"  id="form-horizontal-select">
												<%-- <c:if test="${question.q_type==1}">
													<option  value="0" >判断题</option>
													<option  value="1" selected="selected">单项选择题</option>
													<option  value="1" >多选选择题</option>
													<option  value="1">填空题</option>
												</c:if>
												<c:if test="${question.q_type==0}">
													<option  value="0" selected="selected" >判断题</option>
													<option  value="1">单项选择题</option>
													<option  value="1" >多选选择题</option>
													<option  value="1">填空题</option>
												</c:if> --%>
												
													<option  value="0"  <c:if test="${question.q_type==0}">selected="selected"</c:if> >判断题</option>
													<option  value="1" <c:if test="${question.q_type==1}">selected="selected"</c:if> >单项选择题</option>
													<option  value="1"  >多选选择题</option>
													<option  value="1">填空题</option>
												</select>
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">上传时间：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name=""  type="text" placeholder="请输入上传时间">
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">所属：</div>
											<div class="uk-width-3-4">
												<div class="uk-form-controls uk-form-controls-text">
													<label><input class="uk-radio" type="radio"   name="categor" value="科目一"  <c:if test="${question.categor=='科目一'}">checked="checked"</c:if> > 科目一</label>
													<label><input class="uk-radio" type="radio"   name="categor" value="科目二"  <c:if test="${question.categor=='科目二'}">checked="checked"</c:if> > 科目二</label>
													<label><input class="uk-radio" type="radio"   name="categor" value="科目三"  <c:if test="${question.categor=='科目三'}">checked="checked"</c:if> > 科目三</label>
													<label><input class="uk-radio" type="radio"   name="categor" value="科目四"  <c:if test="${question.categor=='科目四'}">checked="checked"</c:if> > 科目四</label>
												</div>
											</div>
										</div>
									</div>
									
									<div class="uk-width-3-4">
										<br>
										<h3>试题描述</h3>
										<textarea class="uk-textarea" name="title"  rows="5" placeholder="请输入试题描述信息">${question.title }</textarea>
									</div>
									
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项A：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionA"  value="${question.optionA }" type="text" placeholder="请输入选项A" />
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项B：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionB" value="${question.optionB }"   type="text" placeholder="请输入选项B" />
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项C：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionC" value="${question.optionC }"   type="text" placeholder="请输入选项C" />
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项D：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionD" value="${question.optionD }"   type="text" placeholder="请输入选项D" />
											</div>
										</div>
									</div>
									
									
									
									<div class="uk-width-3-4">
										<br>
										<h3>答题试题图片</h3>
										<div class="uk-text-center uk-width-1-2">
										<c:if test="${empty question.optionImg}">
											<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
												<input type="file" name="optionImg" id="IDcard2" multiple>
												<img src="${pageContext.request.contextPath}/images/nav2.png" alt="">
												<div class="uk-position-center">
													<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
												</div>
											</div>
										</c:if>
										<c:if test="${not empty question.optionImg}">
											<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
												<input type="file" name="optionImg" value="${question.optionImg}" id="IDcard2" multiple>
												<img src="${pageContext.request.contextPath}/${question.optionImg}" alt="">
												<div class="uk-position-center">
													<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
												</div>
											</div>
										</c:if>
											
										</div>
									</div>
									<div class="uk-width-3-4">
										<br>
										<h3>解释</h3>
										<textarea class="uk-textarea" name="explain" rows="5" placeholder="请输入答案解释">${question.explain}</textarea>
									</div>
								</div>




								<br><br>

								<center>
									<input class="uk-button uk-button-default uk-button-small" type="submit" value="修改" />
									<inpuut type="reset" class="uk-button uk-button-secondary uk-button-small">取消</inpuut>
								</center>

							</form>
						</div>
						<!--上传试题-->
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