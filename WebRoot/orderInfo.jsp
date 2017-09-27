<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单详情</title>
<link rel="stylesheet" type="text/css" href="css/myAddress.css" />
<script type="text/javascript" src="js/jquery-1.8.1.min.js"></script>

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
							你好<a href="userLogo.jsp">${ loginUser. usLoginName}</a>,欢迎来到<i><a
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
					<image src="image/hs_top.jpg" />
				</div>
				<!--one2-->
				<!--one3-->
				<div class="topOne3">
					<!--上-->
					<div class="topOne3_shang">
						<div class="topOne3_shang_logo">
							<a href="<c:url value="FindAllTypeServlet"/>"><image src="image/baixing_log.jpg" /></a>
						</div>
						<!--中-->
						<div class="topOne3zhong">
							<!--1-->
							<a href="#" title="请输入你要搜索的商品关键字">
								<div class="topOne3zhong1">商品</div>
							</a>
							<!--1-->
							<!--2-->
							<div class="topOne3zhong2">
								<input type="text" placeholder="请输入你要搜索的商品关键字"
									style=" float:left;width:368px; height:36px;" /> <a href="#">
									<div class="topOne3zhong2suo">搜索</div>
								</a>
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
							<image src="image/tel.png" style="float:left;" width="25"
								height="25" />
							<i>4009-670-677</i>
						</div>
						<div class="topOne3fu">
							<image src="image/kf.gif" style="float:left;" width="25"
								height="25" />
							<i>在线客服</i>
						</div>

						<!--购物车-->
						<div id="ee">
							<div class="eeshu">${totalnum }</div>
							<!--原页面得时候-->
							<a href="#"><span><image src="image/buslogo.png"
										style=" float:left;" /></span>&nbsp;购物车结算<span></span> <!--原始--></a>

							<!--鼠标放上去的时候显示的-->
							<a href="busOrder.jsp">
								<div class="ee">
									<span><image src="image/buslogo.png"
											style=" float:left;" /></span> &nbsp;购物车结
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

								<!--结算-->
								<div class="eeCountWei">
									<div class="eeCountWei1">
										共<i>${totalnum }<</i>种商品&nbsp;&nbsp;总金额：<em>￥${total}</em>
									</div>
									<a href="busOrder.jsp">
										<div class="eeCountWei2">结算购物车中的商品</div>
									</a>
								</div>
							</div>
							<!--购物车下面内容-->

						</div>
					</div>
					<!--上-->
					<!--下-->
					<div class="topOne3_xia">
						<ul>
							<i class="xiaLiOne" style=" margin-left:0px; margin-top:0px;"
								onmousemove="showLei()" onmouseout="hidLei()">所有商品分类</i>
							<li><a href="<c:url value="FindAllTypeServlet"/>" style="color:#F00; font-weight:800;">首页</a></li>
							<li><a href="listAll.jsp">全部鲜花</a></li>
							<li><a href="listAll.jsp">爱情鲜花</a></li>
							<li><a href="listAll.jsp">求婚鲜花</a></li>
							<li><a href="listAll.jsp">生日鲜花</a></li>
							<li><a href="listAll.jsp">商业用花</a></li>
							<li><a href="listAll.jsp">节日鲜花</a></li>
							<li><a href="listAll.jsp">友情鲜花</a></li>
							<li><a href="listAll.jsp">长辈鲜花</a></li>
							<li><a href="listAll.jsp">慰问鲜花</a></li>
						</ul>
					</div>
					<!--下-->
				</div>
				<!--one3-->

			</div>
			<!--one-->
		</div>
		<!--top-->


		<!--count-->
		<div id="content">
			<div style="width:1200px; height:auto;">
				<div class="content1">
					<i class="content1-i"></i> <i><a href="<c:url value="FindAllTypeServlet"/>">首页</a></i> <i>&gt;</i>
					<i><a href="#">个人中心</a></i> <i>&gt;</i> <i>订单详情</i>
				</div>
				<div class="content2">
					<div class="content2-1">
						<div class="content2-1-1">
							<div class="content2-1-2">
								<em class="em">个人中心</em>
							</div>
							<div class="content2-1-3">
								<div class="content2-1-3-1">
									<image src="image/default_user_portrait.gif" width="62"
										height="65" />
									<br /> <em class="em" style="margin-left:-2px;">${loginUser. usLoginName}</em>
								</div>
								<div class="content2-1-3-2">
									<ul>
										<li><a href="userLogo.jsp">修改头像</a></li>
										<li><a href="userInfoUpdate.jsp">修改资料</a></li>
										<li><a href="userPwd.jsp">修改密码</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="content3">
							<i style="font:15px '微软雅黑'; margin-left:10px; color:#000;">交易管理</i><br />
							<br />
							<ul>
								<li><a href="orderLists.jsp">订单列表</a></li>

							</ul>
						</div>

						<div class="content4">
							<i style="font:15px '微软雅黑'; margin-left:10px; color:#000;">资料管理</i><br />
							<br />
							<ul>
								<li class="xuanzhong"><a href="userInfo.jsp"
									style="color:#000;">账户信息</a></li>

							</ul>
						</div>
					</div>
					<div class="content5">
						<div class="jiben">订单详情</div>
						<div
							style="width:730px; float:left; height:40px; border-bottom:solid 1px #ccc;"></div>
						<br /> <br />
						<div
							style="width:840px; height:40px; clear:left; margin-top:20px;">
							<em>订单状态：</em> <select style="height:30px;">
								<option value="" selected="">所有订单</option>
								<option value="state_new">待付款</option>
								<option value="state_pay">待发货</option>
								<option value="state_send">待收货</option>
								<option value="state_success">已完成</option>
								<option value="state_noeval">待评价</option>
								<option value="state_cancel">已取消</option>
							</select> 订单号：<input type="text" class="text w150" name="order_sn"
								value="" style="width:165px; height:30px;"> <input
								type="submit" class="submit" value="搜索"
								style="width:65px; height:35px; border:none; background-color:#ccc;">
						</div>
						<table id="table" cellpadding="4" cellspacing="0" border="1"
							bordercolor="#ccc">
							<tr>
								<td>商品信息</td>
								<td>单价（元）</td>
								<td>数量</td>
								<td>订单金额</td>
								<td>交易状态</td>
								<td>交易操作</td>
							</tr>
							<br />
							<tr
								style="border-bottom:1px #ccc solid; width:840px; height:30px; background-color:#FAFAFA;">
								<td>订单号：${orders.ordNo }</td>
								<td>下单时间：${orders.ordData }</td>
								<td align="right" colspan="4"></td>
							</tr>
							<c:forEach items="${oiList }" var="oi">
								<tr style="border-bottom:1px #ccc solid;">
									<td><img src="image/${oi.flower.pic }"
										style="width60px; height:60px;" />${oi.flower.flName }</td>
									<td>${oi.flower.flPrice }</td>
									<td>${oi.oiCount }</td>
									<td>${oi.oiCount*oi.flower.flPrice }<br />免运费<br />在线付款
									</td>
									<td>已完成</td>

								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>

		<!--尾部-->
		<div id="wei">
			<div class="wei">
				<!--one-->
				<div class="weiTop">
					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1image">
							<image src="image/foot1.png" />
						</div>
						<p>真品货源</p>
						<span>正品、优质、放心</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1image">
							<image src="image/foot2.png" />
						</div>
						<p>数据互通</p>
						<span>网站，商家，消费者</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1image">
							<image src="image/foot3.png" />
						</div>
						<p>统一价格</p>
						<span>拒绝被宰，安心购物</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1image">
							<image src="image/foot4.png" />
						</div>
						<p>担保交易</p>
						<span>支付宝担保，交易更安全</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1image">
							<image src="image/foot5.png" />
						</div>
						<p>闪电发货</p>
						<span>1-2小时送货上门</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1image">
							<image src="image/foot6.png" />
						</div>
						<p>惊喜购</p>
						<span>帮你发现身边的好货</span>
					</div>
					<!--1-->

				</div>
				<!--one-->

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
								<div class="weiTowOne1Reight1image">
									<image src="image/bot_ico08.png" />
								</div>
								<div class="weiTowOne1Reight1Font">
									<div class="weiTowOne1Reight1Font_1">工作时间：每天09:00-21:30</div>
									<div class="weiTowOne1Reight1Font_2">4008-966-966</div>
								</div>
							</div>
							<div class="weiTowOne1Reight1">
								<div class="weiTowOne1Reight1image">
									<image src="image/bot_ico10.png" />
								</div>
								<div class="weiTowOne1Reight1Font">
									<div class="weiTowOne1Reight1Font_1">投诉电话</div>
									<div class="weiTowOne1Reight1Font_2" style="color:#F39817;">130-78713-600</div>
								</div>
							</div>
							<div class="weiTowOne1Reight1">
								<div class="weiTowOne1Reight1image">
									<image src="image/bot_ico09.png" />
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
