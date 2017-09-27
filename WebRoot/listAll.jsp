<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全部鲜花</title>
<!-- 全部鲜花 -->
<link rel="stylesheet" type="text/css" href="css/list.css" />
<script type="text/javascript" src="js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="js/list.js"></script>
<script>
	function likeName() {
		str = document.getElementById('likeName').value;
		window.location = "<c:url value='SearchServlet'/>?likeNamee=" + str;
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
							你好，欢迎来到<i><a href="<c:url value="FindAllTypeServlet"/>">花市网</a></i>
							[<i><a href="login.jsp">登录</a></i>][<i><a href="register.jsp">注册</a></i>]
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
							<li class="myord"><a href="<c:url value="GetCollServlet"/>">商品收藏</a></li>
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
							<a href="<c:url value="FindAllTypeServlet"/>"><img
								src="image/baixing_log.jpg" /></a>
						</div>
						<!--中-->
						<div class="topOne3zhong">
							<!--1-->
							<a href="#" title="请输入你要搜索的商品关键字"><div class="topOne3zhong1">商品</div></a>
							<!--1-->
							<!--2-->
							<div class="topOne3zhong2">
								<input type="text" id="likeName" name="likeName"
									placeholder="请输入你要搜索的商品关键字"
									style=" float:left;width:370px; height:36px;" />
									 <a href="#"><div
										onclick="likeName()" class="topOne3zhong2suo">搜索</div></a>
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
							<div class="eeshu">${list.flCount }</div>
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
					<!--下-->
					<div class="topOne3_xia">
						<ul>
							<i class="xiaLiOne" style=" margin-left:0px; margin-top:0px;">所有商品分类</i>
							<li><a href="<c:url value="FindAllTypeServlet"/>"
								style="color:#F00; font-weight:800;">首页</a></li>
							<li><a href=" <c:url value="ListAllServlet" /> "
								style="color:#FF0000;">全部鲜花</a></li>
							<c:forEach var="type" items="${types}">
								<li><a
									href="<c:url value="FindFlowerByTypeServlet?tp_id=${type.tpId}"/>">${type.tpName}</a></li>
							</c:forEach>
						</ul>
					</div>
					<!--下-->
				</div>
				<!--one3-->

			</div>
			<!--one-->
		</div>
		<!--top-->
		<!--lun-->
		<div id="lun" style="display:none;">
			<div class="lunOne" id="hualei" onmousemove="showLei()"
				onmouseout="hidLei()">
				<!--left-->
				<div class="lunOneleft">
					<!--鲜花用途-->
					<div class="lunOneLeft1" onmouseover="showMenu(1)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>鲜花用途</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">爱情鲜花</a></li>
								<li><a href="#">商务鲜花</a></li>
								<li><a href="#">生日鲜花</a></li>
							</ul>
						</div>
					</div>

					<!--鲜花花材-->
					<div class="lunOneLeft1" onmouseover="showMenu(2)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>鲜花花材</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">玫瑰</a></li>
								<li><a href="#">百合</a></li>
								<li><a href="#">向日葵</a></li>
								<li><a href="#">康乃馨</a></li>
							</ul>
						</div>
					</div>

					<!--鲜花价格-->
					<div class="lunOneLeft1" onmouseover="showMenu(3)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>鲜花价格</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">100-200元</a></li>
								<li><a href="#">200-300元</a></li>
							</ul>
						</div>
					</div>

					<!--对象订花-->
					<div class="lunOneLeft1" onmouseover="showMenu(4)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>对象订花</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">恋人</a></li>
								<li><a href="#">父母</a></li>
								<li><a href="#">老师</a></li>
								<li><a href="#">胖友</a></li>
								<li><a href="#">领导</a></li>
							</ul>
						</div>
					</div>

					<!--节日选花-->
					<div class="lunOneLeft1" onmouseover="showMenu(5)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>节日选花</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">七夕节</a></li>
								<li><a href="#">情人节</a></li>
								<li><a href="#">妇女节</a></li>
							</ul>
						</div>
					</div>

					<!--枝数订花-->
					<div class="lunOneLeft1" onmouseover="showMenu(6)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>枝数订花</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">9枝</a></li>
								<li><a href="#">11枝</a></li>
								<li><a href="#">12枝</a></li>
								<li><a href="#">13枝</a></li>
								<li><a href="#">14枝</a></li>
							</ul>
						</div>
					</div>

					<!--类型订花-->
					<div class="lunOneLeft1" onmouseover="showMenu(7)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>类型订花</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">手捧花束</a></li>
								<li><a href="#">礼盒鲜花</a></li>
								<li><a href="#">卡通花束</a></li>
							</ul>
						</div>
					</div>

					<!--颜色订花-->
					<div class="lunOneLeft1" onmouseover="showMenu(8)"
						onmouseout="hiddFu()">
						<div class="lunOneLeft1_1">
							<i>颜色订花</i>
						</div>
						<div class="lunOneLeft1_2">
							<ul>
								<li style="float:left; margin-left:0px;"><a href="#">红色</a></li>
								<li><a href="#">粉色</a></li>
								<li><a href="#">紫色</a></li>
								<li><a href="#">黄色</a></li>
								<li><a href="#">白色</a></li>
							</ul>
						</div>
					</div>

				</div>
				<!--left-->

				<!--leftFu用途-->
				<div class="lunOneleftFu" onmouseover="showMenu(1)"
					onmouseout="hiddFu()" id="fu1">
					<ul>
						<li>爱情鲜花</li>
						<li>商务鲜花</li>
						<li>生日鲜花</li>
						<li>友情鲜花</li>
						<li>老师长辈</li>
						<li>求婚婚庆</li>
						<li>道歉鲜花</li>
						<li>探病慰问</li>
						<li>祝福庆贺</li>
					</ul>
				</div>

				<!--leftFu花材-->
				<div class="lunOneleftFu" style="margin-top:60px;"
					onmouseover="showMenu(2)" onmouseout="hiddFu()" id="fu2">
					<ul>
						<li>玫瑰</li>
						<li>百合</li>
						<li>生日鲜花</li>
						<li>友情鲜花</li>
						<li>老师长辈</li>
						<li>求婚婚庆</li>
						<li>道歉鲜花</li>
						<li>探病慰问</li>
						<li>祝福庆贺</li>
					</ul>
				</div>

				<!--leftFu价格-->
				<div class="lunOneleftFu" style="margin-top:120px;"
					onmouseover="showMenu(3)" onmouseout="hiddFu()" id="fu3">
					<ul>
						<li>100-200元</li>
						<li>200-300元</li>
						<li>300-500元</li>
						<li>500-800元</li>
						<li>800元以上</li>
					</ul>
				</div>

				<!--leftFu对象-->
				<div class="lunOneleftFu" style="margin-top:180px;"
					onmouseover="showMenu(4)" onmouseout="hiddFu()" id="fu4">
					<ul>
						<li>恋人</li>
						<li>朋友</li>
						<li>父母</li>
						<li>领导</li>
						<li>导师</li>
						<li>客户</li>
						<li>长辈</li>
						<li>病人</li>
					</ul>
				</div>

				<!--leftFu节日-->
				<div class="lunOneleftFu" style="margin-top:240px;"
					onmouseover="showMenu(5)" onmouseout="hiddFu()" id="fu5">
					<ul>
						<li>情人节</li>
						<li>七夕节</li>
						<li>妇女节</li>
						<li>母情节</li>
						<li>光棍节</li>
						<li>圣诞节</li>
						<li>中秋节</li>
						<li>感恩节</li>
						<li>父情节</li>
						<li>教师节</li>
					</ul>
				</div>


				<!--leftFu枝数-->
				<div class="lunOneleftFu" style="margin-top:300px;"
					onmouseover="showMenu(6)" onmouseout="hiddFu()" id="fu6">
					<ul>
						<li>9枝</li>
						<li>11枝</li>
						<li>12枝</li>
						<li>13枝</li>
						<li>14枝</li>
						<li>16枝</li>
						<li>19枝</li>
						<li>21枝</li>
						<li>29枝</li>
						<li>33枝</li>
						<li>36枝</li>
						<li>66枝</li>
						<li>99枝</li>
						<li>99枝以上</li>
					</ul>
				</div>

				<!--leftFu类型-->
				<div class="lunOneleftFu" style="margin-top:360px;"
					onmouseover="showMenu(7)" onmouseout="hiddFu()" id="fu7">
					<ul>
						<li>手捧花束</li>
						<li>礼盒鲜花</li>
						<li>卡通花束</li>
						<li>绿植发财树</li>
						<li>开业花篮</li>
						<li>巧克力花束</li>
						<li>精美花束</li>
						<li>祭奠花篮</li>
					</ul>
				</div>

				<!--leftFu颜色-->
				<div class="lunOneleftFu" style="margin-top:420px;"
					onmouseover="showMenu(8)" onmouseout="hiddFu()" id="fu8">
					<ul>
						<li>红色</li>
						<li>粉色</li>
						<li>紫色</li>
						<li>黄色</li>
						<li>白色</li>
						<li>蓝色</li>
						<li>香槟色</li>
					</ul>
				</div>

			</div>

		</div>
		<!--lun-->


		<!--content-->
		<div id="content">
			<!--contetn.class-->
			<div class="content">
				<!--top-->
				<div class="contentTop">
					&nbsp;<a href="<c:url value="FindAllTypeServlet"/>">首页</a>〉商品筛选
				</div>
				<!--top-->
				<!--LEFT-->
				<div class="contentLeft">
					<div class="contentLeftTp">&nbsp;热门推荐</div>
					<c:forEach items="${flowers}" var="flower" begin="16" end="24"
						step="1">
						<div class="contentLeft1">
							<div class="contentLeft1_1">
								<a href="#"><img src="image/${flower.pic}" /></a>
							</div>
							<div class="contentLeft1_2">
								<p>
									<a href="#">${flower.flName}</a>
								</p>
								<p>
									价格：<i>￥${flower.flPrice}</i>
								</p>
								<a href="#"><span>立即抢购</span></a>
							</div>
						</div>
					</c:forEach>

				</div>
				<!--left-->

				<!--right-->
				<div class="contentRight">
					<!--one-->
					<div class="contentRightOne">
						<!--商品筛选-->
						<div class="conRightOne1">&nbsp;商品筛选</div>
						<!--按鲜花用途-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按鲜花用途：</li>
								<li><a href="#">爱情鲜花</a></li>
								<li><a href="#">商务用户</a></li>
								<li><a href="#">生日鲜花</a></li>
								<li><a href="#">友情鲜花</a></li>
								<li><a href="#">老师长辈</a></li>
								<li><a href="#">求婚婚庆</a></li>
								<li><a href="#">道歉鲜花</a></li>
								<li><a href="#">探病安慰</a></li>
								<li><a href="#">祝福庆贺</a></li>
							</ul>
						</div>

						<!--按鲜花花材-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按鲜花花材：</li>
								<li><a href="#">玫瑰</a></li>
								<li><a href="#">百合</a></li>
								<li><a href="#">向日葵</a></li>
								<li><a href="#">康乃馨</a></li>
								<li><a href="#">郁金香</a></li>
								<li><a href="#">扶郎</a></li>
								<li><a href="#">马蹄莲</a></li>
								<li><a href="#">满天星</a></li>
								<li><a href="#">百合+玫瑰</a></li>
								<li><a href="#">康乃馨+玫瑰</a></li>
								<li><a href="#">百合+康乃馨</a></li>
							</ul>
						</div>

						<!--按鲜花价格-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按鲜花价格：</li>
								<li><a href="#">100-200元</a></li>
								<li><a href="#">200-300元</a></li>
								<li><a href="#">300-500元</a></li>
								<li><a href="#">500-800元</a></li>
								<li><a href="#">800元以上</a></li>
							</ul>
						</div>

						<!--按对象订花-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按对象订花：</li>
								<li><a href="#">恋人</a></li>
								<li><a href="#">朋友</a></li>
								<li><a href="#">父母</a></li>
								<li><a href="#">领导</a></li>
								<li><a href="#">老师</a></li>
								<li><a href="#">客户</a></li>
								<li><a href="#">长辈</a></li>
								<li><a href="#">病人</a></li>
							</ul>
						</div>

						<!--按节日选花-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按节日选花：</li>
								<li><a href="#">七夕节</a></li>
								<li><a href="#">情人节</a></li>
								<li><a href="#">妇女节</a></li>
								<li><a href="#">母情节</a></li>
								<li><a href="#">光棍节</a></li>
								<li><a href="#">圣诞节</a></li>
								<li><a href="#">中秋节</a></li>
								<li><a href="#">感恩节</a></li>
								<li><a href="#">父亲节</a></li>
								<li><a href="#">教师节</a></li>
							</ul>
						</div>

						<!--按枝数订花-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按枝数订花：</li>
								<li><a href="#">9枝</a></li>
								<li><a href="#">11枝</a></li>
								<li><a href="#">12枝</a></li>
								<li><a href="#">13枝</a></li>
								<li><a href="#">16枝</a></li>
								<li><a href="#">19枝</a></li>
								<li><a href="#">21枝</a></li>
								<li><a href="#">29枝</a></li>
								<li><a href="#">33枝</a></li>
								<li><a href="#">36枝</a></li>
								<li><a href="#">66枝</a></li>
								<li><a href="#">99枝</a></li>
								<li><a href="#">99枝以上</a></li>
							</ul>
						</div>

						<!--按类型订花-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按类型订花：</li>
								<li><a href="#">手捧鲜花</a></li>
								<li><a href="#">礼盒鲜花</a></li>
								<li><a href="#">卡通花束</a></li>
								<li><a href="#">绿植发财树</a></li>
								<li><a href="#">开业花篮</a></li>
								<li><a href="#">巧克力花束</a></li>
								<li><a href="#">精美桌花</a></li>
								<li><a href="#">生日鲜花</a></li>
								<li><a href="#">巧克力</a></li>
								<li><a href="#">祭奠花篮</a></li>
							</ul>
						</div>

						<!--按颜色订花-->
						<div class="conRightOne2">
							<ul>
								<li class="conRightOne2_1">按颜色订花：</li>
								<li><a href="#">红色</a></li>
								<li><a href="#">粉色</a></li>
								<li><a href="#">紫色</a></li>
								<li><a href="#">黄色</a></li>
								<li><a href="#">白色</a></li>
								<li><a href="#">蓝色</a></li>
								<li><a href="#">香槟色</a></li>
							</ul>
						</div>



					</div>
					<!--one-->
					<div class="contentShou">
						<ul>
							<li>排序方式：</li>
							<li class="conShouLi">默认</li>
							<li class="conShouLi">销量</li>
							<li class="conShouLi">人气</li>
							<li class="conShouLi">价格</li>
						</ul>
					</div>

					<!--two-->
					<div class="contentRightTwo">
						<!--1-->
						<c:forEach var="flower" items="${all}">
							<!-- 各种类型鲜花 -->
							<div class="contentRightTwo1">
								<div class="contentRightTwo1Img">
									<a
										href=" <c:url value="FindFlowerByTypeId?flowerId=${flower.flNo} "/> ">
										<img src="image/${flower.pic}" class="scale"
										alt="${flower.pic}" />
									</a>
								</div>
								<div class="conRtTwo1Price">￥ ${flower.flPrice}</div>
								<div class="conRtTwo1Font">
									<a
										href=" <c:url value="FindFlowerByTypeId?flowerId=${flower.flNo} "/> ">${flower.descri}</a>
								</div>
								<a href=" <c:url value="AddCartServlet?flNo=${flower.flNo}"/> "><div
										class="conRtTwo1Bus">加入购物车</div></a>
							</div>
						</c:forEach>
						<c:forEach var="flower" items="${flowers}">
							<!-- 全部鲜花 -->
							<div class="contentRightTwo1">
								<div class="contentRightTwo1Img">
									<a
										href=" <c:url value="FindFlowerByTypeId?flowerId=${flower.flNo} "/> "><img
										src="image/${flower.pic}" class="scale" alt="${flower.pic}" /></a>
								</div>
								<div class="conRtTwo1Price">￥ ${flower.flPrice}</div>
								<div class="conRtTwo1Font">
									<a
										href=" <c:url value="FindFlowerByTypeId?flowerId=${flower.flNo} "/> ">${flower.descri}</a>
								</div>
								<a href=" <c:url value="AddCartServlet?flNo=${flower.flNo}"/> "><div
										class="conRtTwo1Bus">加入购物车</div></a>
							</div>
						</c:forEach>


					</div>
					<!--two-->

					<!--分页-->
					<div id="fenye">
						<div class="fenOne">
							<ul>
								<li class="fontli1">首页</li>
								<li class="fontli2">&nbsp;<&nbsp;上一页</li>
								<li class="fontli3">1</li>
								<li class="fontli3">2</li>
								<li class="fontli3">3</li>
								<li style="font:13px '微软雅黑'; ">...</li>
								<li class="fontli3">10</li>
								<li class="fontli2">下一页&nbsp;>&nbsp;</li>
								<li class="fontli1">尾页</li>
								<li class="fontli4">在第<i>&nbsp;3&nbsp;</i>页
								</li>
								<li class="fontli5">到&nbsp;<input type="text" />&nbsp;页
								</li>
								<li class="fontli6">GO</li>
							</ul>
						</div>
						<!--one-->

					</div>
					<!--fen-->

				</div>
				<!--right-->

			</div>
			<!--contetn.class-->


		</div>
		<!--content-->

		<!--尾部-->
		<div id="wei">
			<div class="wei">
				<!--one-->
				<div class="weiTop">
					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1Img">
							<img src="image/foot1.png" />
						</div>
						<p>真品货源</p>
						<span>正品、优质、放心</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1Img">
							<img src="image/foot2.png" />
						</div>
						<p>数据互通</p>
						<span>网站，商家，消费者</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1Img">
							<img src="image/foot3.png" />
						</div>
						<p>统一价格</p>
						<span>拒绝被宰，安心购物</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1Img">
							<img src="image/foot4.png" />
						</div>
						<p>担保交易</p>
						<span>支付宝担保，交易更安全</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1Img">
							<img src="image/foot5.png" />
						</div>
						<p>闪电发货</p>
						<span>1-2小时送货上门</span>
					</div>
					<!--1-->

					<!--1-->
					<div class="weiTop1">
						<div class="weiTop1Img">
							<img src="image/foot6.png" />
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
							<a href="<c:url value="FindAllTypeServlet"/>">首页</a> | <a
								href="#">购物指南</a> | <a href="#">支付方式</a> | <a href="#">配送方式</a>
							| <a href="#">售后服务</a> | <a href="#">相关知识</a> | <a href="#">帮助中心</a>
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
