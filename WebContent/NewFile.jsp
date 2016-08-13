<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Trendz Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/personalCenter.css">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery.min.js"> </script>
<script src="js/my.js"></script>
<!--webfonts-->
 <link href='http://fonts.useso.com/css?family=Raleway:400,100,200,300,500,600,700|Cinzel+Decorative:400,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<!--start-home-->
	<div class="full">
		<span class="menu"></span>
			<div class="navbar">
				 <a class="menu" href="#"><i class="icon-align-justify"></i></a>
				 <a class="link hme" href="index.html">
					<span class="active"><span class="valign"><span class="vertical">HOME</span></span></span>
					<span class="hover"><span class="valign"><span class="vertical">主&nbsp;页</span></span></span>
				  </a>
				  <a class="link abt" href="about.html">
					<span class="active"><span class="valign"><span class="vertical">RANK</span></span></span>
					<span class="hover"><span class="valign"><span class="vertical">排&nbsp;名</span></span></span>
				  </a>
				 <a class="link tdz" href="login.jsp">
					<span class="active"><span class="valign"><span class="vertical">JOIN</span></span></span>
					<span class="hover"><span class="valign"><span class="vertical">加&nbsp;入</span></span></span>
				  </a>
				  <a class="link" href="designers.html">
					<span class="active"><span class="valign"><span class="vertical">CULTURE</span></span></span>
					<span class="hover"><span class="valign"><span class="vertical">文&nbsp;化</span></span></span>
				  </a>
				   <a class="link con" href="contact.html">
					<span class="active"><span class="valign"><span class="vertical">CONTACT</span></span></span>
					<span class="hover"><span class="valign"><span class="vertical">联&nbsp;系</span></span></span>
				  </a>
			</div>
			<!-- script for menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".navbar" ).slideToggle( "slow", function() {
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
								 <span>&nbsp;&nbsp;Bole</span></h1></a>
							</div>
						</div>
					</div>
				</div>
			    <div class="login" style="text-align:right; overflow:hidden;">
				    <a  class="tdmyy"  href="login.jsp">登录</a>
				    <a  class="tdmyy"  href="register.jsp">&nbsp;&nbsp;注册&nbsp;&nbsp;</a>
			    </div>
		   </div>
		</div><br><br><br>
	<div style="background-image:url('images\my.jpg');">
		<h3 style="text-align:center;">哎呦，出错了，程序员正在努力开发中！</h3>
	</div>

	<!--/start-footer-section-->
		
	<!--//end-footer-section-->
			<!--/start-copyright-section-->
			
			<!--start-smoth-scrolling-->
			<!-- <script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
								</script>
							start-smoth-scrolling
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									}); -->
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>