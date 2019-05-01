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
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>
<!-- 导入头部文件 -->
<%@ include file="/jsp/header.jsp" %>

<!--考试 开始-->
<div class="uk-container">
	<div class="uk-grid">
		<div class="uk-width-3-4">
		
		
		<c:forEach items="${question0 }" var="q0" varStatus="s">
			<div class="uk-grid" id="a${q0.question_id }">
				<div class="uk-width-1-1">
					<div class="uk-margin-small uk-card uk-card-default uk-card-body uk-grid">
						<p>${s.index+1}. ${q0.title }</p>
						<div class="uk-width-1-2"><input class="uk-radio" type="radio" name="${q0.question_id }" >A.${q0.optionA }</div>
						<div class="uk-width-1-2"><input class="uk-radio" type="radio" name="${q0.question_id }" >B.${ q0.optionB}</div>

						<div class="uk-width-1-1">
						<br>
						<c:if test="${not empty q0.optionImg }">
							<img alt="" src="${pageContext.request.contextPath}/${q0.optionImg }" width="600" height="400">
						</c:if>
						
						
						</div>
						<div class="uk-width-1-1" id="b${q0.question_id }">
							
							
						</div>
					</div>
				</div>

				
			</div>
	</c:forEach>
		<c:forEach items="${question1 }" var="q1" varStatus="s">
			<div class="uk-grid" id="a${q1.question_id }">
				<div class="uk-width-1-1">
					<div class="uk-margin-small uk-card uk-card-default uk-card-body uk-grid">
						<p>${s.index+11}. ${q1.title }</p>
						<div class="uk-width-1-2"><input class="uk-radio" type="radio" name="${q1.question_id }" >A.${q1.optionA }</div>
						<div class="uk-width-1-2"><input class="uk-radio" type="radio" name="${q1.question_id }" >B.${ q1.optionB}</div>
						<div class="uk-width-1-2"><input class="uk-radio" type="radio" name="${q1.question_id }" >C.${ q1.optionC}</div>
						<div class="uk-width-1-2"><input class="uk-radio" type="radio" name="${q1.question_id }" >D.${ q1.optionD}</div>
						<p>
						<div class="uk-width-1-1">
						<br>
						<c:if test="${not empty q1.optionImg }">
							<img alt="" src="${pageContext.request.contextPath}/${q1.optionImg }" width="600" height="400">						
						</c:if>
						
						</div>
						
					</div>
				</div>
				
				<div class="uk-width-1-2"></div>
				<div class="uk-width-1-2"></div>
			</div>
	</c:forEach>
			

			

			
		</div>
		<div class="uk-width-1-4 uk-position-fixed uk-position-top-right"  ><br><br>
			<h5>考试结束还有：40分钟</h5>
			<ul class="uk-subnav uk-subnav-pill " uk-switcher>
			<c:forEach items="${question0 }" var="q0" varStatus="s">
				<li><a href="#a${q0.question_id }" uk-scroll><span class="uk-label">${s.index+1}</span></a></li>
			</c:forEach>
			<c:forEach items="${question1 }" var="q1" varStatus="s">
				<li><a href="#a${q1.question_id }" uk-scroll><span class="uk-label">${s.index+11}</span></a></li>
			</c:forEach>
			</ul>
			<center>
			<form action=" " method="">
				<button  class="uk-button uk-button-primary uk-button-small" id="offTest">交卷</button>
				<button  class="uk-button uk-button-secondary uk-button-small" >重新出卷</button>
			</form>
			</center>
		</div>
	</div>



</div>

<!--考试 结束-->
<br><br><br>
<!--学习计划 开始-->
<div class="uk-container">
	<h3>学习计划</h3>

	<div class="uk-position-relative uk-visible-toggle uk-light" uk-slider>

		<ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-3@m uk-grid">
			<li>
				<div class="uk-panel">
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
					<!--<h3>科目二考试技巧</h3>-->

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
					<img src="${pageContext.request.contextPath}/images/nav14.png" alt="">
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
</div>
<!--视频推荐 结束-->



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
	UIkit.util.on('#offTest', 'click', function (e) {
        e.preventDefault();
        e.target.blur();
        UIkit.modal.confirm('提交试卷!').then(function () {
        	var li="<div>正确答案是：${q0.answer }<br>正确解释：${q0.explain }</div>";
			$("#b${q0.question_id }").append(li);
            console.log('确认')
        }, function () {
            console.log('取消')
        });
    });
	
	</script>
</body>
</html>