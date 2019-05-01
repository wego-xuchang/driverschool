<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript" ></script>
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>
<!-- 导入头部文件 -->
<%@ include file="/admin/header.jsp" %>

<!--管理试题 开始-->
<div class="uk-container">
	<div class="uk-grid">
		<div class="uk-width-1-6">
			<ul class="uk-nav-primary uk-nav-parent-icon" uk-nav>
				<li class="uk-active"><a href="#">试题概述</a></li>
				<li class="uk-parent">
					<a href="#">试题信息</a>
					<ul class="uk-nav-sub uk-tab-right" uk-tab="connect: #component-tab-trainee; animation: uk-animation-fade">
						<li><a href="#">试题</a></li>
						<li><a href="#">上传试题</a></li>
						<li><a href="#">查找</a></li>
					</ul>
				</li>

			</ul>
		</div>
		<div class="uk-width-5-6"><br>
			<!--用户概述-->
			<div class="uk-container">
				<img src="${pageContext.request.contextPath}/images/nav19.png">
				<div class="uk-child-width-1-2@m uk-grid-match" uk-grid>
					<div>
						<div class="uk-card uk-card-default uk-card-body" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
							<h3 class="uk-card-title">判断题统计</h3>
							<p> </p>
						</div>
					</div>
					<div>
						<div class="uk-card uk-card-default uk-card-body" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
							<h3 class="uk-card-title">填空题统计</h3>
							<p></p>
						</div>
					</div>
				</div>

			</div><br>
			<!--用户信息-->
			<div class="uk-container">
				<ul id="component-tab-trainee" class="uk-switcher">
					<li>
						<!--试题信息 开始-->
						<h3>试题信息</h3>
						<br>
				<c:if test="${empty page.list}">
								<h3>你还没添加试题</h3>
				</c:if>
				<c:if test="${not empty page.list}">
						<div class="uk-overflow-auto uk-width-1-1">
						
						
									
								
							<table class="uk-table uk-table-hover uk-table-middle uk-table-divider">
								<thead>
								<tr>
									<th class="uk-table-expand">编号</th>
									<th class="uk-table-expand">类型</th>
									<th class="uk-table-expand">答案</th>
									<th class="uk-table-expand">出题人</th>
									<th class="uk-table-expand">操作</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach items="${page.list}" var="p" varStatus="s">
									
								
								<tr>
									<td >${s.index+1}</td>
									<td >
									${p.categor}
										<c:choose>
											<c:when test="${p.q_type == 0 }">判断题</c:when>
											<c:when test="${p.q_type == 0 }">填空题</c:when>
										</c:choose>
									</td>
									<td >${p.answer}</td>
									<td >管理员</td>
									<td >
										<ul class="uk-iconnav">
											<li><a>
												<span class="uk-badge" uk-toggle="target: #a${p.question_id }; animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
											</a></li>
											<li><a href="${pageContext.request.contextPath }/AdminQuestionServlet?method=findQuestionById&question_id=${p.question_id }" uk-icon="icon: file-edit"></a></li>
											<li><a href="${pageContext.request.contextPath }/AdminQuestionServlet?method=deleteQuestion&question_id=${p.question_id }" uk-icon="icon: trash"></a></li>
										</ul>
									</td>
								</tr>
								<tr>
									<td colspan="5" id="a${p.question_id }" hidden>
										<ul class="uk-grid" >
											<li class="uk-width-1-1">
												<h5>试题描述：</h5>
												<p>${p.title }</p>
												<h5>选项</h5>
												<p>
												A${p.optionA } | B ${p.optionB } |C ${p.optionC }|D${p.optionD }
												</p>
												<h5>解释：</h5>
												<p>
												${p.explain }
												</p>
											</li>
										<c:if test="${not empty p.optionImg}">
											<li class="uk-width-1-2">
												<img class="" src="${pageContext.request.contextPath}/${p.optionImg}" width="300">
											</li>
											<li class="uk-width-1-2">
												<img class="" src="${pageContext.request.contextPath}/${p.optionImg}" width="300">
											</li>
										</c:if>
										</ul>
									</td>
								</tr>
									</c:forEach>
								</tbody>
							</table>



						</div>

						<br>
						<%@ include file="/jsp/pageFile.jsp" %>
						<br><br><br>
				</c:if>
						<!--试题信息 结束-->

					</li>
					<li>
						<!--上传试题 开始-->
						<h3>上传试题</h3>
						<div class="uk-container">
							<form method="post" action="${pageContext.request.contextPath}/AdminQuestionServlet?method=addQuestion" id="" enctype="multipart/form-data">
								<!-- <input type="hidden" name="method" value="addQuestion"/> -->
								<div class="uk-grid">
									<div class="uk-width-1-2">
										<div class="uk-grid">
											<div class="uk-width-1-4">出题人：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name=""  type="text" placeholder="请输入出题人">
											</div>
										</div>
									</div>
									<div class="uk-width-1-2">
										<div class="uk-grid">
											<div class="uk-width-1-4">答案：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1"  name="answer" type="text" placeholder="请输入答案">
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">试题类型：</div>
											<div class="uk-width-3-4">
												<select class="uk-select" name="q_type" id="form-horizontal-select">
													<option value="0">判断题</option>
													<option value="1">单项选择题</option>
													<option value="1">多项选择题</option>
													<option value="1">填空题</option>
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
													<label><input class="uk-radio" type="radio" name="categor" value="科目一"> 科目一</label>
													<label><input class="uk-radio" type="radio" name="categor" value="科目二"> 科目二</label>
													<label><input class="uk-radio" type="radio" name="categor" value="科目三"> 科目三</label>
													<label><input class="uk-radio" type="radio" name="categor" value="科目四"> 科目四</label>
												</div>
											</div>
										</div>
									</div>
									
									<div class="uk-width-3-4">
										<br>
										<h3>试题描述</h3>
										<textarea class="uk-textarea" name="title" rows="5" placeholder="请输入试题描述信息"></textarea>
										<br>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项A：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionA"  type="text" placeholder="请输入选项A">
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项B：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionB"  type="text" placeholder="请输入选项B">
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项C：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionC"  type="text" placeholder="请输入选项C">
											</div>
										</div>
									</div>
									<div class="uk-width-1-2"><br>
										<div class="uk-grid">
											<div class="uk-width-1-4">选项D：</div>
											<div class="uk-width-3-4">
												<input class="uk-input uk-width-1-1" name="optionD"  type="text" placeholder="请输入选项D">
											</div>
										</div>
									</div>
									<div class="uk-width-3-4">
										<br>
										<h3>答题试题图片</h3>
										<div class="uk-text-center uk-width-1-2">
											<div class="uk-form-custom uk-inline-clip uk-transition-toggle uk-light " tabindex="0">
												<input type="file" id="IDcard2" name="optionImg" multiple>
												<img src="images/nav2.png" alt="">
												<div class="uk-position-center">
													<span class="uk-transition-fade uk-link" uk-icon="icon: plus; ratio: 2"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="uk-width-3-4">
										<br>
										<h3>解释</h3>
										<textarea class="uk-textarea" name="explain" rows="5" placeholder="请输入答案解释"></textarea>
									</div>
								</div>




								<br><br>

								<center>
									<input class="uk-button uk-button-default uk-button-small" type="submit" value="上传" />
		    									<button class="uk-button uk-button-primary uk-button-small">取消</button>
								</center>

							</form>
						</div>
						<!--上传试题-->


					</li>
					<li>
						<!--查找 开始-->
						<%@ include file="/admin/queryQuestion.jsp" %>
						<!--查找 结束-->
					</li>


				</ul>
			</div>

		</div>
	</div>

</div>




<!--管理试题 结束-->


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
	
<script type="text/javascript">
$(function(){
	$("#word").keyup(function() {
		//2。 获取输入框的值 
		//var word = $("#word").val();
		//this  对应就是执行这个方法的那个对象， $("#word")
		var word = $(this).val();

		if(word == ""){
			$("#div01").hide();
		}else{
			//3. 请求数据。
			$.post("find",{word:word} ,function(data , status){
				//alert(data);
				$("#div01").show();
				$("#div01").html(data);
			});
		}
		
	})
});
//1. 创建对象
function  ajaxFunction(){
   var xmlHttp;
   try{ // Firefox, Opera 8.0+, Safari
        xmlHttp=new XMLHttpRequest();
    }
    catch (e){
	   try{// Internet Explorer
	         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	      }
	    catch (e){
	      try{
	         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	      }
	      catch (e){}
	      }
    }

	return xmlHttp;
 }

function checkAdminTelephone() {
	var telephone = document.getElementById("longin_name_admin1").value; // value  value() val val()
	//1. 创建对象
	var request = ajaxFunction();
	
	//2. 发送请求
	request.open("POST"  ,"/DriverSchool/AdminServlet?method=checkAdminTelephone" , true );
	
	//注册状态改变监听，获取服务器传送过来的数据
	request.onreadystatechange = function(){
		
		if(request.readyState == 4 && request.status == 200){
			//alert(request.responseText);
			var data = request.responseText;
			if(data == 1){
				//alert("账号存在");
				document.getElementById("login_span1_admin1").innerHTML = "<font color='green'>用户正确!</font>";
			}else{
				document.getElementById("login_span1_admin1").innerHTML = "<font color='red'>您不是管理员，请咨询客服!</font>";
				//alert("账号不存在");
			}
		}
		
	}
	
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send("telephone="+telephone);
}
</script>
	
</body>
</html>