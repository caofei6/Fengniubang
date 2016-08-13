function firm()
{
        //利用对话框返回的值 （true 或者 false）
      if(confirm("你确认密码无误了吗？"))
     {
            //如果是true ，那么就把页面转
            location.href="login.action";
     }
    else
    {
             alert("你按了取消，你是不是傻？");
    }
}

function ale()
{
      alert("我敢保证，你现在用的是演示一");
}

function prom()
{
    var name=prompt("请输入您的名字","");//将输入的内容赋给变量 name ，
    //这里需要注意的是，prompt有两个参数，前面是提示的话，后面是当对话框出来后，在对话框里的默认值
    if(name)//如果返回的有内容
    {
         alert("欢迎您："+ name)
     }
}

function login() {
    // console.info("点击了登录");
    var userName = $("#uName").val();
    // console.info(userName)
    var userPass = $("#uPass").val();
    // console.info(userPass);
    if (userName == "" || userName == null) {
        alert("用户名不能为空");
        return false;
    } else if (userPass == "" || userPass == null) {
        alert("密码不能为空");
        return false;
    } else {
        return true;
    }
}

function checkname()    
{
    var name = document.getElementById("uName").value;  
    var ts = document.getElementById("namets");
    if(name.length<3|| name.length>15)    
    {   
        ts.innerHTML ="用户名长度须在3-15之间!";
        ts.style.color="red";
        return false;
    }
    $.post("checkUserName.action", {" userName": name },function(data){
        var d = $.parseJSON(data);
        //console.log(d.success);
        if(d.success!=true){
            ts.innerHTML ='用户名已存在!';
            ts.style.color='red';
             return true;
        }
    });
    ts.innerHTML ='用户名可以使用！';
    ts.style.color='green';
    return true;
}

function checkpass(){
    var userPass = $("#uPass").val();
     
    var pts = document.getElementById("mima");
     
    if(userPass.length<6 || userPass.length >15)  
    {   
        pts.innerHTML ="密码长度须在6-15之间!";
        pts.style.color="red";
        return false;
    }
    pts.innerHTML ="密码可以使用!";
    pts.style.color="green";
    return true;
}

function checkrpass(){
    var userPass = $("#uPass").val();
    var userRPass = $("#uRPass").val();
    var prts =  document.getElementById("mimaa");
    if (userPass != userRPass) {
        prts.innerHTML="两次密码输入不一致!";
        prts.style.color="red";
        return false;
    }
    prts.innerHTML ="输入一致!";
    prts.style.color="green";
    return true;
}

function isEmail(str){
    var reg = /[a-z0-9-]{1,30}@[a-z0-9-]{1,65}.[a-z]{3}/;
    return reg.test(str);
}
 
function checkemail(){
    var userEmail = $("#uEmail").val();
    var ets = document.getElementById("emailts");
    if(!isEmail(userEmail)){
        ets.innerHTML ="邮箱格式不正确!";
        ets.style.color="red";
        return false;
    } 
    ets.innerHTML ="邮箱可以使用!";
    ets.style.color="green";
    return true;
}

function register() {
    if(!checkname()){
        return false;
    }else if (!checkpass()) {
        return false;
    } else if(!checkemail()){
        return false;
    } 
    return true;
}
 
$("#uploadFileBtn").click(function(){
	var fileUrl = $("#fileUrl").val();
	if(fileUrl){
		$("#pdfFrom").form('submit',{
			url:"uploadTdxIExamPdf.do",
			success:function(data){
				alert(data);
			}
		});
	}else{
		alert("上传文件不可为空");
	}
});
	
	
	
	


