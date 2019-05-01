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

<!--管理视频-->
<div class="uk-container">
	<div class="uk-flex uk-flex-center">
		<div>
			<ul uk-tab>
				<li><a href="#">全部视频</a></li>
				<li><a href="#">上传视频</a></li>
				<li><a href="#">查找视频</a></li>
			</ul>

			<ul class="uk-switcher uk-margin">
				<li><!--全部视频-->
					<div class="uk-container">
						<div class="uk-grid">
							<div class="uk-width-1-4">
								<div class="uk-margin">
									<select class="uk-select">
										<option>按照类型排序</option>
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
										<option>按照科目排序</option>
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
					
					<c:if test="${empty page.list}">
								<h3>无视频信息，请添加试题！</h3>
					</c:if>
					<c:if test="${not empty page.list}">
					
							<c:forEach items="${page.list}" var="p">
							<div>
									<div class="uk-grid">
										<div class="uk-width-3-4" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
			
											<div class="uk-grid">
												<div class="uk-width-2-5">
													<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent uk-width-1-1"  src="${pageContext.request.contextPath}/${p.video_img}" width="300" height="200" >
												</div>
												<div class="uk-width-3-5">
													<h3>${p.video_title}</h3>
													<p>作者：${p.video_author}</p>
												</div>
			
											</div>
											<div class="uk-grid" id="a${p.video_id }" hidden>
												<div class="uk-width-1-1">
													<h3>视频URL：</h3>
													<p>${p.video_url}</p>
													<h3>简介：</h3>
													<p>
													${p.video_introduce}
													</p>
												</div>
											</div>
										</div>
										<div class="uk-width-1-4">
											<div class="uk-grid">
												<div class="uk-width-1-1">
													<ul class="uk-iconnav">
														<li><a>
															<span class="uk-badge" uk-toggle="target: #a${p.video_id }" animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
														</a></li>
														<li><a href="${pageContext.request.contextPath}/admin/adminVideoEdt.jsp" uk-icon="icon: file-edit"></a></li>
														<li><a href="#" uk-icon="icon: copy"></a></li>
														<li><a href="#" uk-icon="icon: trash"></a></li>
													</ul>
												</div>
											</div>
			
										</div>
			
									</div>
							
							</div><br>
							</c:forEach>	
								
						
						<br><br>
						<%@ include file="/jsp/pageFile.jsp" %>
						<br><br><br>
						
					</c:if>


					</div>


				</li>
				<li><!--上传视频-->
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
				</li>
				<li><!--查找视频-->
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
										<option>按照科目查找</option>
										<option>科目二</option>
										<option>科目三</option>
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
					<!--查找显示-->
					<div class="uk-container">
						<div class="uk-grid">
							<div class="uk-width-3-4" uk-scrollspy="cls: uk-animation-slide-left; repeat: true">

								<div class="uk-grid">
									<div class="uk-width-2-5">
										<img class="uk-align-center uk-align-right@m uk-margin-remove-adjacent uk-width-1-1"  src="${pageContext.request.contextPath}/images/nav14.png" width="300" height="200" alt="Example image">
									</div>
									<div class="uk-width-3-5">
										<h3>热点标题</h3>
										<p>华软地铁将于2018年底开通，方便出行</p>
									</div>

								</div>
								<div class="uk-grid" id="toggle-animation-multiple3" hidden>
									<div class="uk-width-1-1">
										<h3>视频URL：</h3>
										<p>/images/nav16.png</p>
										<h3>简介：</h3>
										<p>武动乾坤之冰心在玉壶(第6集)
											导演: 张黎

											主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴

											地区: 内地

											简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。</p>
									</div>
								</div>
							</div>
							<div class="uk-width-1-4">
								<div class="uk-grid">
									<div class="uk-width-1-1">
										<ul class="uk-iconnav">
											<li><a>
												<span class="uk-badge" uk-toggle="target: #toggle-animation-multiple3; animation:  uk-animation-slide-left, uk-animation-slide-bottom">更多信息</span>
											</a>
											</li>
											<li><a href="#" uk-icon="icon: file-edit"></a></li>
											<li><a href="#" uk-icon="icon: copy"></a></li>
											<li><a href="#" uk-icon="icon: trash"></a></li>
										</ul>
									</div>
								</div>

							</div>

						</div>
					</div><br>

				</li>


			</ul>
		</div>


	</div>


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