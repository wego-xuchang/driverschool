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
<img src="${pageContext.request.contextPath}/images/nav19.png">
<div class="uk-container">
<center><h3>${msg}</h3></center>
<p>
     <b id="second">10</b>秒后回到主页&nbsp;<a href="javascript:goBack();">返回</a>  
  </p>
	
</div>
<br><br><br><br><br><br>
	<!-- 导入尾部文件 -->
<%@ include file="/jsp/footer.jsp" %>


 
<script type="text/javascript">  
 
	var sec = document.getElementById("second");
	var i = 10;
	var timer = setInterval(function(){
		i--;
		sec.innerHTML = i;
		if(i==1){
			location.href =  "/DriverSchool/jsp/index.jsp";
		}
	},1000);
	 
  function goBack(){ 
	history.go(-1);
  }  
  </script> 
</body>
</html>