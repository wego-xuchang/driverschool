<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


	


<div class="uk-container">
	<c:if test="${ empty trainee.school_id}">
			<h3><a href="${pageContext.request.contextPath}/PageSettingServlet?method=select&trainee_id=${trainee.trainee_id}">请选择驾校</a></h3>
	</c:if>
	<c:if test="${not empty trainee.school_id}">
		
	
		<h3>驾校信息</h3>
		<article class="uk-comment uk-comment-primary uk-visible-toggle">
			<header class="uk-comment-header uk-position-relative">
				<div class="uk-grid-medium uk-flex-middle" uk-grid>
					<div class="uk-width-auto">
						<img class="uk-comment-avatar" src="${pageContext.request.contextPath}/images/nav14.png" width="80" height="80" alt="">
					</div>
					<div class="uk-width-expand">
						<h4 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#">驾校名称:${school.school_name }</a></h4>
						<p class="uk-comment-meta uk-margin-remove-top"><a class="uk-link-reset" href="#">地区:${school.position }</a></p>
					</div>
				</div>
				<div class="uk-position-top-right uk-position-small uk-hidden-hover"><a class="uk-link-muted" href="#">详细信息</a></div>
			</header>
			<div class="uk-comment-body">
				<p>驾校简介</p>
			</div>
		</article>
	</c:if>
	
	<c:if test="${empty trainee.trainer_id}">
	<h3><a href="${pageContext.request.contextPath}/PageSettingServlet?method=select&trainee_id=${trainee.trainee_id}">请选择教练</a></h3>
	</c:if>
	<c:if test="${not empty trainee.trainer_id}">
		<h3>教练信息</h3>
		<article class="uk-comment uk-comment-primary uk-visible-toggle">
			<header class="uk-comment-header uk-position-relative">
				<div class="uk-grid-medium uk-flex-middle" uk-grid>
					<div class="uk-width-auto">
						<img class="uk-comment-avatar" src="${pageContext.request.contextPath}/${trainer.trainer_img}" width="80" height="80" alt="">
					</div>
					<div class="uk-width-expand">
						<h4 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#">教练:${trainer.trainer_name}</a></h4>
						<p class="uk-comment-meta uk-margin-remove-top"><a class="uk-link-reset" href="#">类型：${trainer.trainer_type}</a></p>
					</div>
				</div>
				<div class="uk-position-top-right uk-position-small uk-hidden-hover"><a class="uk-link-muted" href="#">详细信息</a></div>
			</header>
			<div class="uk-comment-body">
				<p>电话：${trainer.telephone}|邮箱：${trainer.email}</p>
			</div>
		</article>
	</c:if>

</div>
<br>

<div class="uk-container">
<h3>请缴费</h3>
	<ul uk-accordion>
		<li class="uk-open">
			<a class="uk-accordion-title" href="#">微信支付</a>
			<div class="uk-accordion-content">
				<center>
					<h3 class="uk-modal-title">微信支付</h3>
					<img data-src="${pageContext.request.contextPath}/images/top01.png" width="" height="" alt="" uk-img>
				</center>
			</div>
		</li>
		<li>
			<a class="uk-accordion-title" href="#">支付宝支付</a>
			<div class="uk-accordion-content">
				支付宝支付
			</div>
		</li>
		<li>
			<a class="uk-accordion-title" href="#">其他支付</a>
			<div class="uk-accordion-content">
							<div style="margin-top:5px;margin-left:150px;">
										<strong>选择银行：</strong>
										<p>
											<br/>
											<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked" />工商银行
											<img src="${pageContext.request.contextPath}/images/bank_img/icbc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="pd_FrpId" value="BOC-NET-B2C" />中国银行
											<img src="${pageContext.request.contextPath}/images/bank_img/bc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="pd_FrpId" value="ABC-NET-B2C" />农业银行
											<img src="${pageContext.request.contextPath}/images/bank_img/abc.bmp" align="middle" />
											<br/>
											<br/>
											<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C" />交通银行
											<img src="${pageContext.request.contextPath}/images/bank_img/bcc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="pd_FrpId" value="PINGANBANK-NET" />平安银行
											<img src="${pageContext.request.contextPath}/images/bank_img/pingan.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="pd_FrpId" value="CCB-NET-B2C" />建设银行
											<img src="${pageContext.request.contextPath}/images/bank_img/ccb.bmp" align="middle" />
											<br/>
											<br/>
											<input type="radio" name="pd_FrpId" value="CEB-NET-B2C" />光大银行
											<img src="${pageContext.request.contextPath}/images/bank_img/guangda.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C" />招商银行
											<img src="${pageContext.request.contextPath}/images/bank_img/cmb.bmp" align="middle" />
					
										</p>
										<hr/>
										<p style="text-align:right;margin-right:100px;">
											<a href="javascript:document.getElementById('orderForm').submit();">
												<img src="${pageContext.request.contextPath}/images/finalbutton.gif" width="204" height="51" border="0" />
											</a>
										</p>
										<hr/>
					
					</div>
			</div>
		</li>
	</ul>
	
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