<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>『花市网』订单列表页</title>
<link rel="stylesheet" type="text/css" href="manager/css/common.css" />
<link rel="stylesheet" type="text/css" href="manager/css/main.css" />
<script type="text/javascript" src="manager/js/libs/modernizr.min.js"></script>
<script type="text/javascript">
	function fun(input,thisId) {
		//alert(thisId);
		//var str = document.getElementById('id').value;
		window.location = "<c:url value='/OrderInfoServlet'/>?thisId=" + thisId;
		//alert(thisId);
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

</head>
<body>

	<div class="containers">

		<div class="topbar-wrap">
			<div class="topbar-inner">


				<div class="topbar-logo-wrap clearfix">

					<ul class="navbar-list clearfix">
						<li><a class="on" href="manager/index.jsp">花市网后台管理系统</a></li>


					</ul>

				</div>


				<div style="float:left">
					<marquee>管理员${loginMan.loginName}欢迎你！</marquee>
				</div>


				<div class="top-info-wrap">
					<ul class="top-info-list clearfix">

						<li><a href="manager/mnPwd.jsp" onClick="htmlChange(1)">修改密码</a></li>
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

				<div class="search-content">
					<form action="<c:url value="/FindOrder"/>" method="post">
						<table class="search-tab">
							<tr>

								<th width="70">关键字:</th>
								<td><input class="common-text" placeholder="关键字"
									name="keywords" value="" id="" type="text"></td>
								<td><input
									style="background-color:#F9A2B5; border:0; border-radius:5px; width:60px; color:#FFF; cursor:pointer; font-family:'Microsoft YaHei UI';font-size:16px;"
									name="sub" value="查询" type="submit"></td>
							</tr>
						</table>
					</form>
				</div>


				<div class="search-wrap">
					<div class="search-content"></div>
				</div>


				<div class="result-wrap">
					<form name="myform" id="myform" method="post">
						<div class="result-title">
							<div class="result-list">
								<a href="../manager1/insert.jsp"></a> <a id="batchDel"
									href="javascript:void(0)"></a>

							</div>
						</div>
						<div class="result-content" style="margin-top:-50px;">
							<table class="result-tab" width="1120px">
								<tr>
									<th style="text-align:center;">订单编号</th>
									<th style="text-align:center;">下单用户</th>
									<th style="text-align:center;">下单时间</th>
									<th style="text-align:center;">收货人</th>
									<th style="text-align:center;">发货地址</th>
									<th style="text-align:center;">收件人联系电话</th>
									<th style="text-align:center;">订单总价</th>

									<th style=" text-align:center;">操作</th>


								</tr>
								<c:forEach var="ord" items="${allOrd }">
									<tr align="center">

										<td>${ord.ordNo }</td>
										<td>${ord.users.getUsLoginName() }</td>
										<td>${ord.ordData }</td>
										<td>${ord.ordName }</td>
										<td>${ord.address }</td>
										<td>${ord.phone }</td>
										<td>${ord.ordPrice }</td>
										<td><a href="#" onclick="fun(this,'${ord.ordNo}')">订单详情</a></td>



									</tr>
								</c:forEach>
							</table>
							<div class="list-page">1/1 页</div>
						</div>
					</form>
				</div>

			</div>

		</div>

		


	</div>
	
</body>
</html>