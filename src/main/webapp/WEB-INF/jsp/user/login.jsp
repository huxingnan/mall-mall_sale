
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>
			sunshine商城_用户登录
		</title>
		<link rel="shortcut icon" type="image/icon" href="${pageContext.request.contextPath }/images/jd.ico">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css">
		 <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/small_image/zebre.png" type="image/x-icon" />
		</script>
	</head>
	<body>
		<div class="up">
			<img src="${pageContext.request.contextPath }/images/logo.jpg" height="45px;" class="hy_img"/>
			<div class="hy">
				欢迎登录
			</div>
		</div>
		<div class="middle">
			<div class="login">
				<div class="l1 ">
					<div class="l1_font_01 ">sunshine会员</div>
					<a class="l1_font_02 " href="${pageContext.request.contextPath }/user/goto_regist.do">用户注册</a>
				</div>
				<div class="blank_01"></div>
				<div class="ts">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<div class="blank_01"></div>
				<form action="${pageContest.request.contextPath}/user/login.do" id="login_form" method="post" enctype="application/x-www-form-urlencoded" >
					<div class="input1">
						<input type="text" class="input1_01" name="username"/>
					</div>
					<div class="blank_01"></div>
					<div class="blank_01"></div>
					<div class="input2">
						<input type="text" class="input1_01" name="pswd"/>
					</div>
				</form>
				<div class="blank_01"></div>
				<div class="blank_01"></div>
				<div class="box_01">
					<div class="box_01_both">
						<div class="box_01_both_2">忘记密码？</div>
					</div>
				</div>
				<div class="blank_01"></div>
				<a href="#" class="aline">
					<div class="red_button" onclick="login_to_submit()">
						登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录
					</div>
				</a>
				<div class="blank_01"></div>
				<div class="blank_01"></div>
				<div class="box_down">
					<div class="box_down_1">使用合作网站账号登录京东：</div>
					<div class="box_down_1">京东钱包&nbsp;&nbsp;|&nbsp;&nbsp;QQ 
					&nbsp;&nbsp;|&nbsp;&nbsp;微信
					</div>
				</div>
			</div>	
		</div>
		
		<div class="down">
			<br />
			Copyright©2004-2015  xu.jb.com 版权所有
		</div>
	</body>
<script type="text/javascript" src='${pageContext.request.contextPath }/js/jquery/jquery-3.2.0.js'></script>
<script type="text/javascript">

function login_to_submit(){
	var username=$("#login_form input[name='username']").val();
	if(username=''){
		 alert("用户名 不能为空");
		 return;
	}
	var pswd=$("#login_form input[name='pswd']").val();
	if(pswd=""){
		alert('密码不能为空');
		return;
	}
	var form=$("#login_form").serialize();
	$.ajax({
		'url':'${pageContext.request.contextPath}/user/login.do',
		'data':form,
		'type':'post',
		 success:function(result){
			 console.log(result);
			 if(result.message){
				 location.href="${pageContext.request.contextPath}/";
			 }else{
				 $(".login").find(".ts").first.html("用户名 或密码错误");
			 }
		 }
		
	});
}
   

</script>

</html>