<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*"
	import="com.opensymphony.xwork2.ActionContext"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Trendz Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery.min.js"> </script>
<!--webfonts-->
 <link href='http://fonts.useso.com/css?family=Raleway:400,100,200,300,500,600,700|Cinzel+Decorative:400,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<%
		ActionContext actionContext = ActionContext.getContext();
		Map sess = actionContext.getSession();
		String str="null";   
		if(sess.get("current_id")!=null){
			str=sess.get("current_id").toString();
		}
		System.out.println(str);		
	%>
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
             <div class="login" style="text-align:right; overflow:hidden;">
				<br/>
				<a style="color:#FFFF00;  font-size:18px" href="rank.action">HI，<%=str %>欢迎您，查看排名</a>
				<a style="color: #00E3E3; font-size: 15px" href="index.html">&nbsp;&nbsp;注销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			</div>
		<!--main-->
			<div class="main">
				<div id="home" class="header">
					<div class="header-top">
						<div class="container">
							<div class="logo">
								<a href="index.html"><h1>Now <br>
								<span>Bole</span></h1></a>
							</div>
						</div>
						</div>
					</div>
				<!--about-->
				<div class="about">
						<div class="second-head">
							<h2>About</h2>
							<p>封牛榜，取封神榜之意，借琅琊榜之名，意在寻找出高校大牛人物，“一卷江湖封牛榜，囊尽天下奇英才“。</p>
						</div>
				</div>
	
	<!----trends--->
	<div class="trends">
		    <div class="second-head">
				<h2>Join Us</h2>
				<p>想让“今世伯乐”发现你的美，想让你的一技之长释放光芒那就加入我们吧，COME ON ！</p>
			</div>
			<div class="grid">
					<figure class="effect-terry">
						<img src="images/t1.jpg" alt="摄影"/>
						<figcaption>
						<a href="rank.action"></a>
							<h2>NEW <span>摄影</span></h2>
							<p>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="share"></i></a>
								<a href="#"><i class="tag"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-terry">
						<img src="images/t2.jpg" alt="计算机网络"/>
						<figcaption>
						<a href="rank.action"></a>
							<h2>计算机 <span>网络</span></h2>
							<p>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="share"></i></a>
								<a href="#"><i class="tag"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-terry">
						<img src="images/t3.jpg" alt="体育健身"/>
						<figcaption>
						<a href="rank.action"></a>
							<h2>New <span>体育健身</span></h2>
							<p>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="share"></i></a>
								<a href="#"><i class="tag"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-terry">
						<img src="images/t6.jpg" alt="财务金融"/>
						<figcaption>
						<a href="rank.action"></a>
							<h2>New <span>财务金融</span></h2>
							<p>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="share"></i></a>
								<a href="#"><i class="tag"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-terry">
						<img src="images/t5.jpg" alt="餐饮烹饪"/>
						<figcaption>
						<a href="rank.action"></a>
							<h2>New <span>餐饮烹饪</span></h2>
							<p>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="share"></i></a>
								<a href="#"><i class="tag"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-terry">
						<img src="images/t7.jpg" alt="财务金融"/>
						<figcaption>
						<a href="rank.action"></a>
							<h2>New <span>PPT制作</span></h2>
							<p>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="share"></i></a>
								<a href="#"><i class="tag"></i></a>
							</p>
						</figcaption>			
					</figure>
				</div>
				<div class="clearfix"> </div>
			</div>
            
		
			<div class="bottom-section">
					<div class="second-head two" >
					   <h3 class="threed" >永远相信</h3><br><br>
					    <h3 class="threed" style="position:absolute;left:45%;" >美好的事情将要发生！</h3>
					</div>
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
								<p><a href="Mailto:384479747@qq.com">384479747@qq.com</a></p>
							</div>
					<!-- 			<div class="clearfix"></div>
								<div class="icon-3-square">
										<a href="#"><i class="square-3"></i></a>
								</div>
								<div class="icon-text">
								    <p>I like this Lorem ipsum dolor sit amet <a href="384479747@qq.com">384479747@qq.com</a></p>
								</div> -->
					<div class="clearfix"></div>
						</div>
						<div class="col-md-3 footer-grid flickr">
								<h4>排名</h4>
								<div class="border2"></div>
								<div class="flickr-grids">
										<div class="flickr-grid">
											<a href="#"><img src="images/t1.jpg" alt=""/></a>
										</div>
										<div class="flickr-grid">
											<a href="#"><img src="images/t2.jpg" alt=""/></a>
										</div>
										<div class="flickr-grid">
											<a href="#"><img src="images/t3.jpg" alt=""/></a>
										</div>
										<div class="flickr-grid">
											<a href="#"><img src="images/t6.jpg" alt=""/></a>
										</div>
										<div class="flickr-grid">
											<a href="#"><img src="images/t5.jpg" alt=""/></a>
										</div>
										<div class="flickr-grid">
											<a href="#"><img src="images/t7.jpg" alt=""/></a>
										</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
	<!--//end-footer-section-->
			<!--/start-copyright-section-->
					<div class="copyright">
						<p class="write">Copyright © 2016 nowbole.com All Rights Reserved |陕ICP备15015912号<a href="http://www.nowbole.com/" target="_blank" title="封牛榜">封牛榜</a> </p>
					</div>
			</div>
		</div>
			<!--start-smoth-scrolling-->
			<script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
								</script>
							<!--start-smoth-scrolling-->
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
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>