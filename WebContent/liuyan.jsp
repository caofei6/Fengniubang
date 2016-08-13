<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="com.model.*"  import="java.util.*" import="com.dao.jdbc.jdbcDao" 
	import="com.opensymphony.xwork2.ActionContext"
	import="com.google.gson.*" isELIgnored="false"%>
<title>留言界面</title>
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
<body style="height:2000px">
	<%
		ActionContext actionContext = ActionContext.getContext();
		Map sess = actionContext.getSession();
		String str = null;
		if (sess.get("current_id") != null) {
			str = sess.get("current_id").toString();
		}
		System.out.println(str);

	    List<message> list = new LinkedList<message>();
		JsonParser parser = new JsonParser();
		JsonArray array = parser.parse(sess.get("message_list").toString()).getAsJsonArray();
		for (int i = 0; i < array.size(); i++) {
			JsonObject subObject = array.get(i).getAsJsonObject();
			list.add(new message(subObject.get("MessID "+i).toString(),
					subObject.get("UserID " + i)!=null?subObject.get("UserID " + i).toString():"null",
					subObject.get("UserID2 "+ i)!=null?subObject.get("UserID2 " +i).toString() :"null","",
					subObject.get("Message "+i)!=null?subObject.get("Message "+i).toString():"null",
					subObject.get("MessDate "+i)!=null?subObject.get("MessDate "+i).toString():"null"
					));
			}
	Iterator it = list.iterator();
	message m = (message) it.next();
	%>
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
			<div class="login" style="text-align: right; overflow: hidden;">
				<a style="color:#FFFF00;  font-size:18px" href="#">HI,<%=str%>，这是你的留言板
				</a> <a class="tdmyy" href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;注销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			</div>
		</div>
		</div><br><br><br>
		<div style="height:2500px; width:1000px; position:absolute; left:200px;  top:280px; border:1px solid #444">
			<div style="border-bottom:1px solid #444 ; width:95%; margin:0 auto; height:55px">
				<br/><p style="color:#305E67; font-famliy:"微软雅黑";"> 留言板</p>
			</div>

		<%!int i=0; 
		       String mess = null;
		%>
		<%
		jdbcDao dao = new jdbcDao("fengniubang");
		ResultSet res = dao.select_UserMess(str);
		try{
			while(res.next()){
			mess = res.getString("UserMess").replace("\\r", "\r").replace("\\t", "\t");
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		System.out.println("个人寄语: "+mess);
		
		%>
	    <form action = "editmymess.action?user=<%=m.getUserID().toString().replace("\"", "")%>"  method="post" > 
			<div style="border-bottom:1px solid #444 ; width:95%; margin:0 auto; height:25px">
				<p style="color:#666;float:left; font-famliy:"微软雅黑";"> 主人寄语</p> &nbsp;&nbsp;<a style="color:#305E67;font-size:12px">编辑您的寄语</a>
			</div>
			<div style="width:95%;margin:0 auto;border-bottom:1px solid #444 ;height:auto; position:relation">
			<div style="font-size:20px ; color:#999; background-color:#28282F; border-style:none ">
			<textarea id="jiyu"  name="mymess" cols="90" rows="5"><%=mess %></textarea>
			</div>
			<div>
			<input type="submit" value="提交" style="cursor: pointer;"/>
			</div>
		</div>
	  </form>
			<div >
				<p style="color:#666">榜友印象</p><br/>
				<div style="-webkit-border-radius:10px; border-radius:10px;height:30px;text-align:center;line-height:30px;float:left; border:1px solid #333; background-color:#444; margin-right:25px;margin-left:25px;color:#305E67">大神级别！</div>
				<div style="-webkit-border-radius:10px; border-radius:10px;height:30px;text-align:center;line-height:30px;float:left; border:1px solid #333; background-color:#444; margin-right:25px;margin-left:25px;color:#305E67">很和善</div>
				<div style="-webkit-border-radius:10px; border-radius:10px;height:30px;text-align:center;line-height:30px;float:left; border:1px solid #333; background-color:#444; margin-right:25px;margin-left:25px;color:#305E67">技术很专业</div>
				<div style="-webkit-border-radius:10px; border-radius:10px;height:30px;text-align:center;line-height:30px;float:left; border:1px solid #333; background-color:#444; margin-right:25px;margin-left:25px;color:#305E67">很负责任</div>
				<div style="position:absolute;left:50px;top:280px;border:1px solid #8396A9;background-color:#8396A9;  margin:2em auto 1em;   width:150px;   height:35px; -moz-border-radius:10px;   -webkit-border-radius:10px;   border-radius:10px;  ">
			 		<span style="display:block;float:left;font-size:40px;text-align:center;line-height:35px;">+</span>&nbsp;<span style="font-size:15px;text-align:center;line-height:35px;">我要对他进行描述</span>
				</div>
			</div>
			<form action="add_liuyan.action?user2=<%=m.getUserID2().toString().replace("\"", "")%>"  method="post" style="position:relation">
			<div style="width:90%; height:225px;position:absolute; top:350px; left:50px">
			 	<br/><p style="color:#999">发表您的留言</p>
					<textarea name="message" cols="115" rows="5"></textarea>
					<input style="position:absolute; bottom:0;left:0;background-color:#8396A9;border:0px;height:30px; width:60px;-moz-border-radius:3px;   -webkit-border-radius:3px;   border-radius:3px;" type="submit" value="发表"/>	
			</div>
			</form>
			<div style="width:90%; height:800px;position:absolute; top:630px; left:50px" >
			<div style=" border-bottom:1px solid #444;"><p style="color:#999;">留言</p></div>
				<%
		           int i = 0;
	               while(it.hasNext()){
	            	message u = (message) it.next();
	            	String string = u.getMessID();
	            	i++; 
	            	
				%>

				<div style="width:100%; height:180px; border-bottom:1px solid #444; ">
						<div ><br/>
							<div style="width:80px;height:80px; border:1px solid #444; background:url(images/touxiang.jpg) no-repeat ;background-size:100%;float:left;">
							</div>
							<div style="border:1px solid #444; width:90%; height:130px; float:right;">
							<p style="color:#999"><%=u.getUserID2().toString().replace("\"", "").replace("\\t", "\t").replace("\\r", "\r") %>:</p><br/>
							<p style="color:#999"><%=u.getMessage().toString().replace("\"", "").replace("\\t", "\t").replace("\\r", "\r") %></p><br/>
							<span style=" font-size:13px; color:#444"><%=u.getMessDate().replace("\"", "")%></span>&nbsp;
							<a style="color:#305E67;font-size:12px"href="#">回复</a>&nbsp;
							<a style="color:#305E67;font-size:12px"href="#">送礼</a>
							</div>
						</div>
					</div>
					
					
				<% }%>
			</div>
		</div>
     

</body>
</html>