<%@page import="com.flower.servlet.AddCartServlet"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="css/bus.css" />
<script type="text/javascript" src="js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="js/bus.js"></script>
<script>
function fun(){
	//window.location="<c:url value='AddCollectionServlet?flNo=${flower.flNo}'/>";
	
	//alert("收藏成功");
	//alert(document.getElementById('priceTotal').value);
}
</script>
</head>

<body>
	<div id="all">
		<!--top-->
		<div id="top">
			<!--one-->
			<div class="topOne">
				<!--one1-->
				<div class="topOne1">
					<c:if test="${loginUser == null }">
						<div class="topOne1_left">
							你好，欢迎来到<i><a href="<c:url value="FindAllTypeServlet"/>">花市网</a></i> [<i><a
								href="login.jsp">登录</a></i>][<i><a href="register.jsp">注册</a></i>]
						</div>
					</c:if>
					<c:if test="${loginUser != null }">
						<div class="topOne1_left">
							你好<a href="<c:url value="userLogo.jsp"/>">${ loginUser. usLoginName}</a>,欢迎来到<i><a
								href="<c:url value="FindAllTypeServlet"/>">花市网</a></i> [<i><a
								href="<c:url value="ExitServlet"/>">退出</a></i>]

						</div>
					</c:if>

					<div class="topOne1_reight">
						<ul>
							<li><a href="#">邀请返利</a></li>
							<li><a href="#" style="color:#F00;">订单查询</a></li>
							<li><a href="#">投诉建议</a></li>
							<li onmouseover="showOrd()" onmouseout="hidord()"><a
								href="#">我的订单</a></li>
							<li onmouseover="showColl()" onmouseout="hidcoll()"><a
								href="#">我的收藏</a></li>
							<li onmouseover="showCli()" onmouseout="hidCli()"><a
								href="#">客户服务</a></li>
						</ul>
					</div>
					<!--right-->
					<!--我的订单-->
					<div class="myOrder" id="myord" style="display:none;"
						onmouseover="showOrd()" onmouseout="hidord()">
						<ul>
							<li>我的订单</li>
							<li class="myord"><a href="#">待付款订单</a></li>
							<li class="myord"><a href="#">待确认收货</a></li>
							<li class="myord"><a href="#">待评论交易</a></li>
						</ul>
					</div>
					<!--我的收藏collect-->
					<div class="myOrder" id="mycoll"
						style="display:none; height:60px; margin-left:1032px;"
						onmouseover="showColl()" onmouseout="hidcoll()">
						<ul>
							<li>我的收藏</li>
							<li class="myord"><a href="#">商品收藏</a></li>
						</ul>
					</div>
					<!--客户服务client-->
					<div class="myOrder" id="myCli"
						style="display:none; margin-left:1115px;" onmouseover="showCli()"
						onmouseout="hidCli()">
						<ul>
							<li>客户服务</li>
							<li class="myord"><a href="#">帮助中心</a></li>
							<li class="myord"><a href="#">售后服务</a></li>
							<li class="myord"><a href="#">客服中心</a></li>
						</ul>
					</div>

				</div>
				<!--one1-->
				<!--one2-->
				<div class="topOne2">
					<img src="image/hs_top.jpg" />
				</div>
				<!--one2-->
				<!--one3-->
				<div class="topOne3">
					<!--上-->
					<div class="topOne3_shang">
						<div class="topOne3_shang_logo">
							<a href="<c:url value="FindAllTypeServlet"/>"><img src="image/baixing_log.jpg" /></a>
						</div>
						<!--中-->
						<div class="topOne3zhong">
							<!--1-->
							<a href="#" title="请输入你要搜索的商品关键字"><div class="topOne3zhong1">商品</div></a>
							<!--1-->
							<!--2-->
							<div class="topOne3zhong2">
								<input type="text" placeholder="请输入你要搜索的商品关键字"
									style=" float:left;width:370px; height:36px;" /> <a href="#"><div
										class="topOne3zhong2suo">搜索</div></a>
							</div>
							<!--2-->
							<!--3-->
							<div class="topOne3zhong3">
								<ul>
									<li style="margin-left:0px;">热门搜索：</li>
									<li><a href="#">情人节</a></li>
									<li><a href="#">玫瑰</a></li>
									<li><a href="#">百合</a></li>
									<li><a href="#">蓝色妖姬</a></li>
									<li><a href="#">爱情</a></li>
									<li><a href="#">花篮</a></li>
									<li><a href="#">教师</a></li>
									<li><a href="#">七夕</a></li>
								</ul>
							</div>
							<!--3-->

						</div>
						<!--中-->
						<!--联系-->
						<div class="topOne3Phone">
							<img src="image/tel.png" style="float:left;" width="25"
								height="25" /><i>4009-670-677</i>
						</div>
						<div class="topOne3fu">
							<img src="image/kf.gif" style="float:left;" width="25"
								height="25" /><i>在线客服</i>
						</div>




						<!--购物车-->
						<div id="ee">
							<div class="eeshu">${totalnum }</div>
							<!--原页面得时候-->
							<a href="#"><span><img src="image/buslogo.png"
									style=" float:left;" /></span>&nbsp;购物车结算<span></span> <!--原始--></a>

							<!--鼠标放上去的时候显示的-->
							<a href="busOrder.jsp">
								<div class="ee">

									<span><img src="image/buslogo.png" style=" float:left;" /></span>
									&nbsp;购物车结
									<!--原始-->
								</div>
							</a>
							<!--购物车下面内容-->
							<div class="eeCount">
								<!--top-->
								<div class="eeCountTop">
									<div class="eeCountTopOne">最新加入的商品</div>
									<div class="eeCountTopTwo">
										<a href="#">[清空购物车]</a>
									</div>
								</div>
								<!--top-->

								<!--商品-->
								<c:forEach items="${cart}" var="list">
									<div class="eCcentOne">
										<div class="eCcentOneImg">
											<a href="#"><img src="image/${list.pic}" /></a>
										</div>
										<a href="#"><div class="eCcentOneFont">${list.flName}</div></a>
									</div>
									<!--价格、删除-->
									<div class="eCcentTwo">
										<div class="eCcentTwo1">${list.flPrice }X${list.flCount }</div>
										<div class="eCcentTwo2">
											<a href="#">删除</a>
										</div>
									</div>
								</c:forEach>
								<!---countent-->

								<!--商品-->

								<!---countent-->

								<!--结算-->
								<div class="eeCountWei">
									<div class="eeCountWei1">
										共<i>${totalnum }</i>种商品&nbsp;&nbsp;总金额：<em>￥${total}</em>
									</div>
									<a href="busOrder.jsp"><div class="eeCountWei2">结算购物车中的商品</div></a>
								</div>
							</div>
							<!--购物车下面内容-->

						</div>



					</div>
					<!--上-->

				</div>
				<!--one3-->

			</div>
			<!--one-->
		</div>
		<!--top-->

		<!--content-->
		<div id="content">
			<!--contSan-->
			<div class="contentTop">
				<div class="contentTop1">1.我的购物车</div>
				<div class="contentTop2">2.填写核对订单信息</div>
				<div class="contentTop2">3.成功提价订单</div>
			</div>
			<!--contSan-->

			<!--购物车-->
			<div id="contentOne">
				<div class="registerform" id="busMy" style="display:block;">
					<table id="cartTable">
						<thead>
							<tr>
								<th><label><input class="check-all check"
										type="checkbox" />&nbsp;全选</label></th>
								<th>商品</th>
								<th>单价</th>
								<th>数量</th>
								<th>小计</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cart}" var="list">
								<tr>
									<td class="checkbox"><input class="check-one check"
										type="checkbox" /></td>
									<td class="goods"><a href="#"><img src="image/${list.pic}" alt="" /></a> <a href="#"><span>${list.flName}</span></a></td>
									<td class="price">${list.flPrice }</td>
									<td class="count"><span class="reduce"></span><input
										class="count-input" type="text" value="${list.flCount }" /><span
										class="add">+</span></td>
									<td class="subtotal">${list.flCount*list.flPrice }</td>
									<td class="operation"><span class="delete">删除</span></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<form action="<c:url value="SettlementServlet"/>">

						<div class="foot" id="foot">
							<label class="fl select-all" style=" width:100px;"> <input
								type="checkbox" class="check-all check" />&nbsp;全选
							</label> <a class="fl delete" id="deleteAll" href="javascript:;">删除</a> <a
								href="listAll.jsp" style="margin-left:50px;">继续选购</a> <a
								href="checkOrder.jsp">
								<!-- <c:url value="SettlementServlet"/>  checkOrder.jsp -->
								<div class="fr closing" >结 算</div>
							</a>
							<div class="fr total">
								合计：￥<span id="priceTotal">0.00</span>
								
								
							</div>

							<div class="fr selected" id="selected">
								已选商品<span id="selectedTotal" >0</span>件<span class="arrow up">︽</span><span
									class="arrow down">︾</span>	
							</div>
							

						<!--  	<c:set value="selectedTotal"
								var=" session.setAttribute('selectedTotal',selectedTotal) " />  -->
							<div class="selected-view">
								<div id="selectedViewList" class="clearfix">
									<div>
										<img src="images/1.jpg"/><span>取消选择</span>
									</div>
								</div>
								<span class="arrow">◆<span>◆</span></span>
							</div>
						</div>
					</form>
					<!--registerform-->
				</div>
			</div>
			<!--contentOne-->

		</div>
		<!--content-->


		<!--尾部-->
		<div id="wei">
			<div class="wei">


				<!--tow-->

				<div class="weiTowOne">
					<div class="weiTowOne1">
						<div class="weiTowOne1left">
							<!--1-->
							<div class="weiTowOne1leftOne">
								<div class="weiTowOne1leftOne_1">购物指南</div>
								<div class="weiTowOne1leftOne_2">
									<ul>
										<li><a href="#">品牌服务</a></li>
										<li><a href="#">购物流程</a></li>
										<li><a href="#">订购必读</a></li>
										<li><a href="#">VIP会员</a></li>
									</ul>
								</div>
							</div>
							<!--1-->
							<!--2-->
							<div class="weiTowOne1leftOne">
								<div class="weiTowOne1leftOne_1">支付方式</div>
								<div class="weiTowOne1leftOne_2">
									<ul>
										<li><a href="#">在线支付</a></li>
										<li><a href="#">发票说明</a></li>
										<li><a href="#">银行转账说明</a></li>
										<li><a href="#">货到付款及要求</a></li>
									</ul>
								</div>
							</div>
							<!--2-->
							<!--3-->
							<div class="weiTowOne1leftOne">
								<div class="weiTowOne1leftOne_1">派送方式</div>
								<div class="weiTowOne1leftOne_2">
									<ul>
										<li><a href="#">配送范围</a></li>
										<li><a href="#">鲜花定时配送</a></li>
										<li><a href="#">配送说明</a></li>
										<li><a href="#">配送费用收取标准</a></li>
									</ul>
								</div>
							</div>
							<!--3-->
							<!--4-->
							<div class="weiTowOne1leftOne">
								<div class="weiTowOne1leftOne_1">售后服务</div>
								<div class="weiTowOne1leftOne_2">
									<ul>
										<li><a href="#">订单处理</a></li>
										<li><a href="#">在线支付</a></li>
										<li><a href="#">投诉处理规范</a></li>
										<li><a href="#">订单查询及撤销</a></li>
										<li><a href="#">修改订单信息说明</a></li>
									</ul>
								</div>
							</div>
							<!--4-->

							<!--5-->
							<div class="weiTowOne1leftOne">
								<div class="weiTowOne1leftOne_1">相关知识</div>
								<div class="weiTowOne1leftOne_2">
									<ul>
										<li><a href="#">鲜花枝数寓意</a></li>
										<li><a href="#">浪漫花语</a></li>
										<li><a href="#">节日送花寓意</a></li>
										<li><a href="#">蛋糕尺寸</a></li>
									</ul>
								</div>
							</div>
							<!--5-->
							<!--6-->
							<div class="weiTowOne1leftOne">
								<div class="weiTowOne1leftOne_1">帮助中心</div>
								<div class="weiTowOne1leftOne_2">
									<ul>
										<li><a href="#">关于我们</a></li>
										<li><a href="#">联系我们</a></li>
										<li><a href="#">安全条款</a></li>
										<li><a href="#">隐私保护</a></li>
										<li><a href="#">常见问题</a></li>
									</ul>
								</div>
							</div>
							<!--6-->

						</div>
						<!--left1-->
						<div class="weiTowOne1Reight">
							<div class="weiTowOne1Reight1">
								<div class="weiTowOne1Reight1Img">
									<img src="image/bot_ico08.png" />
								</div>
								<div class="weiTowOne1Reight1Font">
									<div class="weiTowOne1Reight1Font_1">工作时间：每天09:00-21:30</div>
									<div class="weiTowOne1Reight1Font_2">4008-966-966</div>
								</div>
							</div>
							<div class="weiTowOne1Reight1">
								<div class="weiTowOne1Reight1Img">
									<img src="image/bot_ico10.png" />
								</div>
								<div class="weiTowOne1Reight1Font">
									<div class="weiTowOne1Reight1Font_1">投诉电话</div>
									<div class="weiTowOne1Reight1Font_2" style="color:#F39817;">130-78713-600</div>
								</div>
							</div>
							<div class="weiTowOne1Reight1">
								<div class="weiTowOne1Reight1Img">
									<img src="image/bot_ico09.png" />
								</div>
								<div class="weiTowOne1Reight1FontA">
									<a href="#">点击进行在线咨询</a>
								</div>
							</div>
						</div>
					</div>
					<!--xia-->
					<div class="weiTowTow">
						<div class="weiTowTow1">
							<a href="<c:url value="FindAllTypeServlet"/>">首页</a> | <a href="#">购物指南</a> | <a href="#">支付方式</a>
							| <a href="#">配送方式</a> | <a href="#">售后服务</a> | <a href="#">相关知识</a>
							| <a href="#">帮助中心</a>
						</div>
						<div class="weiTowTow2">Copyright 2017 Copyright© 2005-2017
							中网慧谷网络科技（北京）有限公司 版权所有，并保留所有权利。 All rights reserved</div>
					</div>
					<!--xia-->
				</div>
				<!--tow-->

			</div>
		</div>
		<!--尾部-->

	</div>

</body>
</html>
