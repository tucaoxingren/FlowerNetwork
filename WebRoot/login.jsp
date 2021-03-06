<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>花市网 - 登&nbsp;&nbsp;&nbsp;录</title>
<meta name="keywords" content="花市网">
<meta name="description" content="花市网">
<link href="css/base.css" rel="stylesheet" type="text/css">
<link href="css/home_header.css" rel="stylesheet" type="text/css">
<link href="css/member_login.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet">

<script src="js/jquery.js"></script>
<script src="js/jquery.validation.min.js"></script>
<script src="js/taglibs.js"></script>
<script src="js/tabulous.js"></script>
</head>
<body>
	<div class="header-wrap">
		<header class="public-head-layout wrapper">
			<h1 class="site-logo">
				<a href="<c:url value="FindAllTypeServlet"/>"><img
					src="image/05166631110429063.jpg" class="pngFix"></a>
			</h1>
			<div class="nc-regist-now">
				<span class="avatar"><img
					src="image/default_user_portrait.gif"></span> <span>您好，欢迎来到花市网<br>还不是本站会员？立即<a
					title="" href="register.jsp" class="register">注册</a></span>
			</div>
		</header>
	</div>
	<!-- PublicHeadLayout End -->
	<div id="append_parent"></div>
	<div id="ajaxwaitid"></div>

	<div class="nc-login-layout">
		<div class="left-pic">
			<img src="image/login.jpg" border="0">
		</div>
		<div class="nc-login">
			<div class="arrow"></div>
			<div class="nc-login-mode">
				<ul class="tabs-nav">
					<li><a href="#" class="tabulous_active">用户登录<i></i></a></li>

				</ul>
				<div id="tabs_container" class="tabs-container"
					style="height: 325px;">
					<div id="default" class="tabs-content"
						style="position: absolute; top: 0px;">
						<form id="login_form" class="nc-login-form" method="post"
							action=" <c:url value="UsersLogin"/>">
							<input type="hidden" name="formhash"
								value="i74gxzF9Kv5aNypgG2qJK7jLEAdylJE"> <input
								type="hidden" name="form_submit" value="ok"> <input
								name="nchash" type="hidden" value="cbcda2fa">
							<dl>
								<dt>账&nbsp;&nbsp;&nbsp;号：</dt>
								<dd>
									<input type="text" class="text" autocomplete="off"
										name="user_name" tipmsg="可使用已注册的用户名或手机号登录" id="user_name"
										style="color: rgb(187, 187, 187);">

								</dd>

							</dl>
							<dl>
								<dt>密&nbsp;&nbsp;&nbsp;码：</dt>
								<dd>
									<input type="text" class="text" name="password"
										autocomplete="off" tipmsg="6-20个大小写英文字母、符号或数字" id="password"
										style="color: rgb(187, 187, 187);">
								</dd>
							</dl>





							<div class="handle-div">
								<span class="auto"><input type="checkbox"
									class="checkbox" name="auto_login" value="1">七天自动登录<em
									style="display: none;">请勿在公用电脑上使用</em></span> <a class="forget"
									href="#">忘记密码？</a>
							</div>


							<div class="submit-div">
								<input type="submit" class="submit" value="登   录"> <input
									type="hidden" value="http://huashi.hqskjy.com/" name="ref_url">
							</div>



						</form>
					</div>

				</div>
			</div>
			<div class="nc-login-api" id="demo-form-site">
				<h4>您可以用合作伙伴账号登录：</h4>
				<a href="#" title="QQ账号登录" class="qq"><i></i>QQ</a>
			</div>
		</div>

	</div>

	<script>
		$(function() {
			//初始化Input的灰色提示信息
			$('input[tipMsg]').inputTipText({
				pwd : 'password'
			});
			//登录方式切换
			$('.nc-login-mode').tabulous({
				effect : 'flip'//动画反转效果
			});
			var div_form = '#default';
			$(".nc-login-mode .tabs-nav li a").click(function() {
				if ($(this).attr("href") !== div_form) {
					div_form = $(this).attr('href');
					$("" + div_form).find(".makecode").trigger("click");
				}
			});

			$("#login_form")
					.validate(
							{
								errorPlacement : function(error, element) {
									var error_td = element.parent('dd');
									error_td.append(error);
									element.parents('dl:first').addClass(
											'error');
								},
								success : function(label) {
									label.parents('dl:first').removeClass(
											'error').find('label').remove();
								},
								submitHandler : function(form) {
									ajaxpost('login_form', '', '', 'onerror');
								},
								onkeyup : false,
								rules : {
									user_name : "required",
									password : "required",
									captcha : {
										required : true,
										remote : {
											url : 'index.php?act=seccode&op=check&nchash=cbcda2fa',
											type : 'get',
											data : {
												captcha : function() {
													return $('#captcha').val();
												}
											},
											complete : function(data) {
												if (data.responseText == 'false') {
													document
															.getElementById('codeimage').src = 'index.php?act=seccode&op=makecode&type=50,120&nchash=cbcda2fa&t='
															+ Math.random();
												}
											}
										}
									}
								},
								messages : {
									user_name : "<i class='icon-exclamation-sign'></i>请输入已注册的用户名或手机号",
									password : "<i class='icon-exclamation-sign'></i>密码不能为空",
									captcha : {
										required : '<i class="icon-remove-circle" title="验证码不能为空"></i>',
										remote : '<i class="icon-remove-circle" title="验证码不能为空"></i>'
									}
								}
							});

			// 勾选自动登录显示隐藏文字
			$('input[name="auto_login"]').click(function() {
				if ($(this).attr('checked')) {
					$(this).attr('checked', true).next().show();
				} else {
					$(this).attr('checked', false).next().hide();
				}
			});

			$("#post_form")
					.validate(
							{
								errorPlacement : function(error, element) {
									var error_td = element.parent('dd');
									error_td.append(error);
									element.parents('dl:first').addClass(
											'error');
								},
								success : function(label) {
									label.parents('dl:first').removeClass(
											'error').find('label').remove();
								},
								submitHandler : function(form) {
									ajaxpost('post_form', '', '', 'onerror');
								},
								onkeyup : false,
								rules : {
									phone : {
										required : true,
										mobile : true
									},
									captcha : {
										required : true,
										minlength : 4,
										remote : {
											url : 'index.php?act=seccode&op=check&nchash=cbcda2fa',
											type : 'get',
											data : {
												captcha : function() {
													return $('#image_captcha')
															.val();
												}
											},
											complete : function(data) {
												if (data.responseText == 'false') {
													document
															.getElementById('sms_codeimage').src = 'index.php?act=seccode&op=makecode&type=50,120&nchash=cbcda2fa&t='
															+ Math.random();
												}
											}
										}
									},
									sms_captcha : {
										required : function(element) {
											return $("#image_captcha").val().length == 4;
										},
										minlength : 6
									}
								},
								messages : {
									phone : {
										required : '<i class="icon-exclamation-sign"></i>请输入正确的手机号',
										mobile : '<i class="icon-exclamation-sign"></i>请输入正确的手机号'
									},
									captcha : {
										required : '<i class="icon-remove-circle" title="请输入正确的验证码"></i>',
										minlength : '<i class="icon-remove-circle" title="请输入正确的验证码"></i>',
										remote : '<i class="icon-remove-circle" title="请输入正确的验证码"></i>'
									},
									sms_captcha : {
										required : '<i class="icon-exclamation-sign"></i>请输入六位短信动态码',
										minlength : '<i class="icon-exclamation-sign"></i>请输入六位短信动态码'
									}
								}
							});
		});
	</script>

	<div id="footer" class="wrapper">

		<p>
			<a href="<c:url value="FindAllTypeServlet"/>">首页</a> | <a href="#">购物指南</a>
			| <a href="#">支付方式</a> | <a href="#">配送方式</a> | <a href="#l">售后服务</a>
			| <a href="#l">相关知识</a> | <a href="#l">帮助中心</a>
		</p>
		Copyright 2017 Copyright© 2005-2017 中网慧谷网络科技（北京）有限公司 版权所有，并保留所有权利。 All
		rights reserved <br>
	</div>

	<c:if test="${error!=null }">
		<script type="text/javascript">
			alert("${error}");
		</script>
	</c:if>


</body>
</html>