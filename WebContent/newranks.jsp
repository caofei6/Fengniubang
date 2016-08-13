<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="com.model.*"  import="java.util.*"
	import="com.opensymphony.xwork2.ActionContext"
	import="com.google.gson.*" isELIgnored="false"%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>技能榜</title>
<meta name="keywords"
	content="New Trendz Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link rel="stylesheet" type="text/css" href="css/ranks.css">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js">
	
</script>
<!--webfonts-->
<link
	href='http://fonts.useso.com/css?family=Raleway:400,100,200,300,500,600,700|Cinzel+Decorative:400,700'
	rel='stylesheet' type='text/css'>
<!--//webfonts-->

</head>
<body>
	<%
		ActionContext actionContext = ActionContext.getContext();
		Map sess = actionContext.getSession();
		String str = null;
		if (sess.get("current_id") != null) {
			str = sess.get("current_id").toString();
		}
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
				  <a class="link abt" href="rank.action">
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
			<a style="color:#FFFF00;  font-size:18px" href="zhuye.action?user=<%=str %>">HI，<%=str %>进入个人主页</a>
			<a class="tdmyy" href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;注销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
			<!--main-->
			<div class="main">
				<div id="home" class="header two">
					<div class="header-top">
						<div class="container">
							<div class="logo two">
								 <a ><h1>Now <br>
								 <span>&nbsp;&nbsp;Bole</span></h1></a>
							</div>
						</div>
						</div>
					</div>
	
				<!--main-->
		<%
		    List<user> list = new LinkedList<user>();
			JsonParser parser = new JsonParser();
			JsonArray array = parser.parse(sess.get("rank_list").toString())
					.getAsJsonArray();
			for (int i = 0; i < array.size(); i++) {
				JsonObject subObject = array.get(i).getAsJsonObject();
				list.add(new user(subObject.get("UserID " + i).toString(),
						subObject.get("UserPho "+ i)!=null?subObject.get("UserPho " +i).toString() :"null", "",
						subObject.get("UserName "+i)!=null?subObject.get("UserName "+i).toString():"null",
						subObject.get("UserSex "+i)!=null?subObject.get("UserSex "+i).toString():"null",
					    subObject.get("UserQQ "+i)!=null?subObject.get("UserQQ "+i).toString():"null","","",
					    subObject.get("UserIc " +i)!=null?subObject.get("UserIc " +i).toString(): "null","",
					    subObject.get("UserFans "+i)!=null?subObject.get("UserFans "+i).toString():"null",		
				        subObject.get("State "+i)!=null?subObject.get("State "+i).toString():"null"
						));
				}
		Iterator it = list.iterator();
 		    /* while (it.hasNext()) {
				out.println("----------------------------   <br>");
				user u = (user) it.next();
				out.println(u.getUserID());
				out.println(u.getUserName());
				out.println(u.getUserSex());
				out.println(u.getUserQQ());
				out.println(u.getUserFans());
				out.println("<br>");
			}    */
		
		%>

			<!--ranks message-->
			<div class="projectname">
				<table cellspading="0" cellpadding="0" class="tablename">
					<tr>
						<td class="tdfont">计算机</td>
						<td class="tdfont">摄影</td>
						<td class="tdfont">绘面</td>
						<td class="tdfont">体育</td>
						<td class="tdfont">金融</td>
					</tr>
				</table>
			</div>
			
     <%!String string; 
            
     
     %>
     <%
           int i = 0;
            while(it.hasNext()){
            	user u = (user) it.next();
            	string = u.getUserID();
            	i++; 
            	
     %>
     
			<div id="rank" style="">
				<table id="data-ranks" style="">
					<tr class="hrtable" >
						<td class="tdnum"><%=i %> </td>
						<td class="tdimg"> <img src="images/t5.jpg"></td>
						<td class="tdname"><%=u.getUserName().replace("\"", "") %></td>
						<td class="widthright1">
						<div class="data-input"><%=u.getUserIc().replace("\"", "") %>	                                                  
						</div></td>
						<td><a href="dianzan.action?user=<%=u.getUserID().replace("\"", "") %>&state=<%=u.getState().replace("\"", "")%>"><img src="images/xihuan.png"><%=u.getUserFans().replace("\"", "") %></a></td> 
						<%-- <td><a href="xindianzan.action?u1=<%=u.getUserID().replace("\"", "") %>&u2=<%=str%>"><img src="images/xihuan.png"><%=u.getUserFans().replace("\"", "") %></a></td> --%>
					</tr>

				</table>
			</div>
			<%
            }
			
			
			%>

			<!--/start-copyright-section-->
			<div class="copyright">
				<p class="write">
					Copyright &copy; 2015.Company name All rights reserved.More
					Templates <a href="http://www.nowbole.com/" target="_blank"
						title="封牛榜">封牛榜</a> - Collect from <a
						href="http://www.nowbole.com/" title="封牛榜" target="_blank">封牛榜</a>
				</p>
			</div>
		</div>
	</div>
	<!--start-smoth-scrolling-->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
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

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

</body>
</html>s