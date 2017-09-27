<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>『花市网』管理员密码修改页</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link href="css/anquan.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<script type="text/javascript">
function fun(){
	pwd = document.getElementById('pwd').value;
	//alert(pwd);
	window.location="<c:url value='/UpdateManPwd'/>?pwd="+pwd; 
}
</script>
<script type="text/javascript">
	function htmlChange(nu) {

		var frame = document.getElementById("frame");
		if (nu == 0) {
			frame.setAttribute("src", "glylb.jsp");
		} else if (nu == 1) {
			frame.setAttribute("src", "xggly.jsp");
		} else if (nu == 2) {
			frame.setAttribute("src", "glylb.jsp");
		} else if (nu == 3) {
			frame.setAttribute("src", "yhlb.jsp");
		} else if (nu == 4) {
			frame.setAttribute("src", "mjlb.jsp");
		} else if (nu == 5) {
			frame.setAttribute("src", "pllb.jsp");
		}

	}
</script>


<script type="text/javascript">
	setInterval("change()", 100);
	var index = 1;
	function change() {
		var mima = document.getElementById("mima1");
		var len = mima.value;
		var ff = len.length;
		if (ff<6&&ff>0) {
			index = 1;
		} else if (ff > 6 && ff < 12) {
			index = 2;
		} else if (ff > 12) {
			index = 3;
		} else if (ff < 1) {
			index = 0;
		}
		var btn1 = document.getElementById("btn1");
		var btn2 = document.getElementById("btn2");
		var btn3 = document.getElementById("btn3");
		if (index == 1) {
			btn1.style.visibility = "visible";
			btn2.style.visibility = "hidden";
			btn3.style.visibility = "hidden";
		} else if (index == 2) {
			btn1.style.visibility = "hidden";
			btn2.style.visibility = "visible";
			btn3.style.visibility = "hidden";
		} else if (index == 3) {
			btn1.style.visibility = "hidden";
			btn2.style.visibility = "hidden";
			btn3.style.visibility = "visible";
		} else if (index == 0) {
			btn1.style.visibility = "hidden";
			btn2.style.visibility = "hidden";
			btn3.style.visibility = "hidden";
		}
	}

	$(document).ready(function(e) {
		$("#mima2").blur(function() {
			if ($("#mima1").val() != $("#mima2").val()) {
				$("#tishi").jsp('两次输入的密码不同');
			} else {
				$("#tishi").jsp('');
			}
		});
	});
</script>

</head>
<body>

	<div class="containers">

		<div class="topbar-wrap">
			<div class="topbar-inner">


				<div class="topbar-logo-wrap clearfix">

					<ul class="navbar-list clearfix">
						<li><a class="on" href="index.jsp">花市网后台管理系统</a></li>


					</ul>

				</div>


				<div style="float:left">
					<marquee>管理员${loginMan.loginName}欢迎你！</marquee>
				</div>


				<div class="top-info-wrap">
					<ul class="top-info-list clearfix">

						<li><a href="mnPwd.jsp" onClick="htmlChange(1)">修改密码</a></li>
						<li><a href="<c:url value="/ExitMan"/>">退出</a></li>
					</ul>
				</div>


			</div>
		</div>



		<div class="xia">

			<div class="container clearfix">
				<div class="sidebar-wrap">
					<div class="sidebar-title">
						<h1>菜单</h1>
					</div>
					<div class="sidebar-content">
						<ul class="sidebar-list">
							<li><a href="<c:url value="/FindAllServlet"/>"
								style="margin-left:20px;">类型管理</a>
								<ul class="sub-menu">
									<li onClick="htmlChange(2)"><a
										href="<c:url value="/FindAllGood"/>">商品管理</a></li>
									<li onClick="htmlChange(3)"><a
										href="<c:url value="/FindAllUsers"/>">用户管理</a></li>
									<li onClick="htmlChange(4)"><a
										href="<c:url value="/FindAllOrder"/>">订单管理</a></li>

								</ul></li>
							<li></li>
						</ul>
					</div>
				</div>

			</div>

			<div class="sidebar-right">
				<form action="<c:url value="/UpdateManPwd"/>" method="post">
					<div id="content">
						<div id="yi">
							<div id="yi-1">&nbsp;密码修改</div>
						</div>
						<div id="er">
							<textarea
								style="width:550px; height:70px; margin-left:40px; margin-top:30px;"
								readonly disabled="disabled">
   
   为了更好的保护你的账号安全，避免你受到损失，建议你修改密码时：
    	1、先将电脑全面杀毒，在设置新密码
        2、不同的管理员账号使用不同的密码，不要设置和其他网络相同的密码
        
    </textarea>
							<p style="margin-top:10px;" class="p" id="pwd" >
								旧&nbsp;&nbsp;密
								&nbsp;&nbsp;码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="oldpwd"
									type="password" maxlength="16" />
							</p>
							<p style="margin-top:10px;" class="p">
								新&nbsp;&nbsp;密
								&nbsp;&nbsp;码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="newpwd"
									type="password" id="mima1" maxlength="16" />
							</p>
							<p style="color:#666; font-size:14px; margin-left:145px;">密码由0-16个字符组成,包含字母、数字（不能包含空格）</p>
							<p>&nbsp;</p>
							<div class="p" style="float:left; margin-top:2px">
								密码强度:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div id="input">
									<input class="type" id="btn1" value="低" type="button"
										style="background-color:#0F0; border:0px solid #0F0; visibility:hidden;" /><input
										class="type" id="btn2" value="中" type="button"
										style="background-color:#F90;border:0px solid #F90;visibility:hidden;" /><input
										class="type" id="btn3" value="高" type="button"
										style="background-color:#F00; visibility:hidden; border:0px solid #F00; " />
								</div>
							</div>

							<p class="p" style="clear:left;">
								确认密码： &nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="16" name="rnewpwd"
									type="password" id="mima2" />
							<p class="p" id="tishi"
								style="clear:left; color:#F00; margin-bottom:60px;"></p>
							<hr style="width:1114px;" />
        <p class="p">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <!--  <a href="<c:url value="/UpdateManPwd"/>" ></a>-->
        <input type="submit" value="修改" 
									style="background-color:#276AED; width:60px; height:25px; border:solid #06C; color:#FFF; margin-bottom:20px;" " />
			
		</p>				
    
						</div>
    
    
    
</div>
				</form>
         
         </div>

    </div>
    
    <div class="footer">@copyright</div>
    
    
</div>
</body>
</html>