<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>

<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<meta charset="UTF-8">
<title>『花市网』后台首页</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>

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
							<li><a href="<c:url value="/FindAllServlet"/>" style="margin-left:20px;">类型管理</a>
								<ul class="sub-menu">
									<li onClick="htmlChange(2)"><a href="<c:url value="/FindAllGood"/>">商品管理</a></li>
									<li onClick="htmlChange(3)"><a href="<c:url value="/FindAllUsers"/>">用户管理</a></li>
									<li onClick="htmlChange(4)"><a href="<c:url value="/FindAllOrder"/>">订单管理</a></li>

								</ul></li>
							<li></li>
						</ul>
					</div>
				</div>

			</div>

			<div class="sidebar-right">
				<p
					style="text-align:center;height:500px;line-height:500px;font-size:36px;font-weight:900;">欢迎管理员${loginMan.loginName}登录花市网后台管理系统！</p>
			</div>

		</div>

		<div class="footer">@copyright</div>


	</div>
</body>
</html>