<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>花市鲜花网首页</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script>
	function likeName() {
		str = document.getElementById('likeName').value;
		window.location="<c:url value='SearchServlet'/>?likeNamee="+str; 
		//var url =SearchServlet?"likeName"=str;
		//window.location.href=url;
		/*str = document.getElementById('likeName').value;
		HttpServletRequest request = ServletActionContext.getRequest();
		String str = request .getParameter("str");//str是你传的参数*/
		//alert(document.getElementById('likeName').value);
		/*var subBtn = document.getElementById("likeName");
		
		subBtn.onsubmit = function () {
		 var num1Val = document.getElementById("likeName").value;
		       alert(num1Val);
		       return false;
		   };*/
/*
		$.ajax({
			url : '<c:url value='SearchServlet'/>',
			type : {
				'likeName' : $("#likeName").val()
			},
			dateType : 'text',
			cache : false,
			asyns : false,
			success : function(date) {
				window.location = 'listAll.jsp';
			},
			error : function() {
				alert("获取数据失败");
			}
		});*/
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
					<c:if test="${loginUser == null}">
						<div class="topOne1_left">
							你好，欢迎来到<i><a href="#">花市网</a></i> [<i><a href="login.jsp">登录</a></i>][<i><a
								href="register.jsp">注册</a></i>]
						</div>
					</c:if>
					<c:if test="${loginUser != null}">
						<div class="topOne1_left">
							你好<a href="<c:url value="userLogo.jsp"/>">${loginUser. usLoginName}</a>,欢迎来到<i><a
								href="#">花市网</a></i> [<i><a href="<c:url value="ExitServlet"/>">退出</a></i>]

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
							<a href="<c:url value="FindAllTypeServlet"/>"><img src="image/baixing_log.jpg" /></a>
						</div>
						<!--中-->

						<div class="topOne3zhong">
							<!--1-->
							<a href="#" title="请输入你要搜索的商品关键字"><div class="topOne3zhong1">商品</div></a>
							<!--1-->
							<!--2-->
							<!--  -->
							<form action="<c:url value="SearchServlet" />" method="post" name="myform">
							 
								<div class="topOne3zhong2">
									<!-- placeholder -->
									<input type="text" id="likeName" name="likeName"
										placeholder="请输入你要搜索的商品关键字"
										style=" float:left;width:370px; height:36px;" /> 
										
										<a href="#"> <!-- <c:url value="SearchServlet"/> -->

										<div onclick="likeName()" class="topOne3zhong2suo">搜索</div>
									</a>
									<!-- onclick="likeName()"  -->
									

								</div>
							</form>
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
							<li><a href="<c:url value="FindAllTypeServlet"/>" style="color:#F00; font-weight:800;">首页</a></li>
							<li><a href=" <c:url value="ListAllServlet" />">全部鲜花</a></li>
							<c:forEach var="type" items="${types}">
								<li><a
									href="<c:url value="FindFlowerByTypeServlet?tp_id=${type.tpId}"/>">
										${type.tpName}</a></li>
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
		<div id="lun">
			<div class="lunOne">
				<!--left-->
				<div class="lunOneleft">
					<c:forEach var="type" items="${types}">
						<div class="lunOneLeft1" onmouseover="showMenu(1)"
							onmouseout="hiddFu()">
							<div class="lunOneLeft1_1">
								<i><a
									href="<c:url value="FindFlowerByTypeServlet?tp_id=${type.tpId}"/>">${type.tpName}</a></i>
							</div>
						</div>
					</c:forEach>
				</div>
				<!--left-->



				<!--zhong-->
				<div class="lunZhong">
					<!--one-->
					<div class="lunZhongOne">
						<a href="#"> <img src="image/lun4.png" style="display:block"
							id="img1" /> <img src="image/lun1.png" style="display:none"
							id="img2" /> <img src="image/lun2.png" style="display:none"
							id="img3" /> <img src="image/lun3.png" style="display:none"
							id="img4" />

						</a>
						<div class="lunZhongOneShu">
							<ul>
								<li onmouseover="showConImg(1)"
									style="margin-left:300px; background-color:#F32613;" id="shu1"></li>
								<li onmouseover="showConImg(2)" id="shu2"></li>
								<li onmouseover="showConImg(3)" id="shu3"></li>
								<li onmouseover="showConImg(4)" id="shu4"></li>
							</ul>
						</div>

					</div>
					<!--one-->

					<!--two-->
					<div class="lunZhongTwo">
						<div class="lunZhongTwo1">
							<img src="image/web-101-102-2-1.jpg" />
						</div>
						<div class="lunZhongTwo1">
							<img src="image/web-101-102-2-2.jpg" />
						</div>
						<div class="lunZhongTwo1">
							<img src="image/web-101-102-2-3.jpg" />
						</div>
					</div>

				</div>
				<!--zhong-->

				<!--right-->
				<div class="lunRight">
					<!--one-->
					<div class="lunRightOne">
						<div class="lunRightOneImg">
							<img src="image/right.png" width="212" />
						</div>
						<div class="lunRightOneFont">
							<ul>
								<li><a href="#">免运费</a></li>
								<li><a href="#">正品保障</a></li>
								<li><a href="#">闪电发货</a></li>
							</ul>
						</div>
					</div>
					<!--one-->

					<!--two-->
					<div class="lunRightTwo">
						<div class="lunRightTwo1">
							<i>特</i>&nbsp;别推荐
						</div>
						<div class="lunRightTwo2">
							<div class="lunRightTwo2_1">&nbsp;回报你的爱（红康乃馨 母亲 教师...</div>
							<div class="lunRightTwo2_2">
								<div class="lunRightTwo2_21">￥4890.00</div>
								<div class="lunRightTwo2_22">
									<a href="#">立即疯抢</a>
								</div>

							</div>
						</div>
					</div>
					<!--two-->
					<div class="lunRightThree">
						<img src="image/web-101-102-2-4.jpg" />
					</div>

				</div>
				<!--right-->

			</div>
		</div>
		<!--lun-->

		<!--content-->
		<div id="content">
			<!--区-->
			<div class="content">
				<!--contTop-->
				<div class="contentTop">
					<div class="contentTop1" id="contop1">特价促销</div>
					<div class="contentTop1" id="contop2">疯狂抢购</div>
					<div class="contentTop1" id="contop3">猜你喜欢</div>
					<div class="contentTop1" id="contop4">热评商品</div>
					<div class="contentTop1" id="contop5">新品上架</div>
				</div>
				<!--contTop-->
				<!--contentTopFu特价促销-->
				<div class="contentTop2" id="contcon1" style="display:block;">
					<!--1-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--1-->
					<!--2-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--2-->
					<!--3-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--3-->
					<!--4-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--4-->
					<!--5-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--5-->

				</div>

				<!--contentTopFu疯狂抢购-->
				<div class="contentTop2" id="contcon2">
					<!--1-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu2.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--1-->
					<!--2-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--2-->
					<!--3-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--3-->
					<!--4-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--4-->
					<!--5-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--5-->
				</div>

				<!--contentTopFu猜你喜欢-->
				<div class="contentTop2" id="contcon3">
					<!--1-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu3.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--1-->
					<!--2-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--2-->
					<!--3-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--3-->
					<!--4-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--4-->
					<!--5-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--5-->
				</div>

				<!--contentTopFu热评商品-->
				<div class="contentTop2" id="contcon4">
					<!--1-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu4.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--1-->
					<!--2-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--2-->
					<!--3-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--3-->
					<!--4-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--4-->
					<!--5-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--5-->
				</div>

				<!--contentTopFu新品上架-->
				<div class="contentTop2" id="contcon5">
					<!--1-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu5.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--1-->
					<!--2-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--2-->
					<!--3-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--3-->
					<!--4-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--4-->
					<!--5-->
					<div class="contentTop2_1">
						<div class="contentTop2_1Img">
							<img src="image/qu1.jpg">
						</div>
						<div class="contentTop2_1Name">
							<a href="#">爱永恒</a>
						</div>
						<div class="contentTop2_1Pric">
							商城价：<i>￥159.00</i>
						</div>
					</div>
					<!--5-->
				</div>

			</div>
			<!--class="content"-->
			<!--区-->

			<div class="contentTwo">
				<img src="image/05093287108691646.jpg" />
			</div>

			<!--1楼-->
			<div class="contentOneLou">
				<div class="contOneLouTop">
					<i>爱情鲜花</i>
				</div>

				<!--left-->
				<!--right-->
				<div class="contOneLouCotRight">
					<!--1-->

					
					<c:forEach items="${flowers}" var="flower" begin="0" end="9" step="1"> 
					<div class="contOneLouCotRight1">
						<div class="contLouRithtImg">
							<a href=" <c:url value="FindFlowerByTypeId?flowerId=${flower.flNo}"/> "><img src="image/${flower.pic}" /></a>
						</div>
						<div class="contLouRithtName">
							<a href="detail.jsp">${flower.flName}</a>
						</div>
						<div class="contLouRithtMoney">
							￥${flower.flPrice}&nbsp;<i>￥${flower.flPrice+101}</i>
						</div>
					</div>
					</c:forEach>
					<!--  -->
				<!--right-->

			</div>
		</div>
		<!--1楼-->

		<!--1楼-->
		<div class="contentOneLou">
			<div class="contOneLouTop">
				<i>求婚鲜花</i>
			</div>

			<!--left-->
			<!--right-->
			<div class="contOneLouCotRight">
				<c:forEach items="${flowers}" var="flower" begin="11" end="20" step="1"> 
					<div class="contOneLouCotRight1">
						<div class="contLouRithtImg">
							<a href=" <c:url value="FindFlowerByTypeId?flowerId=${flower.flNo} "/> "><img src="image/${flower.pic}" /></a>
						</div>
						<div class="contLouRithtName">
							<a href="detail.jsp">${flower.flName}</a>
						</div>
						<div class="contLouRithtMoney">
							￥${flower.flPrice}&nbsp;<i>￥${flower.flPrice+101}</i>
						</div>
					</div>
				</c:forEach>
			</div>
			<!--right-->

		</div>
	</div>
	<!--1楼-->



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
						<a href="#">首页</a> | <a href="#">购物指南</a> | <a href="#">支付方式</a> |
						<a href="#">配送方式</a> | <a href="#">售后服务</a> | <a href="#">相关知识</a>
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
