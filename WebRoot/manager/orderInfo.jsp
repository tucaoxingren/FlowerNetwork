<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>『花市网』订单详情页</title>
<link rel="stylesheet" type="text/css" href="manager/css/common.css" />
<link rel="stylesheet" type="text/css" href="manager/css/main.css" />
<link href="manager/css/member.css" rel="stylesheet" type="text/css">

<link rel="shortcut icon" href="http://huashi.hqskjy.com/favicon.ico">
<link href="../css/base.css" rel="stylesheet" type="text/css">
<link href="../css/home_header.css" rel="stylesheet" type="text/css">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="manager/js/libs/modernizr.min.js"></script>

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


<style type="text/css" id="MEIQIA-ICON-STYLE">
.MEIQIA-ICON {
	background-size: 40px auto !important;
	background-repeat: no-repeat !important;
	background-image:
		url("http://static.meiqia.com/dist/images/icon-mq.png?v=m27dr61ixkanstt9")
		!important;
}

@media only screen and (-webkit-min-device-pixel-ratio: 2) , only screen and
		(min--moz-device-pixel-ratio: 2) , only screen and
		(-o-min-device-pixel-ratio: 2/1) , only screen and
	(min-device-pixel-ratio: 2) {
	.MEIQIA-ICON {
		background-image:
			url("http://static.meiqia.com/dist/images/icon-mq@2x.png?v=m27dr61ixkanstt9")
			!important;
	}
}

.MEIQIA-ICON-CHAT1 {
	background-position: 0 0 !important;
}

.MEIQIA-ICON-CHAT2 {
	background-position: 0 -20px !important;
}

.MEIQIA-ICON-CHAT3 {
	background-position: 0 -40px !important;
}

.MEIQIA-ICON-CHAT4 {
	background-position: 0 -60px !important;
}

.MEIQIA-ICON-CHAT5 {
	background-position: 0 -80px !important;
}

.MEIQIA-ICON-CHAT6 {
	background-position: 0 -100px !important;
}

.MEIQIA-ICON-CHAT7 {
	background-position: 0 -120px !important;
}

.MEIQIA-ICON-CHAT8 {
	background-position: 0 -140px !important;
}

.MEIQIA-ICON-CHAT9 {
	background-position: 0 -160px !important;
}

.MEIQIA-ICON-CHAT10 {
	background-position: 0 -180px !important;
}

.MEIQIA-ICON-CHAT11 {
	background-position: 0 -200px !important;
}

.MEIQIA-ICON-CHAT12 {
	background-position: 0 -220px !important;
}

.MEIQIA-ICON-TICKET1 {
	background-position: -20px 0 !important;
}

.MEIQIA-ICON-TICKET2 {
	background-position: -20px -20px !important;
}

.MEIQIA-ICON-TICKET3 {
	background-position: -20px -40px !important;
}

.MEIQIA-ICON-TICKET4 {
	background-position: -20px -60px !important;
}

.MEIQIA-ICON-TICKET5 {
	background-position: -20px -80px !important;
}

.MEIQIA-ICON-TICKET6 {
	background-position: -20px -100px !important;
}

.MEIQIA-ICON-TICKET7 {
	background-position: -20px -120px !important;
}

.MEIQIA-ICON-TICKET8 {
	background-position: -20px -140px !important;
}

.MEIQIA-ICON-TICKET9 {
	background-position: -20px -160px !important;
}

.MEIQIA-ICON-TICKET10 {
	background-position: -20px -180px !important;
}

.MEIQIA-ICON-TICKET11 {
	background-position: -20px -200px !important;
}

.MEIQIA-ICON-TICKET12 {
	background-position: -20px -220px !important;
}
</style>
<style type="text/css" id="MEIQIA-PANEL-STYLE">
#MEIQIA-PANEL-HOLDER {
	position: fixed;
	bottom: 0px;
	right: 30px;
	z-index: -1;
	width: 688px;
	height: 540px;
	padding: 0;
	margin: 0;
	overflow: hidden;
	visibility: hidden;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, .15);
	border: 1px solid #eee\0;
	*border: 1px solid #eee;
}

#MEIQIA-IFRAME {
	display: none;
	float: none;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 1;
	width: 100% !important;
	height: 100% !important;
	padding: 0;
	margin: 0;
	border: 0;
	background: none;
}

#MEIQIA-DRAG-HANDLE {
	float: none;
	position: absolute;
	top: 0;
	left: 0;
	right: 140px;
	z-index: 3;
	width: auto;
	height: 60px;
	border: 0;
	padding: 0;
	margin: 0;
	background: none;
	cursor: move;
}

#MEIQIA-DRAG-MASK {
	display: none;
	float: none;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2;
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
	border: 0;
	background: none;
}
</style>
<style type="text/css" id="MEIQIA-INVITE-STYLE">
#MEIQIA-INVITE,#MEIQIA-INVITE div,#MEIQIA-INVITE span {
	float: none;
	width: auto;
	height: auto;
	padding: 0;
	margin: 0;
	border: 0;
	background: none;
}

#MEIQIA-INVITE {
	position: fixed;
	z-index: 2147483647;
	display: none;
	width: 340px;
	height: 130px;
	margin-bottom: 64px;
	border: 1px solid #f7f7f7;
	border-radius: 4px;
	box-shadow: 0 0 14px 0 rgba(0, 0, 0, .16);
	text-align: left;
	cursor: pointer;
	color: #000;
	line-height: 1.428571429;
	background-color: #fff;
}

#MEIQIA-INVITE #MEIQIA-INVITE-ARROW1,#MEIQIA-INVITE #MEIQIA-INVITE-ARROW2
	{
	position: absolute;
	font-size: 0;
	line-height: 0;
}

#MEIQIA-INVITE #MEIQIA-INVITE-ARROW1 {
	z-index: 2;
}

#MEIQIA-INVITE #MEIQIA-INVITE-ARROW2 {
	z-index: 1;
}

#MEIQIA-INVITE {
	top: 50%;
	left: 50%;
	margin: -65px 0 0 -170px;
}

#MEIQIA-INVITE #MEIQIA-INVITE-ARROW1,#MEIQIA-INVITE #MEIQIA-INVITE-ARROW2
	{
	display: none;
}

#MEIQIA-INVITE #MEIQIA-INVITE-CLOSE {
	position: absolute;
	right: -20px;
	top: -20px;
	width: 40px;
	height: 40px;
	cursor: pointer;
	background-position: 0 -260px;
}

#MEIQIA-INVITE #MEIQIA-INVITE-CLOSE:hover {
	background-position: 0 -300px;
}

#MEIQIA-INVITE #MEIQIA-INVITE-INSIDE {
	width: 300px;
	height: 44px;
	margin: 46px 20px 0;
	text-align: left;
	font-size: 14px;
	line-height: 22px;
	overflow: hidden;
	color: #000; /*word-break: break-all;*/
}
</style>

<style type="text/css">
.set_chat {
	position: fixed;
	z-index: 1000;
	right: 80px;
	top: 30%;
	width: 120px;
}

.set_chat img {
	display: block;
	width: 150px;
	cursor: pointer;
}

.set_chat .chat_close {
	position: absolute;
	top: 0px;
	left: 0px;
}

.set_chat .chat_close img {
	width: 13px;
}

.set_chat .chat_order_search,.set_chat .chat_sh {
	position: absolute;
}

.set_chat .chat_order_search {
	bottom: 75px;
	display: inline-block;
	width: 100px;
	height: 30px;
	right: -10px;
}

.set_chat .chat_sh {
	bottom: 32px;
	display: inline-block;
	width: 100px;
	height: 30px;
	right: -10px;
	font-size: 14px;
	color: #CE7C53;
	text-align: center;
}
</style>

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

						<li><a href="mnPwd.jsp" onClick="htmlChange(1)">修改密码</a></li>
						<li><a href="<c:url value="/ExitMan"/>">退出</a></li>
					</ul>
				</div>


			</div>
		</div>



		<div class="xia">

			<div id="xiazuo" class="container clearfix">
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

				<form method="get" action="http://huashi.hqskjy.com/index.php"
					target="_self">
					<table class="ncm-search-table">
						<input type="hidden" name="act" value="member_order">
						<input type="hidden" name="recycle" value="">
						<tbody>
							<tr>
								<td>&nbsp;</td>
								<th>订单状态</th>
								<td class="w100"><select name="state_type">
										<option value="" selected="">所有订单</option>
										<option value="state_new">待付款</option>
										<option value="state_pay">待发货</option>
										<option value="state_send">待收货</option>
										<option value="state_success">已完成</option>
										<option value="state_noeval">待评价</option>
										<option value="state_cancel">已取消</option>
								</select></td>
								<th>下单时间</th>
								<td class="w240"><input type="text"
									class="text w70 hasDatepicker" name="query_start_date"
									id="query_start_date" value="" readonly><label
									class="add-on"><i class="icon-calendar"></i></label>&nbsp;–&nbsp;<input
									type="text" class="text w70 hasDatepicker"
									name="query_end_date" id="query_end_date" value="" readonly><label
									class="add-on"><i class="icon-calendar"></i></label></td>
								<th>订单号</th>
								<td class="w160"><input type="text" class="text w150"
									name="order_sn" value=""></td>
								<td class="w70 tc"><label class="submit-border"> <input
										type="submit" class="submit" value="搜索">
								</label></td>
							</tr>
						</tbody>
					</table>
				</form>
				<table class="ncm-default-table order">
					<thead>
						<tr>
							<th class="w10"></th>
							<th colspan="2">商品</th>
							<th class="w100">单价（元）</th>
							<th class="w40">数量</th>

							<th class="w120">订单金额</th>
							<th class="w100">交易状态</th>
							<th class="w150">交易操作</th>
						</tr>
					</thead>


					<tbody order_id="">
						<tr>
							<td colspan="19" class="sep-row"></td>
						</tr>

						<tr>
							<th colspan="19"><span class="ml10"> <!-- order_sn -->
									订单号：${ordInfo.get(0).getOrders().getOrdNo() }
							</span> <!-- order_time --> <span>下单时间：${date}</span> <!-- QQ -->
								<span member_id="1"> </span> <!-- 放入回收站 --> <!-- 还原订单 --></th>
						</tr>

						<!-- S 商品列表 -->
						<c:forEach var="flower" items="${flowers }">

							<tr>
								<td class="bdl"></td>
								<td class="w70"><div class="ncm-goods-thumb">
										<a href="#"
											target="_blank"><img
											src="image/${flower.pic }" onmouseover=""
											onmouseout="toolTip()"></a>
									</div></td>
								<td class="tl"><dl class="goods-name">
										<dt>
											<a href="http://huashi.hqskjy.com/goods-100757.jsp"
												target="_blank">${flower.flName }</a>
										</dt>
									</dl></td>
								<td>${flower.flPrice }</td>
								<td>${ordInfo.get(0).oiCount }</td>


								<!-- S 合并TD -->
								<td class="bdl" rowspan="3"><p class="">
										<strong>${orders.ordPrice }</strong>
									</p>
									<p class="goods-freight">（免运费）</p>
									<p title="支付方式：在线付款">在线付款</p></td>
								<td class="bdl" rowspan="3"><p>
										<span style="color:#999">已取消</span>
									</p> <!-- 物流跟踪 --></td>
								<td class="bdl bdr" rowspan="3">
									<!-- 永久删除 --> <!-- 锁定--> <!-- 取消订单 --> <!-- 退款取消订单 --> <!-- 收货 -->


									<!-- 评价 --> <!-- 已经评价 -->

								</td>
								<!-- E 合并TD -->
							</tr>

						</c:forEach>
						

					</tbody>
					<tfoot>
						<tr>
							<td colspan="19"><div class="pagination">
									<ul>
										<li><span>首页</span></li>
										<li><span>上一页</span></li>
										<li><span class="currentpage">1</span></li>
										<li><span>下一页</span></li>
										<li><span>末页</span></li>
									</ul>
								</div></td>
						</tr>
					</tfoot>
				</table>

			</div>

		</div>

		<div class="footer">@copyright</div>


	</div>
</body>
</html>