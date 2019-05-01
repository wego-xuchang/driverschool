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

<!--查找 开始-->
<div class="uk-container">
		<form class="uk-search uk-search-default uk-width-1-1" action="${pageContext.request.contextPath}/AdminQuestionServlet?method=queryQuestion" method="post">
			<div class="uk-grid">
				<div class="uk-width-1-3">
					<div class="uk-margin">
						<select name="q_type" class="uk-select">
							<option value="0" selected="selected">判断题</option>
							<option value="1">单项选择</option>
							<option value="">多项选择</option>
						</select>
					</div>
				</div>
				<div class="uk-width-1-3">
					<div class="uk-margin">
						<select name="categor" class="uk-select">
							<option value="科目一" selected="selected">科目一</option>
							<option value="科目四">科目四</option>
							<option value="">测试</option>
						</select>
					</div>
				</div>
				<div class="uk-width-1-3">
					<div class="uk-margin">
						<select class="uk-select">
							<option>按照时间查找</option>
							<option>日期从后到前</option>
							<option>日期从前到后</option>
						</select>
					</div>
				</div>

				<div class="uk-width-3-4"><br>
					<!-- <form class="uk-search uk-search-default uk-width-1-1">
						<span uk-search-icon></span>
						<input class="uk-search-input" type="text" name="search" placeholder="Search...">
					</form> -->
					<input class="uk-search-input" type="text" name="title" placeholder="Search...">
				</div>
				<div class="uk-width-1-4"><br>
					<input id="buttonQuery" type="submit"  class="uk-button uk-button-primary" value="搜索">
				</div>
			</div>
			</form>
		</div>

		<br><br>

		<!--查找显示 开始-->
	<div class="uk-container">
		<c:if test="${empty queryListQuestion}">
								<h3>请添加查找信息试题</h3>
				</c:if>
		<c:if test="${not empty queryListQuestion}">
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
						<c:forEach items="${queryListQuestion}" var="p" varStatus="s">
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
		</c:if>
	</div>

		<!--查找显示 结束-->

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