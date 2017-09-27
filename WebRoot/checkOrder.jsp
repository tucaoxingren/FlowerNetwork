<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>核对订单</title>
<link rel="stylesheet" type="text/css" href="css/checkOrder.css" />
<script type="text/javascript" src="js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="js/checkOrder.js"></script>
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
									style=" float:left;width:368px; height:36px;" /> <a href="#"><div
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
									<div class="eeCountContent">
									<!--商品-->									
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


			<!--核对订单-->
			<!--contentTow-->
			<div class="contentTow" id="orDuiMy" style="display:block;">
				<!--管理收货地址-->
				<div class="contentTow1">
					<div class="contentTow1_2">管理收货地址</div>
				</div>
				<!--管理收货地址-->
				
				<!--地址1-->
			<!--  	<div class="conAddress" style="background-color:#fff;">
					<div class="conAddress1">
						<a href="#"><div class="conAddress1_1" id="xuanAdd2"
								onclick="showMenu(2)">收货人&nbsp;详细地址</div></a>
						<div class="conAddress1_2">周应润云南省昆明市五华区教场西路 联系方式：13078713600
						</div>
							<a href="#">删除</a>
						</div>

					</div>  

				</div>  -->
				<!--地址-->


				<!--新增收货地址-->
				<div class="contentTow1">
					<div class="contentTow1_1">&nbsp;收货人信息</div>
					<div class="contentTow1_2" onclick="inertAddre()">新增收货地址</div>
				</div>
				<!--新增收货地址-->
				<!--地址信息-->
				<form action="<c:url value="OrdersServlet" /> " method="post">
					<div class="address" id="addres">
						<div class="address1">
							<div class="address1_1">
								<i>*</i>收花人姓名：
							</div>
							<input type="text" name="ordName" />
						</div>
						<div class="address1">
							<div class="address1_1">
								<i>*</i>收花人电话：
							</div>
							<input type="text" name="ordPhone" />
						</div>
						<div class="address1">
							<div class="address1_1">
								<i>*</i>派送地址：
							</div>
							<input type="text" />
						</div>

						<div class="address2">
							<div class="address1_1">
								<i>*</i>详细地址：
							</div>
							<input type="text" name="ordAddress" />
						</div>






					</div>
					<!--地址信息-->
			<!-- </form> -->	
				<!--购物车商品-->
				<div class="busGoods">
					<div class="busGoods1">
						<div class="contentTow1_1goods">&nbsp;购物车商品</div>
					</div>
					<!--2-->
					<div class="busGoods2">
						<!--2_1-->
						<div class="busGoods2_1">
							<div class="busGoods2_1xinxi">商品信息</div>
							<div class="busGoods2_1Pric">单价</div>
							<div class="busGoods2_1Pric">数量</div>
							<div class="busGoods2_1Pric">优惠</div>
							<div class="busGoods2_1Pric">合计</div>
						</div>
						<!--2_2-->
						<c:forEach items="${cart}" var="list">
							<div class="busGoods2_2">
								<div class="busGoods2_2xinx">
									<div class="busGoods2_2xinxImg">
										<img src="image/${list.pic}" />
									</div>
									<div class="busGoods2_2xinxFont">
										<a href="#">${list.flName}</a>
									</div>
								</div>
								<div class="busGoods2_2Pric">${list.flPrice }</div>
								<div class="busGoods2_2Count">${list.flCount}</div><!-- list.flCount  -->
								<div class="busGoods2_2Count">1</div>
								<!-- list.flCount*list.flPrice -->
								<div class="busGoods2_2Pric">${list.flCount*list.flPrice }</div>
							</div>
						</c:forEach>
						<!--2_2-->
					</div>
				</div>
				<!--购物车商品-->
				<!--支付方式-->
				<div class="busZhifu">
					<div class="busZhifuFont">&nbsp;支付方式</div>
					<div class="busZhifuFangShi">
						<div class="bZhifuFangOne" id="busOne1">支付宝</div>
						<div class="bZhifuFangOne" id="busOne2">中国银联</div>
						<div class="bZhifuFangOne" id="busOne3">微信支付</div>
					</div>
				</div>
				<!--支付方式-->



				<!--提交订单-->
				<div class="busOrder">
					<div class="busOrder1">
						<a href="busOrder.jsp">返回购物车</a>
					</div>
					<div class="busOrder2">
						<!-- totalnum  -->
						共<i>${totalnum }</i>件商品 商品金额：<i>${total }</i>元 + 运费：<i>0.00</i>元=
						订单总额：<i>${total }</i>元
					</div>
					<a href="<c:url value="OrdersServlet"/>" /> 
						<div class="busOrder3">
							<input class="busOrder3" type='submit' value='提交订单'/>
						</div>
					</a>
				</div>
		</form>
		<!-- </form> -->
			</div>
			<!--contentTow-->


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
