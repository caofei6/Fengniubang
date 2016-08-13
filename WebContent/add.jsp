<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Trendz Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/personalCenter.css"/>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/cropbox.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<link href='http://fonts.useso.com/css?family=Raleway:400,100,200,300,500,600,700|Cinzel+Decorative:400,700' rel='stylesheet' type='text/css'/>

</head>
<body>
	<!--start-home-->
	<div class="full">
		<span class="menu"></span>
		<div class="navbar">
			<a class="menu" href="#"><i class="icon-align-justify"></i></a> <a
				class="link hme" href="index.html"> <span class="active"><span
					class="valign"><span class="vertical">HOME</span></span></span> <span
				class="hover"><span class="valign"><span
						class="vertical">主&nbsp;页</span></span></span>
			</a> <a class="link abt" href="about.html"> <span class="active"><span
					class="valign"><span class="vertical">RANK</span></span></span> <span
				class="hover"><span class="valign"><span
						class="vertical">排&nbsp;名</span></span></span>
			</a> <a class="link tdz" href="login.jsp"> <span class="active"><span
					class="valign"><span class="vertical">JOIN</span></span></span> <span
				class="hover"><span class="valign"><span
						class="vertical">加&nbsp;入</span></span></span>
			</a> <a class="link" href="designers.html"> <span class="active"><span
					class="valign"><span class="vertical">CULTURE</span></span></span> <span
				class="hover"><span class="valign"><span
						class="vertical">文&nbsp;化</span></span></span>
			</a> <a class="link con" href="contact.html"> <span class="active"><span
					class="valign"><span class="vertical">CONTACT</span></span></span> <span
				class="hover"><span class="valign"><span
						class="vertical">联&nbsp;系</span></span></span>
			</a>
		</div>
		<!-- script for menu -->
		<script>
			$("span.menu").click(function() {
				$(".navbar").slideToggle("slow", function() {
					// Animation complete.
				});
			});
		</script>
		<!--main-->
		<div class="main">
			<div id="home" class="header two">
				<div class="header-top">
					<div class="container">
						<div class="logo two">
							<a><h1>Now <br> 
							     <span>&nbsp;&nbsp;Bole</span>
								</h1></a>
						</div>
					</div>
				</div>
			</div>
			<div class="login" style="text-align: right; overflow: hidden;">
				<a style="color: white;" href="login.jsp">登录</a> <a
					style="color: white;" href="register.jsp">&nbsp;&nbsp;注册&nbsp;&nbsp;</a>
			</div>

			<!--personal message-->
			<div id="mess">
				<div id="selectimg">
					<div class="container">
						<div class="imageBox">
							<div class="thumbBox"></div>
							<div class="spinner" style="display: none">Loading...</div>
						</div>
						<div class="action">
							<!-- <input type="file" id="file" style=" width: 200px">-->
							<div class="new-contentarea tc">
								<a href="javascript:void(0)" class="upload-img"> 
								<label for="upload-file">上传</label>
								</a> <input type="file" class="" name="upload-file" id="upload-file" />
							</div>
							<input type="button" id="btnCrop" class="Btnsty_peyton" value="裁切"/> 
							<input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+"/> 
							<input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-"/>
							 <input	type="button" id="btnZoomquit" class="Btnsty_peyton" value="退出"/>
						</div>
						<div class="cropped"></div>
					</div>
				</div>
				<form action="add.action" id="messinput" name="add" method="post">
					<table id="data-mess">
						<tr>
							<td>姓名：</td>
							<td class="widthright"><input name="UserName"
								class="inputshadow"></td>
						</tr>
						<tr>
							<td>手机号：</td>
							<td class="widthright"><input name="UserTel"
								class="inputshadow"></td>
						</tr>
						<tr>
							<td>QQ：</td>
							<td class="widthright"><input name="UserQQ"
								class="inputshadow"></td>
						</tr>
						<tr>
							<td>性别：</td>
							<td class="widthright"><input type="radio" name="UserSex"
								value="男" checked="checked" class="inputsex" />男 <input
								type="radio" name="UserSex" value="女"
								class="inputsex" />女</td>
						</tr>
						<tr>
							<td>个人简介：</td>
							<td class="widthright"><input name="UserIc" class="inputshadow"></td>
						</tr>
						<tr>
							<td>邮箱：</td>
							<td class="widthright"><input name="UserMail"
								class="inputshadow"></td>
						</tr>
						<tr>
							<td colspan="2" class="center"><button type="submit"
									value="提交">提交</button></td>
						</tr>
					</table>
				</form>
			</div>

			<!--/start-footer-section-->
			<div class="footer-section">
				<div class="footer-grids">
					<div class="col-md-3 footer-grid">
						<h4>Home</h4>
						<div class="border2"></div>
						<p>封牛榜主页</p>
						<p class="sub">如果你是大咖，那就加入我们，放射你的光芒吧！</p>
					</div>
					<div class="col-md-3 footer-grid tags">
						<h4>热门搜索</h4>
						<div class="border2"></div>
						<ul class="tag">
							<li><a href="#">C语言</a></li>
							<li><a href="#">Java语言</a></li>
							<li><a href="#">IOS应用开发</a></li>
							<li><a href="#">Android应用开发</a></li>
							<li><a href="#">Java EE企业级开发</a></li>
							<li><a href="#">Perzi制作</a></li>
							<li><a href="#">Matlab指导</a></li>
							<li><a href="#">PPT制作</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-grid tweet">
						<h4>联系方式</h4>
						<div class="border2"></div>
						<div class="icon-3-square">
							<a href="#"><i class="square-3"></i></a>
						</div>
						<div class="icon-text">
							<p>
								<a href="Mailto:384479747@qq.com">384479747@qq.com</a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-3 footer-grid flickr">
						<h4>排名</h4>
						<div class="border2"></div>
						<div class="flickr-grids">
							<div class="flickr-grid">
								<a href="#"><img src="images/t1.jpg" alt="" /></a>
							</div>
							<div class="flickr-grid">
								<a href="#"><img src="images/t2.jpg" alt="" /></a>
							</div>
							<div class="flickr-grid">
								<a href="#"><img src="images/t3.jpg" alt="" /></a>
							</div>
							<div class="flickr-grid">
								<a href="#"><img src="images/t6.jpg" alt="" /></a>
							</div>
							<div class="flickr-grid">
								<a href="#"><img src="images/t5.jpg" alt="" /></a>
							</div>
							<div class="flickr-grid">
								<a href="#"><img src="images/t7.jpg" alt="" /></a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--//end-footer-section-->
			<!--/start-copyright-section-->
			<div class="copyright">
				<p class="write">
					Copyright © 2016 nowbole.com All Rights Reserved |陕ICP备15015912号 <a
						href="http://www.nowbole.com/" target="_blank" title="封牛榜">封牛榜</a>
					- Collect from <a href="http://www.nowbole.com/" title="封牛榜"
						target="_blank">封牛榜</a>
				</p>
			</div>
		</div>
	</div>
	<!--start-smoth-scrolling-->

	<script type="text/javascript">
		$(window)
				.load(
						function() {
							var options = {
								thumbBox : '.thumbBox',
								spinner : '.spinner',
								imgSrc : 'images/avatar.jpg'
							}
							var cropper = $('.imageBox').cropbox(options);
							$('#upload-file').on('change', function() {
								var reader = new FileReader();
								reader.onload = function(e) {
									options.imgSrc = e.target.result;
									cropper = $('.imageBox').cropbox(options);
								}
								reader.readAsDataURL(this.files[0]);
								this.files = [];
							})
							$('#btnCrop')
									.on(
											'click',
											function() {
												var img = cropper.getDataURL();
												$('.cropped').html('');
												$('.cropped')
														.append(
																'<img src="'+img+'" align="absmiddle" style="width:64px;margin-top:4px;border-radius:64px;box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');
												$('.cropped')
														.append(
																'<img src="'+img+'" align="absmiddle" style="width:128px;margin-top:4px;border-radius:128px;box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');
												$('.cropped')
														.append(
																'<img src="'+img+'" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');
											})
							$('#btnZoomIn').on('click', function() {
								cropper.zoomIn();
							})
							$('#btnZoomOut').on('click', function() {
								cropper.zoomOut();
							})
						});
	</script>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

</body>
</html>