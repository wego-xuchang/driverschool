<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>试题</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css" />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/backtop.css" />
	<script src="${pageContext.request.contextPath}/js/uikit.js"  type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/uikit-icons.js"  type="text/javascript"></script>
</head>
<body>
<!-- 导入头部文件 -->
<%@ include file="/admin/header.jsp" %>

<!--试题 开始-->
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
			<!--试题概述-->
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
			<!--试题信息-->
			<div class="uk-container">
				<ul id="component-tab-trainee" class="uk-switcher">
					<li>
						<!--试题信息 开始-->
						<h3>试题信息</h3>
						<br>

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
								<tr>
									<td >001</td>
									<td >选择题</td>
									<td >A</td>
									<td >教练</td>
									<td >
										<ul class="uk-iconnav">
											<li><a>
												<span class="uk-badge" uk-toggle="target: #trainee1; animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
											</a></li>
											<li><a href="#" uk-icon="icon: file-edit"></a></li>
											<li><a href="#" uk-icon="icon: trash"></a></li>
										</ul>
									</td>
								</tr>
								<tr>
									<td colspan="5" id="trainee1" hidden>
										<ul class="uk-grid" >
											<li class="uk-width-1-1">
												<h5>试题描述：</h5>
												<p>车辆在通过山区道路弯道时，要做到“减速、鸣喇叭、靠右行”。</p>
												<h5>选项</h5>
												<p>A选项 |BCD</p>
												<h5>解释：</h5>
												<p>车辆在通过山区道路弯道时，要做到“减速、鸣喇叭、靠右行”。</p>
											</li>

											<li class="uk-width-1-2">
												<img class="" src="${pageContext.request.contextPath}/images/nav15.png" width="200">
											</li>
											<li class="uk-width-1-2">
												<img class="" src="${pageContext.request.contextPath}/images/nav15.png" width="200">
											</li>
										</ul>
									</td>
								</tr>

								</tbody>
							</table>



						</div>

						<br>
						<div>
							<ul class="uk-pagination uk-flex-center" uk-margin>
								<li><a href="#"><span uk-pagination-previous></span></a></li>
								<li><a href="#">1</a></li>
								<li class="uk-disabled"><span>...</span></li>
								<li><a href="#">5</a></li>
								<li><a href="#">6</a></li>
								<li class="uk-active"><span>7</span></li>
								<li><a href="#">8</a></li>
								<li><a href="#"><span uk-pagination-next></span></a></li>
							</ul>
						</div>

						<!--试题信息 结束-->

					</li>
					<li>
						<!--教练信息 开始-->
						<h3>教练信息</h3>
						<div class="uk-container">
							<div class="uk-grid">
								<div class="uk-width-1-4">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照手机号排序</option>
											<option>文明类型</option>
											<option>实战类型</option>
											<option>上机考试类型</option>
											<option>训练类型</option>
										</select>
									</div>
								</div>
								<div class="uk-width-1-4">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照名字排序</option>
											<option>科目二</option>
											<option>科目三</option>
										</select>
									</div>
								</div>
								<div class="uk-width-1-4">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照时间排序</option>
											<option>日期从后到前</option>
											<option>日期从前到后</option>
										</select>
									</div>
								</div>
							</div>
						</div><br>


						<div class="uk-container">
							<div class="uk-grid">
								<div class="uk-width-3-4" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">

									<div class="uk-grid">
										<div class="uk-width-2-5">
											<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent "  src="images/man.png" width="100"  height="100">
										</div>
										<div class="uk-width-3-5">
											<h3>教练名字：教练</h3>
											<p>教练所属驾校：某某驾校</p>
										</div>

									</div>
									<div class="uk-grid" id="toggle-animation-multiple1" hidden>
										<div class="uk-width-1-2">
											<h5>是否实名：是</h5>
											<h5>类型：驾校负责人</h5>
											<h5>身份证：4444122456654</h5>
											<h5>驾照：C1</h5>
											<img   src="images/nav15.png" width="100"  height="100">

										</div>
										<div class="uk-width-1-2">
											<h5>地区：广东广州</h5>
											<h5>手机号码：15813058131</h5>
											<h5>邮箱：15813058131</h5>
											<h5>证件：身份证</h5>
											<img   src="images/nav14.png" width="100"  height="100">
										</div>

									</div>
								</div>
								<div class="uk-width-1-4">
									<div class="uk-grid">
										<div class="uk-width-1-1">
											<ul class="uk-iconnav">
												<li><a>
													<span class="uk-badge" uk-toggle="target: #toggle-animation-multiple1; animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
												</a>
												</li>
												<li><a href="#" uk-icon="icon: file-edit"></a></li>
												<li><a href="#" uk-icon="icon: trash"></a></li>
											</ul>
										</div>
									</div>

								</div>

							</div>


							<br>
							<div>
								<ul class="uk-pagination uk-flex-center" uk-margin>
									<li><a href="#"><span uk-pagination-previous></span></a></li>
									<li><a href="#">1</a></li>
									<li class="uk-disabled"><span>...</span></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li class="uk-active"><span>7</span></li>
									<li><a href="#">8</a></li>
									<li><a href="#"><span uk-pagination-next></span></a></li>
								</ul>
							</div>

						</div>

						<!--教练信息 结束-->


					</li>
					<li>
						<!--查找 开始-->
						<div class="uk-container">

							<div class="uk-grid">
								<div class="uk-width-1-3">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照类型查找</option>
											<option>文明类型</option>
											<option>实战类型</option>
											<option>上机考试类型</option>
											<option>训练类型</option>
										</select>
									</div>
								</div>
								<div class="uk-width-1-3">
									<div class="uk-margin">
										<select class="uk-select">
											<option>按照类型查找</option>
											<option>学员</option>
											<option>教练</option>
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
									<form class="uk-search uk-search-default uk-width-1-1">
										<span uk-search-icon></span>
										<input class="uk-search-input" type="search" placeholder="Search...">
									</form>
								</div>
								<div class="uk-width-1-4"><br>
									<button class="uk-button uk-button-primary">搜索</button>
								</div>
							</div>
						</div>

						<br><br>

						<!--查找显示 开始-->
					<div class="uk-grid">
						<div class="uk-width-3-4" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">

							<div class="uk-grid">
								<div class="uk-width-2-5">
									<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent "  src="images/man.png" width="100"  height="100">
								</div>
								<div class="uk-width-3-5">
									<h3>教练名字：教练</h3>
									<p>教练所属驾校：某某驾校</p>
								</div>

							</div>

						</div>
						<div class="uk-width-1-4">
							<div class="uk-grid">
								<div class="uk-width-1-1">
									<ul class="uk-iconnav">
										<li><a>
											<span class="uk-badge" uk-toggle="target: #toggle-animation-multiple1; animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
										</a>
										</li>
										<li><a href="#" uk-icon="icon: file-edit"></a></li>
										<li><a href="#" uk-icon="icon: trash"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div><br>


						<!--查找显示 结束-->

						<!--查找 结束-->
					</li>


				</ul>
			</div>

		</div>
	</div>

</div>




<!--管理用户 结束-->




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