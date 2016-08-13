<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="com.model.*"  import="java.util.*"
	import="com.opensymphony.xwork2.ActionContext"
	import="com.google.gson.*" isELIgnored="false"%>
<head>
<title>个人主页</title>
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
	<%
		ActionContext actionContext = ActionContext.getContext();
		Map sess = actionContext.getSession();
		String str = null;
		if (sess.get("current_id") != null) {
			str = sess.get("current_id").toString();
		}
	%>
<body style="height:2000px">
	<!--start-home-->
	<div class="full">
		<span class="menu"></span>
			<div class="navbar" >
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
								 <a ><h1>Now <br>
								 <span>&nbsp;&nbsp;Bole</span></h1></a>
							</div>
						</div>
					</div>
				</div>
			  <div class="login" style="text-align: right; overflow: hidden;"><br/> 
			  <a style="color: #FFFF00; font-size: 18px" href="#">HI,<%=str%>欢迎你</a>
			   <a style="color: #00E3E3; font-size: 15px" href="index.html">&nbsp;&nbsp;注销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		   </div>
		</div><br><br><br>
		<%
		    List<user> list = new LinkedList<user>();
			JsonParser parser = new JsonParser();
			JsonArray array = parser.parse(sess.get("zhuye_list").toString())
					.getAsJsonArray();
			for (int i = 0; i < array.size(); i++) {
				JsonObject subObject = array.get(i).getAsJsonObject();
				list.add(new user(subObject.get("UserID " + i).toString(),"","",
						subObject.get("UserName "+ i)!=null?subObject.get("UserName " +i).toString() :"用户太懒，未填写真实姓名", 
						subObject.get("UserSex "+i)!=null?subObject.get("UserSex "+i).toString():"用户太懒，未填写性别",
						subObject.get("UserQQ "+i)!=null?subObject.get("UserQQ "+i).toString():"用户太懒，未填写QQ","",
					    subObject.get("UserTel "+i)!=null?subObject.get("UserTel "+i).toString():"用户太懒，未填写电话",
					    subObject.get("UserIc "+i)!=null?subObject.get("UserIc "+i).toString():"用户太懒，未填写个人说明",
					    subObject.get("UserMail "+i)!=null?subObject.get("UserMail "+i).toString():"用户太懒，未填写个人邮箱",
					    subObject.get("UserFans "+i)!=null?subObject.get("UserFans "+i).toString():"0",""
						));
				}
		Iterator it = list.iterator();
 		    /* while (it.hasNext()) {
				out.println("----------------------------   <br>");
				user u = (user) it.next();
				out.println(u.getUserID());*/
		%>
	<%!String string =null;%>
	<%
		user u = (user) it.next();
		string = u.getUserID();
		System.out.println(str);
		System.out.println(string);
		System.out.println(u.getUserName().replace("\"", ""));
		System.out.println(u.getUserFans().replace("\"", "")); 
	%>
	<div style="height:auto; width:1000px; position:absolute; left:200px;  top:280px; border:1px solid #444;">
			<div style="height:250px; width:100%; border-bottom:1px solid #444; position:relation;">
				
				<div style="width:98%; height:220px;background-color:#37383C;position:absolute; top:15px;left:1%">
					<div style="width:95%; height:auto; margin:0 auto;position:relation; ">
						<br/>
						<div style="height:150px; width:150px; border:1px solid #444;float:left;">
							<img src="images/touxiang.png" style="width:100%; height:100%" alt="头像" />
						</div>
						<div style="width:20px; height:150px; float:left"></div>
						<div style="width:300px; height:auto; float:left"> 
							<p style="color:#ddd; margin-bottom:14px"><%=u.getUserName().replace("\"", "") %></p>
							<div style="width:100px; height:20px;margin-bottom:14px">
								<img src="images/pingjiaxing.png" style="width:100%; height:100%" alt="星级"/>
							</div>
							<div style="width:20px; height:20px;margin-bottom:14px; float:left; margin-right:10px">
								<img src="images/xihuan.png" style="width:100%; height:100%" alt="星级"/>
							</div> <span style="color:#ddd; font-size:14px"><%=u.getUserFans().replace("\"", "") %></span>
							<div style="clear:both; height:55px; width:auto">
								<P style="color:#ED5D52;margin-bottom:8px;">专业技能：</P>
								<div style="font-size:15px;-webkit-border-radius:5px; border-radius:5px;height:20px;text-align:center;line-height:20px;float:left; border:1px solid #333; background-color:#444; margin-right:15px;color:#A0CDEB">算法编写</div>
								<div style="font-size:15px;-webkit-border-radius:5px; border-radius:5px;height:20px;text-align:center;line-height:20px;float:left; border:1px solid #333; background-color:#444; margin-right:15px;color:#A0CDEB">网站交互</div>
								<div style="font-size:15px;-webkit-border-radius:5px; border-radius:5px;height:20px;text-align:center;line-height:20px;float:left; border:1px solid #333; background-color:#444; margin-right:25px;color:#A0CDEB">美工、视觉交互</div>
							</div>							
						</div>
						<div style="width:150px; height:180px;float:right">
						    <a style="display:block;margin:10px auto;font-size:15px;-webkit-border-radius:5px; border-radius:5px;width:100px;height:30px;text-align:center;line-height:30px; border:1px solid #333; background-color:#444; margin-right:15px;color:#A0CDEB;"  href="rank.action">查看排名</a>
							<a style="display:block;margin:10px auto;font-size:15px;-webkit-border-radius:5px; border-radius:5px;width:100px;height:30px;text-align:center;line-height:30px; border:1px solid #333; background-color:#444; margin-right:15px;color:#A0CDEB;"  href="#">个人简介</a>
							<a style="display:block;margin:10px auto;font-size:15px;-webkit-border-radius:5px; border-radius:5px;width:100px;height:30px;text-align:center;line-height:30px; border:1px solid #333; background-color:#444; margin-right:15px;color:#A0CDEB;"  href="liuyan.action">留言板</a>
							<a style="display:block;margin:10px auto;font-size:15px;-webkit-border-radius:5px; border-radius:5px;width:100px;height:30px;text-align:center;line-height:30px; border:1px solid #333; background-color:#444; margin-right:15px;color:#A0CDEB;"  href="#">联系他</a>
						</div>
					</div>
				</div>
			</div>
			<div style="width:100%; height:auto">
				<div style="width:100%; height:400px; border-bottom:1px solid #ccc">
				<h2 style="color:white">作品展示</h2>
				   <image src=images/zuopin2.jpg; style="width:100%;height:100%">
				  </image>
				
				 
				
				</div>
			
			
			</div>
			
				
		</div>
</body>
</html>