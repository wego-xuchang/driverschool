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
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css"/>
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>
<!-- 导入头部文件 -->
<%@ include file="/admin/header.jsp" %>

<br>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-danger alert-dismissible fade in" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4>网站程序有漏洞，急需修复！</h4>
                <p>当前版本程序(V1.22)存在严重安全问题，容易造成攻击，请即可修复！</p>
                <p>
                    <button type="button" class="btn btn-danger">立即修复</button>
                    <button type="button" class="btn btn-default"  data-dismiss="alert"  >稍后处理</button>
                </p>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">数据统计</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>统计项目</th>
                                <th>今日</th>
                                <th>昨日</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                 <th scope="row">访客数量</th>
                                 <td>3388</td>
                                 <td>4004</td>
                            </tr>
                            <tr>
                                <th scope="row">用户登录</th>
                                <td>4100</td>
                                <td>5112</td>
                            </tr>
                            <tr>
                                <th scope="row">用户注册</th>
                                <td>885</td>
                                <td>779</td>
                            </tr>
                            <tr>
                                <th scope="row">视频浏览</th>
                                <td>4462</td>
                                <td>4485</td>
                            </tr>
                            <tr>
                                <th scope="row">社区访谈</th>
                                <td>448</td>
                                <td>556</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">今日头条</div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;华软地铁将于12.28号开通！<small class="pull-right">2018/01/01</small></a>
                        </li>
                        <li class="list-group-item">
                            <a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;华软地铁将于12.28号开通！<small class="pull-right">2018/01/01</small></a>
                        </li>
                        <li class="list-group-item">
                            <a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;华软地铁将于12.28号开通！<small class="pull-right">2018/01/01</small></a>
                        </li>
                        <li class="list-group-item">
                            <a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;华软地铁将于12.28号开通！<small class="pull-right">2018/01/01</small></a>
                        </li>
                        <li class="list-group-item">
                            <a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;华软地铁将于12.28号开通！<small class="pull-right">2018/01/01</small></a>
                        </li>
                        <li class="list-group-item">
                            <a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;华软地铁将于12.28号开通！<small class="pull-right">2018/01/01</small></a>
                        </li>
                        <li class="list-group-item">
                            <a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;华软地铁将于12.28号开通！<small class="pull-right">2018/01/01</small></a>
                        </li>
                    </ul>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">今日访客统计</div>
                <div class="panel-body">
                    <canvas id="canvas" class="col-md-12"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">服务器状态</div>
                <div class="panel-body">
                    <p>内存使用率：40%</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"></div>
                    </div>
                    <p>数据库使用率：20%</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"></div>
                    </div>
                    <p>磁盘使用率：60%</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"></div>
                    </div>
                    <p>CPU使用率：80%</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">用户评论专区</div>
                <div class="panel-body">
                    <div class="col-md-7">
                        <div class="media well">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object wh64" src="images/a.png">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">卓大哥</h4>
                                技术大哥，今晚请把网站程序升级一下哈，现在的系统有漏洞，安全起见！
                            </div>
                        </div>
                        <div class="media well">
                            <div class="media-body text-right">
                                <h4 class="media-heading">技术大哥</h4>
                                收到，今晚凌晨2点准时升级！
                            </div>
                            <div class="media-right">
                                <a href="#">
                                    <img class="media-object wh64" src="${pageContext.request.contextPath}/images/b.png" >
                                </a>
                            </div>
                        </div>
                        <div class="media well">
                            <div class="media-body text-right">
                                <h4 class="media-heading">技术大哥</h4>
                                你先在站点发布一下通知哈！
                            </div>
                            <div class="media-right">
                                <a href="#">
                                    <img class="media-object wh64" src="${pageContext.request.contextPath}/images/b.png" >
                                </a>
                            </div>
                        </div>
                        <div class="media well">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object wh64" src="${pageContext.request.contextPath}/images/a.png" >
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">卓大哥</h4>
                                好嘞。
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <form action="#">
                            <div class="form-group">
                                <label for="text1">输入回复内容</label>
                                <textarea class="form-control" id="text1" rows="5" cols="10" placeholder="请输入回复内容"></textarea>
                                <button type="submit" class="btn btn-default mar_t15">回复</button>
                            </div>
                        </form>
                        <div class="panel panel-default">
                            <div class="panel-heading">驾校客服</div>
                            <div class="panel-body">
                                <ul class="list-group">
                                    <li class="list-group-item">客服：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;15813058131</li>
                                    <li class="list-group-item">客服：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;15813058131</li>
                                    <li class="list-group-item">客服：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;15813058131</li>
                                    <li class="list-group-item">客服：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;15813058131&nbsp;&nbsp;<span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;020-888888</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/Chart.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>







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