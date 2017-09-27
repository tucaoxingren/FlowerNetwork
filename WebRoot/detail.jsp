<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<script async charset="UTF-8" src="js/meiqia.js"></script>
<script src="js/uaredirect.js" type="text/javascript"></script>
<script type="text/javascript">
	uaredirect("/wap/goods-100695.jsp");
</script>
<script>
function add(){
	window.location="<c:url value='AddCollectionServlet?flNo=${flower.flNo}'/>";
	
	alert("收藏成功");
}
</script>
<title>${flower.flName}鲜花详情</title>
<link rel="shortcut icon" href="http://huashi.hqskjy.com/favicon.ico">
<link href="css/base.css" rel="stylesheet" type="text/css">
<link href="css/home_header.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet">


<script src="js/jquery.js"></script>
<script src="js/common.js" charset="utf-8"></script>
<script src="js/jquery.ui.js"></script>
<script src="js/jquery.validation.min.js"></script>
<script src="js/jquery.masonry.js"></script>
<script src="js/dialog.js" id="dialog_js" charset="utf-8"></script>
<link href="css/dialog.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	var PRICE_FORMAT = '&yen;%s';

	$(function() {
		//首页左侧分类菜单
		$(".category ul.menu").find("li").each(function() {
			$(this).hover(function() {
				var cat_id = $(this).attr("cat_id");
				var menu = $(this).find("div[cat_menu_id='" + cat_id + "']");
				menu.show();
				$(this).addClass("hover");
				var menu_height = menu.height();
				if (menu_height < 60)
					menu.height(80);
				menu_height = menu.height();

				var li_top = $(this).position().top;
				$(menu).css("top", 0);

			}, function() {
				$(this).removeClass("hover");
				var cat_id = $(this).attr("cat_id");
				$(this).find("div[cat_menu_id='" + cat_id + "']").hide();
			});
		});
		$(".head-user-menu dl").hover(function() {
			$(this).addClass("hover");
		}, function() {
			$(this).removeClass("hover");
		});
		/*$('.head-user-menu .my-mall').mouseover(function(){// 最近浏览的商品
			load_history_information();
			$(this).unbind('mouseover');
		});*/
		$('.head-user-menu .my-cart').mouseover(function() {// 运行加载购物车
			load_cart_information();
			$(this).unbind('mouseover');
		});
		$('#button').click(function() {
			if ($('#keyword').val() == '') {
				return false;
			}
		});

	});

	$(function() {
		//search
		var act = "goods";
		var $search_url = $("#search").children('ul');
		if (act == "store_list") {
			$search_url.children('li:eq(1)').addClass("current");
			$search_url.children('li:eq(0)').removeClass("current");
		}
		$search_url.children('li').click(function() {
			$(this).parent().children('li').removeClass("current");
			$(this).addClass("current");
			$('#search_act').attr("value", $(this).attr("act"));
			$('#keyword').attr("placeholder", $(this).attr("title"));
		});
		$("#keyword").blur();
		var cook = getCookie('v3_banner');
		/*if(cook){
		    $("#top-banner").hide();
		} else {
			$("#top-banner").slideDown(800);
		}
		$("#top-banner .close").click(function(){
			setCookie('v3_banner','yes',1);
			$("#top-banner").hide();
		});*/
	});
</script>
</head>
<body>






	<script type="text/javascript">
		//返回顶部
		backTop = function(btnId) {
			var btn = document.getElementById(btnId);
			var scrollTop = document.documentElement.scrollTop
					|| document.body.scrollTop;
			window.onscroll = set;
			btn.onclick = function() {
				btn.style.opacity = "0.5";
				window.onscroll = null;
				this.timer = setInterval(function() {
					scrollTop = document.documentElement.scrollTop
							|| document.body.scrollTop;
					scrollTop -= Math.ceil(scrollTop * 0.1);
					if (scrollTop == 0)
						clearInterval(btn.timer, window.onscroll = set);
					if (document.documentElement.scrollTop > 0)
						document.documentElement.scrollTop = scrollTop;
					if (document.body.scrollTop > 0)
						document.body.scrollTop = scrollTop;
				}, 10);
			};
			function set() {
				scrollTop = document.documentElement.scrollTop
						|| document.body.scrollTop;
				btn.style.opacity = scrollTop ? '1' : "0.5";
			}
		};
		backTop('gotop');
		//动画显示边条内容区域
		$(function() {
			ncToolbar();
			$(window).resize(function() {
				ncToolbar();
			});
			function ncToolbar() {

			}
			$('#appBarTabs').hover(function() {
				$('#appBarTabs >.variation').show();
			}, function() {
				ncToolbar();
			});
			$("#compare").click(function() {
				if ($("#content-compare").css('right') == '-210px') {
					loadCompare(false);
					$('#content-cart').animate({
						'right' : '-210px'
					});
					$("#content-compare").animate({
						right : '35px'
					});
				} else {
					$(".close").click();
					$(".chat-list").css("display", 'none');
				}
			});
			$("#rtoolbar_cart")
					.click(
							function() {
								if ($("#content-cart").css('right') == '-210px') {
									$('#content-compare').animate({
										'right' : '-210px'
									});
									$("#content-cart").animate({
										right : '35px'
									});
									if (!$("#rtoolbar_cartlist").jsp()) {
										$("#rtoolbar_cartlist")
												.load(
														'index.php?act=cart&op=ajax_load&type=html');
									}
								} else {
									$(".close").click();
									$(".chat-list").css("display", 'none');
								}
							});
			$(".close").click(function() {
				$(".content-box").animate({
					right : '-210px'
				});
			});

			$(".quick-menu dl").hover(function() {
				$(this).addClass("hover");
			}, function() {
				$(this).removeClass("hover");
			});

			// 右侧bar用户信息
			$('div[nctype="a-barUserInfo"]').click(function() {
				$('div[nctype="barUserInfo"]').toggle();
			});
			// 右侧bar登录
			$('div[nctype="a-barLoginBox"]')
					.click(
							function() {
								$('div[nctype="barLoginBox"]').toggle();
								document.getElementById('codeimage').src = 'http://huashi.hqskjy.com/shop/index.php?act=seccode&op=makecode&nchash=cbcda2fa&t='
										+ Math.random();
							});
			$('a[nctype="close-barLoginBox"]').click(function() {
				$('div[nctype="barLoginBox"]').toggle();
			});
		});
	</script>
	<div class="public-top-layout w">
		<div class="topbar wrapper">
			<div class="user-entry">
				<c:if test="${loginUser == null}">
					<div class="topOne1_left">
						你好，欢迎来到<i><a href="#">花市网</a></i> [<i><a href="login.jsp">登录</a></i>][<i><a
							href="register.jsp">注册</a></i>]
					</div>
				</c:if>
				<c:if test="${loginUser != null}">
					<div class="topOne1_left">
						你好<a href="">${loginUser.usLoginName}</a>,欢迎来到<i><a href="#">花市网</a></i>
						[<i><a href="<c:url value="ExitServlet"/>">退出</a></i>]

					</div>
				</c:if>

			</div>
			<div class="quick-menu">
				<!-- <dl>
        <dt><a href="index.php?act=invite">邀请返利</a></dt>
      </dl>-->
				<dl>
					<dt>
						<a href="#" target="_blank"><label
							style="color:red;color:red;cursor: pointer;">订单查询</label></a>
					</dt>
				</dl>
				<dl>
					<dt>
						<a href="#" target="_blank">投诉建议</a>
					</dt>
				</dl>
				<dl>
					<dt>
						<a href="#">我的订单</a><i></i>
					</dt>
					<dd>
						<ul>
							<li><a href="#">待付款订单</a></li>
							<li><a href="#">待确认收货</a></li>
							<li><a href="#">待评价交易</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="#">我的收藏</a><i></i>
					</dt>
					<dd>
						<ul>
							<li><a href="<c:url value="GetCollServlet"/>">商品收藏</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>
						客户服务<i></i>
					</dt>
					<dd>
						<ul>
							<li><a href="#">帮助中心</a></li>
							<li><a href="#">售后服务</a></li>
							<li><a href="#">客服中心</a></li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<!-- 顶部广告展开效果-->
	<div class="header-wrap">
		<header class="public-head-layout wrapper">
			<h1 class="site-logo">
				<a href="<c:url value="FindAllTypeServlet"/>"> <img src="image/05166631110429063.jpg"
					class="pngFix">
				</a>
			</h1>
			<div id="search" class="head-search-bar" style="margin-left:90px;">
				<!--商品和店铺-->
				<ul class="tab">
					<li title="请输入您要搜索的商品关键字" act="search" class="current">商品</li>
				</ul>

				<form class="search-form" method="get"
					action="http://huashi.hqskjy.com/list.jsp">
					<input placeholder="请输入您要搜索的商品关键字" name="keyword" id="keyword"
						type="text" class="input-text" value="" maxlength="60"
						x-webkit-speech="" lang="zh-CN" onwebkitspeechchange="foo()"
						x-webkit-grammar="builtin:search"> <input type="submit"
						id="button" value="搜索" class="input-submit">
				</form>
				<!--搜索关键字-->
				<div class="keyword">
					热门搜索：
					<ul>
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
			</div>

			<div class="head-user-menu">
				<dl class="my-mall">
					<dt
						style="width: 120px;border: none;background-color: #fff;color:red;">
						<img src="image/tel.png">4009-670-677
					</dt>
				</dl>
				<dl class="my-mall">
					<dt style="width: 110px;border: none;background-color: #fff;">
						<a href="#"> <img src="image/kf.gif">&nbsp;在线客服
						</a>
					</dt>
				</dl>
				<dl class="my-cart">
					<!--
        <div class="addcart-goods-num"></div>
        -->
					<dt>
						<span class="ico"></span>购物车结算<i class="arrow"></i>
					</dt>
					<dd>
						<div class="sub-title">
							<h4>最新加入的商品</h4>
						</div>
						<div class="incart-goods-box">
							<div class="incart-goods">
								<div class="no-order">
									<span>您的购物车中暂无商品，赶快选择心爱的商品吧！</span>
								</div>
							</div>
						</div>
						<div class="checkout">
							<span class="total-price"></span><a href="#" class="btn-cart">结算购物车中的商品</a>
						</div>
					</dd>
				</dl>
			</div>
		</header>
	</div>
	<!-- PublicHeadLayout End -->
	<!-- publicNavLayout Begin -->
	<nav class="public-nav-layout">
		<div class="wrapper">
			<div class="all-category">


				<div class="title">
					<i></i>
					<h3>
						<a href="">所有商品分类</a>
					</h3>
				</div>
			</div>
			<ul class="site-menu">
				<li><a href="<c:url value="FindAllTypeServlet"/>">首页</a></li>

				<li><a href="listAll.jsp">全部鲜花</a></li>
				<li><a href="listAll.jsp" target="_blank">爱情鲜花</a></li>

				<li><a href="listAll.jsp">求婚鲜花</a></li>
				<li><a href="listAll.jsp">生日鲜花</a></li>
				<li><a href="listAll.jsp">商业用花</a></li>
				<li><a href="listAll.jsp">节日鲜花</a></li>
				<li><a href="listAll.jsp">友情鲜花</a></li>
				<li><a href="listAll.jsp">长辈鲜花</a></li>
				<li><a href="listAll.jsp">慰问鲜花</a></li>

			</ul>
		</div>
	</nav>
	<div class="nch-breadcrumb-layout">
		<div class="nch-breadcrumb wrapper">
			<i class="icon-home"></i> <span><a href="<c:url value="FindAllTypeServlet"/>">首页</a></span><span
				class="arrow">&gt;</span> <span><a href="listAll.jsp">全部鲜花</a></span><span
				class="arrow">&gt;</span> <span>${flower.flName}</span>
		</div>
	</div>
	<link href="css/home_goods.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/cloudzoom.js"></script>
	<style type="text/css">
.ncs-goods-picture .levelB,.ncs-goods-picture .levelC {
	cursor:
		url(http://huashi.hqskjy.com/shop/templates/default/images/shop/zoom.cur),
		pointer;
}

.ncs-goods-picture .levelD {
	cursor:
		url(http://huashi.hqskjy.com/shop/templates/default/images/shop/hand.cur),
		move\9;
}

.nch-sidebar-all-viewed {
	display: block;
	height: 20px;
	text-align: center;
	padding: 9px 0;
}
</style>

	<div class="wrapper pr">
		<input type="hidden" id="lockcompare" value="unlock">
		<div class="ncs-detail">
			<!-- S 商品图片 -->
			<div id="ncs-goods-picture" class="ncs-goods-picture">
				<div class="gallery_wrap">
					<div class="gallery">
						<img title="" src="image/${flower.pic}"
							class="cloudzoom"
							data-cloudzoom="zoomImage: &#39;">
					</div>
				</div>



			</div>
			<!-- S 商品基本信息 -->
			<div class="ncs-goods-summary">
				<div class="name">
					<div style="width:86%;float:left;">
						<h1>${flower.flName}</h1>
					</div>
					<div style="width:7%;float:left;">
						<h3>
							<a href="#" class="share" nc_type="sharegoods"
								data-param="{&quot;gid&quot;:&quot;100695&quot;}"><i></i>分享</a>
						</h3>
					</div>
					<div style="width:7%;float:left;">
						<h3>
							<a href="#" class="favorite"><i></i>关注</a>
						</h3>
					</div>
					<div class="clear"></div>
				</div>
				<div class="ncs-meta">
					<dl>
						<dt>单价：</dt>
						<dd>${flower.flPrice}</dd>
					</dl>
					<dl>
						<dt>库存：</dt>
						<dd>还剩${flower.num}件，赶紧抢购吧！</dd>
					</dl>
					<dl>
						<dt>花语：</dt>
						<dd>情不知所起，一往而深，恋之爱之，停之不下。</dd>
					</dl>
					<dl>
						<dt>附送：</dt>
						<dd>免费附送精美贺卡，代写您的祝福。</dd>
					</dl>
					<dl>
						<dt>配送：</dt>
						<dd>本地区各市县、乡镇、街道（市区内免费配送）</dd>
					</dl>
					<dl style="height:64px;">
						<dt>说明：</dt>
						<dd>由于鲜花包扎各地的花艺师不同，可能在花束的形式和搭配上与图片不完全一致，但我们保证鲜花的主花材品种、新鲜程度、数量、颜色与说明一致，谢谢。</dd>
					</dl>
					<!-- S 商品参考价格 -->
				</div>
				<!-- S 促销 -->
				<!-- E 促销 -->



				<div class="ncs-key">
					<!-- S 商品规格值-->
					<!-- E 商品规格值-->
				</div>
				<!-- S 购买数量及库存 -->
				<div class="ncs-buy">
					<div class="ncs-figure-input">
						<input type="text" name="" id="quantity" value="1" size="3"
							maxlength="6" class="input-text"> <a
							href="javascript:void(0)" class="increase" nctype="increase">&nbsp;</a>
						<a href="javascript:void(0)" class="decrease" nctype="decrease">&nbsp;</a>
					</div>
					<div class="ncs-point" style="display: none;">
						<i></i>
						<!-- S 库存 -->
						<span>您选择的商品库存<strong nctype="goods_stock">${flower.num}</strong>件
						</span>
						<!-- E 库存 -->
					</div>

					<!-- S 提示已选规格及库存不足无法购买 -->
					<!-- E 提示已选规格及库存不足无法购买 -->
					<div class="ncs-btn">
						<!-- 立即购买-->
						<a href=" <c:url value="AddCartServlet?flNo=${flower.flNo}"/> " nctype="buynow_submit" class="addcart"
							title="立即购买"><i class="icon-shopping-cart"></i> 立即购买 </a>
						<!-- v3-b10 限制购买-->
						<!-- -->
						<!-- 加入购物车-->
						<a href=" <c:url value="AddCartServlet?flNo=${flower.flNo}"/> " nctype="addcart_submit"
							class="buynow " title="添加购物车">添加购物车</a>

						<!-- v3-b10 end-->
						<!-- S 加入购物车弹出提示框 -->
						<div class="ncs-cart-popup">
							<dl>
								<dt>
									成功添加到购物车<a title="关闭" onclick="">X</a>
								</dt>
								<dd>
									购物车共有 <strong id="bold_num"></strong> 种商品 总金额为：<em
										id="bold_mly" class="saleP"></em>
								</dd>
								<dd class="btns">
									<a href="javascript:void(0);"
										class="ncs-btn-mini ncs-btn-green" onclick=""
										javascript:void(0);" class="ncs-btn-mini" value="" onclick="">继续购物</a>
								</dd>
							</dl>
						</div>
						<!-- E 加入购物车弹出提示框 -->
					</div>
					<!-- E 购买按钮 -->
				</div>
				<!-- E 购买数量及库存 -->
				<!--E 商品信息 -->
			</div>
			<!-- E 商品图片及收藏分享 -->
			<div class="ncs-handle">
				<!-- S 分享 -->
				<a href="javascript:void(0);" class="share" nc_type="sharegoods"
					data-param="{&quot;gid&quot;:&quot;100695&quot;}"><i></i>分享<span>(<em
						nc_type="sharecount_100695">221</em>)
				</span></a>
				<!-- S 收藏 -->
				<!-- <c:url value="AddCollectionServlet?flNo=${flower.flNo}"/> -->
				<a
					href="#" onclick="add()"
					class="favorite"><i></i>收藏商品<span>(<em
						nctype="goods_collect">376</em>)
				</span></a>
				<!-- S 对比 -->
				<a href="javascript:void(0);" class="compare"
					nc_type="compare_100695"
					data-param="{&quot;gid&quot;:&quot;100695&quot;}"><i></i>加入对比</a>
				<!-- S 举报 -->
				<!--
      <a href="index.php?act=member_inform&op=inform_submit&goods_id=" class="inform"><i></i></a>
      -->
				<!-- End -->
			</div>

			<!--S 店铺信息-->
			<div style="position: absolute; z-index: 2; top: -1px; right: -1px;">
				<!-- -->
				<!--S 看了又看 -->
				<div class="ncs-lal">
					<div class="title">热卖推荐</div>
					<div class="content">
						<ul>
							<li>
								<div class="goods-pic">
									<a title="多一天爱一点" href="#"> <img alt=""
										src="image/1_05256215163801668_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥188.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="特别的爱" href="#"> <img alt=""
										src="image/1_05176756860956791_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥399.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="日复一日" href="#"> <img alt=""
										src="image/1_05175101961335451_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥540.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="你的眼神" href="#"> <img alt=""
										src="image/1_05176562436475760_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥399.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="最美的时光" href="#"> <img alt=""
										src="image/1_05185210899637362_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥169.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="白色花园" href="#"> <img alt=""
										src="image/1_05176574514442296_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥199.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="落雨花" href="#"> <img alt=""
										src="image/1_05175099349628391_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥389.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="为你沉醉" href="#"> <img alt=""
										src="image/1_05175118134047987_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥319.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="蓝色多瑙河" href="#"> <img alt=""
										src="image/1_05176752102896791_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥599.00</div>
							</li>
							<li>
								<div class="goods-pic">
									<a title="洁白无瑕" href="#"> <img alt=""
										src="image/1_05255377245829135_60.jpg">
									</a>
								</div>
								<div class="goods-price">￥282.00</div>
							</li>
						</ul>
					</div>
				</div>
				<!--E 看了又看 -- >
    </div>
        <!--E 店铺信息 -->
			</div>
			<div class="clear"></div>
		</div>



	</div>
	</div>
	</div>
	</div>
	</div>
	<form id="buynow_form" method="post"
		action="http://huashi.hqskjy.com/shop/index.php">
		<input id="act" name="act" type="hidden" value="buy"> <input
			id="op" name="op" type="hidden" value="buy_step1"> <input
			id="cart_id" name="cart_id[]" type="hidden">
	</form>
	<script type="text/javascript" src="js/jquery.charCount.js"></script>
	<script src="js/jquery.ajaxContent.pack.js" type="text/javascript"></script>
	<script src="js/sns.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.F_slider.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript" src="js/waypoints.js"></script>
	<script type="text/javascript" src="js/jquery.raty.min.js"></script>
	<script type="text/javascript" src="js/custom.min.js" charset="utf-8"></script>
	<link href="css/nyroModal.css" rel="stylesheet" type="text/css"
		id="cssfile2">
	<script type="text/javascript">
		/** 辅助浏览 **/
		jQuery(function($) {
			// 放大镜效果 产品图片
			CloudZoom.quickStart();
			// 图片切换效果
			$(".controller li").first().addClass('current');
			$('.controller').find('li').mouseover(
					function() {
						$(this).first().addClass("current").siblings()
								.removeClass("current");
					});
		});

		//收藏分享处下拉操作
		jQuery.divselect = function(divselectid, inputselectid) {
			var inputselect = $(inputselectid);
			$(divselectid).mouseover(function() {
				var ul = $(divselectid + " ul");
				ul.slideDown("fast");
				if (ul.css("display") == "none") {
					ul.slideDown("fast");
				}
			});
			$(divselectid).live('mouseleave', function() {
				$(divselectid + " ul").hide();
			});
		};
		$(function() {
			//赠品处滚条
			$('#ncsGoodsGift').perfectScrollbar({
				suppressScrollX : true
			});
			// 加入购物车
			$('a[nctype="addcart_submit"]').click(function() {
				if (typeof (allow_buy) != 'undefined' && allow_buy === false)
					return;
				addcart(100695, checkQuantity(), 'addcart_callback');
			});
			// 立即购买
			$('a[nctype="buynow_submit"]').click(function() {
				if (typeof (allow_buy) != 'undefined' && allow_buy === false)
					return;
				buynow(100695, checkQuantity());
			});
			// 到货通知
			//浮动导航  waypoints.js
			$('#main-nav').waypoint(
					function(event, direction) {
						$(this).parent().parent().parent().toggleClass(
								'sticky', direction === "down");
						event.stopPropagation();
					});

			// 分享收藏下拉操作
			$.divselect("#handle-l");
			$.divselect("#handle-r");

			// 规格选择
			$('dl[nctype="nc-spec"]').find('a').each(
					function() {
						$(this).click(
								function() {
									if ($(this).hasClass('hovered')) {
										return false;
									}
									$(this).parents('ul:first').find('a')
											.removeClass('hovered');
									$(this).addClass('hovered');
									checkSpec();
								});
					});

		});

		function checkSpec() {
			var spec_param = [ {
				"sign" : "",
				"url" : "http:\/\/huashi.hqskjy.com\/goods-100695.jsp"
			} ];
			var spec = new Array();
			$('ul[nctyle="ul_sign"]').find('.hovered').each(function() {
				var data_str = '';
				eval('data_str =' + $(this).attr('data-param'));
				spec.push(data_str.valid);
			});
			spec1 = spec.sort(function(a, b) {
				return a - b;
			});
			var spec_sign = spec1.join('|');
			$.each(spec_param, function(i, n) {
				if (n.sign == spec_sign) {
					window.location.href = n.url;
				}
			});
		}

		// 验证购买数量
		function checkQuantity() {
			var quantity = parseInt($("#quantity").val());
			if (quantity < 1) {
				alert("请填写购买数量");
				$("#quantity").val('1');
				return false;
			}
			max = parseInt($('[nctype="goods_stock"]').text());
			if (quantity > max) {
				alert("库存不足");
				return false;
			}
			return quantity;
		}

		// 立即购买js
		function buynow(goods_id, quantity) {
			if (!quantity) {
				return;
			}
			$("#cart_id").val(goods_id + '|' + quantity);
			$("#buynow_form").submit();
		}

		function buynow2(goods_id, quantity) {
			//login_dialog();
			window.location.href = "http://huashi.hqskjy.com/index.php?act=login&op=index&gid="
					+ goods_id;
			//return;
		}

		$(function() {
			//选择地区查看运费
			$('#transport_pannel>a').click(function() {
				var id = $(this).attr('nctype');
				if (id == 'undefined')
					return false;
				var _self = this, tpl_id = '0';
				var url = 'index.php?act=goods&op=calc&rand=' + Math.random();
				$('#transport_price').css('display', 'none');
				$('#loading_price').css('display', '');
				$.getJSON(url, {
					'id' : id,
					'tid' : tpl_id
				}, function(data) {
					if (data == null)
						return false;
					if (data != 'undefined') {
						$('#nc_kd').jsp('运费：<em>' + data + '</em>元');
					} else {
						'卖家承担运费';
					}
					$('#transport_price').css('display', '');
					$('#loading_price').css('display', 'none');
					$('#ncrecive').jsp($(_self).jsp());
				});
			});
			$("#nc-bundling").load(
					'index.php?act=goods&op=get_bundling&goods_id=100695',
					function() {
						if ($(this).jsp() != '') {
							$(this).show();
						}
					});
			$("#salelog_demo")
					.load(
							'index.php?act=goods&op=salelog&goods_id=100695&store_id=1&vr=0',
							function() {
								// Membership card
								$(this).find('[nctype="mcard"]')
										.membershipCard({
											type : 'shop'
										});
							});

			/** goods.php **/
			// 商品内容部分折叠收起侧边栏控制
			$('#fold').click(function() {
				$('.ncs-goods-layout').toggleClass('expanded');
			});
			// 商品内容介绍Tab样式切换控制
			$('#categorymenu').find("li").click(function() {
				$('#categorymenu').find("li").removeClass('current');
				$(this).addClass('current');
			});
			// 商品详情默认情况下显示全部
			$('#tabGoodsIntro').click(function() {
				$('.bd').css('display', 'none');
				$('.hd').css('display', 'none');
				$('#ncGoodsIntro').css('display', '');
			});
			// 点击评价隐藏其他以及其标题栏
			$('#tabGoodsRate').click(function() {
				$('.bd').css('display', 'none');
				$('#ncGoodsRate').css('display', '');
				$('.hd').css('display', 'none');
			});
			// 点击成交隐藏其他以及其标题
			$('#tabGoodsTraded').click(function() {
				$('.bd').css('display', 'none');
				$('#ncGoodsTraded').css('display', '');
				$('.hd').css('display', 'none');
			});
			// 点击咨询隐藏其他以及其标题
			$('#tabGuestbook').click(function() {
				$('.bd').css('display', 'none');
				$('#ncGuestbook').css('display', '');
				$('.hd').css('display', 'none');
			});
			//商品排行Tab切换
			$(".ncs-top-tab > li > a")
					.mouseover(
							function(e) {
								if (e.target == this) {
									var tabs = $(this).parent().parent()
											.children("li");
									var panels = $(this).parent().parent()
											.parent()
											.children(".ncs-top-panel");
									var index = $.inArray(this, $(this)
											.parent().parent().find("a"));
									if (panels.eq(index)[0]) {
										tabs.removeClass("current ").eq(index)
												.addClass("current ");
										panels.addClass("hide").eq(index)
												.removeClass("hide");
									}
								}
							});
			//信用评价动态评分打分人次Tab切换
			$(".ncs-rate-tab > li > a")
					.mouseover(
							function(e) {
								if (e.target == this) {
									var tabs = $(this).parent().parent()
											.children("li");
									var panels = $(this).parent().parent()
											.parent().children(
													".ncs-rate-panel");
									var index = $.inArray(this, $(this)
											.parent().parent().find("a"));
									if (panels.eq(index)[0]) {
										tabs.removeClass("current ").eq(index)
												.addClass("current ");
										panels.addClass("hide").eq(index)
												.removeClass("hide");
									}
								}
							});

			//触及显示缩略图
			$('.goods-pic > .thumb').hover(function() {
				$(this).next().css('display', 'block');
			}, function() {
				$(this).next().css('display', 'none');
			});

			/* 商品购买数量增减js */
			// 增加
			$('a[nctype="increase"]').click(function() {
				num = parseInt($('#quantity').val());
				max = parseInt($('[nctype="goods_stock"]').text());
				if (num < max) {
					$('#quantity').val(num + 1);
				}
			});
			//减少
			$('a[nctype="decrease"]').click(function() {
				num = parseInt($('#quantity').val());
				if (num > 1) {
					$('#quantity').val(num - 1);
				}
			});

			//评价列表
			$('#comment_tab').on('click', 'li', function() {
				$('#comment_tab li').removeClass('current');
				$(this).addClass('current');
				load_goodseval($(this).attr('data-type'));
			});
			load_goodseval('all');
			function load_goodseval(type) {
				var url = 'http://huashi.hqskjy.com/index.php?act=goods&op=comments&goods_id=100695';
				url += '&type=' + type;
				$("#goodseval").load(url, function() {
					$(this).find('[nctype="mcard"]').membershipCard({
						type : 'shop'
					});
				});
			}

			//记录浏览历史
			$.get("index.php?act=goods&op=addbrowse", {
				gid : 100695
			});
			//初始化对比按钮
			initCompare();

			// 满即送、加价购显示隐藏
			$('[nctype="show-rule"]').click(function() {
				$(this).parent().find('[nctype="rule-content"]').show();
			});
			$('[nctype="hide-rule"]').click(function() {
				$(this).parents('[nctype="rule-content"]:first').hide()
			});

			$('.ncs-buy').bind({
				mouseover : function() {
					$(".ncs-point").show();
				},
				mouseout : function() {
					$(".ncs-point").hide();
				}
			});

		});

		/* 加入购物车后的效果函数 */
		function addcart_callback(data) {
			$('#bold_num').jsp(data.num);
			$('#bold_mly').jsp(price_format(data.amount));
			$('.ncs-cart-popup').fadeIn('fast');
		}

		var $cur_area_list, $cur_tab, next_tab_id = 0, cur_select_area = [], calc_area_id = '', calced_area = [], cur_select_area_ids = [];
		$(document)
				.ready(
						function() {
							$("#ncs-freight-selector")
									.hover(
											function() {
												//如果店铺没有设置默认显示区域，马上异步请求
												if (typeof nc_a === "undefined") {
													$
															.getJSON(
																	SITEURL
																			+ "/index.php?act=index&op=json_area&callback=?",
																	function(
																			data) {
																		nc_a = data;
																		$cur_tab = $(
																				'#ncs-stock')
																				.find(
																						'li[data-index="0"]');
																		_loadArea(0);
																	});
												}
												$(this).addClass("hover");
												$(this)
														.on(
																'mouseleave',
																function() {
																	$(this)
																			.removeClass(
																					"hover");
																});
											});

							$('ul[class="area-list"]')
									.on(
											'click',
											'a',
											function() {
												$('#ncs-freight-selector')
														.unbind('mouseleave');
												var tab_id = parseInt($(this)
														.parents(
																'div[data-widget="tab-content"]:first')
														.attr('data-area'));
												if (tab_id == 0) {
													cur_select_area = [];
													cur_select_area_ids = []
												}
												;
												if (tab_id == 1
														&& cur_select_area.length > 1) {
													cur_select_area.pop();
													cur_select_area_ids.pop();
													if (cur_select_area.length > 1) {
														cur_select_area.pop();
														cur_select_area_ids
																.pop();
													}
												}
												next_tab_id = tab_id + 1;
												var area_id = $(this).attr(
														'data-value');
												$cur_tab = $('#ncs-stock')
														.find(
																'li[data-index="'
																		+ tab_id
																		+ '"]');
												$cur_tab.find('em').jsp(
														$(this).jsp());
												$cur_tab.find('i').jsp(' ∨');
												if (tab_id < 2) {
													calc_area_id = area_id;
													cur_select_area
															.push($(this).jsp());
													cur_select_area_ids
															.push(area_id);
													$cur_tab.find('a')
															.removeClass(
																	'hover');
													$cur_tab.nextAll().remove();
													if (typeof nc_a === "undefined") {
														$
																.getJSON(
																		SITEURL
																				+ "/index.php?act=index&op=json_area&callback=?",
																		function(
																				data) {
																			nc_a = data;
																			_loadArea(area_id);
																		});
													} else {
														_loadArea(area_id);
													}
												} else {
													//点击第三级，不需要显示子分类
													if (cur_select_area.length == 3) {
														cur_select_area.pop();
														cur_select_area_ids
																.pop();
													}
													cur_select_area
															.push($(this).jsp());
													cur_select_area_ids
															.push(area_id);
													$(
															'#ncs-freight-selector > div[class="text"] > div')
															.jsp(
																	cur_select_area
																			.join(''));
													$('#ncs-freight-selector')
															.removeClass(
																	"hover");
													_calc();
												}
												$('#ncs-stock')
														.find(
																'li[data-widget="tab-item"]')
														.on(
																'click',
																'a',
																function() {
																	var tab_id = parseInt($(
																			this)
																			.parent()
																			.attr(
																					'data-index'));
																	if (tab_id < 2) {
																		$(this)
																				.parent()
																				.nextAll()
																				.remove();
																		$(this)
																				.addClass(
																						'hover');
																		$(
																				'#ncs-stock')
																				.find(
																						'div[data-widget="tab-content"]')
																				.each(
																						function() {
																							if ($(
																									this)
																									.attr(
																											"data-area") == tab_id) {
																								$(
																										this)
																										.show();
																							} else {
																								$(
																										this)
																										.hide();
																							}
																						});
																	}
																});
											});
							function _loadArea(area_id) {
								if (nc_a[area_id] && nc_a[area_id].length > 0) {
									$('#ncs-stock')
											.find(
													'div[data-widget="tab-content"]')
											.each(
													function() {
														if ($(this).attr(
																"data-area") == next_tab_id) {
															$(this).show();
															$cur_area_list = $(
																	this).find(
																	'ul');
															$cur_area_list
																	.jsp('');
														} else {
															$(this).hide();
														}
													});
									var areas = [];
									areas = nc_a[area_id];
									for (i = 0; i < areas.length; i++) {
										if (areas[i][1].length > 8) {
											$cur_area_list
													.append("<li class='longer-area'><a data-value='" + areas[i][0] + "' href='#none'>"
															+ areas[i][1]
															+ "</a></li>");
										} else {
											//$cur_area_list.append("<li><a data-value='" + areas[i][0] + "' href='#none'>" + areas[i][1] + "</a></li>");
										}
									}
									if (area_id > 0) {
										$cur_tab
												.after('<li data-index="'
														+ (next_tab_id)
														+ '" data-widget="tab-item"><a class="hover" href="#none" ><em>请选择</em><i> ∨</i></a></li>');
									}
								} else {
									//点击第一二级时，已经到了最后一级
									$cur_tab.find('a').addClass('hover');
									$(
											'#ncs-freight-selector > div[class="text"] > div')
											.jsp(cur_select_area);
									$('#ncs-freight-selector').removeClass(
											"hover");
									_calc();
								}
							}
							//计算运费，是否配送
							function _calc() {
								$.cookie('dregion', cur_select_area_ids
										.join(' ')
										+ '|' + cur_select_area.join(' '), {
									expires : 30
								});
								return;
								var _args = '';
								_args += "&tid=0";
								if (_args != '') {
									_args += '&area_id=' + calc_area_id;
									if (typeof calced_area[calc_area_id] == 'undefined') {
										//需要请求配送区域设置
										$
												.getJSON(
														SITEURL
																+ "/index.php?act=goods&op=calc&"
																+ _args
																+ "&myf=&callback=?",
														function(data) {
															allow_buy = data.total ? true
																	: false;
															calced_area[calc_area_id] = data.total;
															if (data.total === false) {
																$(
																		'#ncs-freight-prompt > strong')
																		.jsp(
																				'无货')
																		.next()
																		.remove();
																$(
																		'a[nctype="buynow_submit"]')
																		.addClass(
																				'no-buynow');
																$(
																		'a[nctype="addcart_submit"]')
																		.addClass(
																				'no-buynow');
																$(
																		'#store-free-time')
																		.hide();
															} else {
																$(
																		'#ncs-freight-prompt > strong')
																		.jsp(
																				'有货 ')
																		.next()
																		.remove();
																$(
																		'#ncs-freight-prompt > strong')
																		.after(
																				'<span>'
																						+ data.total
																						+ '</span>');
																$(
																		'a[nctype="buynow_submit"]')
																		.removeClass(
																				'no-buynow');
																$(
																		'a[nctype="addcart_submit"]')
																		.removeClass(
																				'no-buynow');
																$(
																		'#store-free-time')
																		.show();
															}
														});
									} else {
										if (calced_area[calc_area_id] === false) {
											$('#ncs-freight-prompt > strong')
													.jsp('无货').next().remove();
											$('a[nctype="buynow_submit"]')
													.addClass('no-buynow');
											$('a[nctype="addcart_submit"]')
													.addClass('no-buynow');
											$('#store-free-time').hide();
										} else {
											$('#ncs-freight-prompt > strong')
													.jsp('有货 ').next().remove();
											$('#ncs-freight-prompt > strong')
													.after(
															'<span>'
																	+ calced_area[calc_area_id]
																	+ '</span>');
											$('a[nctype="buynow_submit"]')
													.removeClass('no-buynow');
											$('a[nctype="addcart_submit"]')
													.removeClass('no-buynow');
											$('#store-free-time').show();
										}
									}
								}
							}
							//如果店铺设置默认显示配送区域
						});
	</script>
	<div id="faq">
		<div class="faq-wrapper">
			<ul>
				<li>
					<dl class="s1">
						<dt>购物指南</dt>
						<dd>
							<i></i><a href="#" title="品牌服务"> 品牌服务 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="购物流程"> 购物流程 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="订购必读"> 订购必读 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="VIP会员"> VIP会员 </a>
						</dd>
					</dl>
				</li>
				<li>
					<dl class="s2">
						<dt>支付方式</dt>
						<dd>
							<i></i><a href="#" title="在线支付"> 在线支付 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="发票说明"> 发票说明 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="银行转账说明"> 银行转账说明 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="货到付款及要求"> 货到付款及要求 </a>
						</dd>
					</dl>
				</li>
				<li>
					<dl class="s3">
						<dt>配送方式</dt>
						<dd>
							<i></i><a href="#" title="配送范围"> 配送范围 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="鲜花定时配送"> 鲜花定时配送 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="配送说明"> 配送说明 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="配送费用收取标准"> 配送费用收取标准 </a>
						</dd>
					</dl>
				</li>
				<li>
					<dl class="s4">
						<dt>售后服务</dt>
						<dd>
							<i></i><a href="#" title="订单处理"> 订单处理 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="在线支付"> 在线支付 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="投诉处理规范"> 投诉处理规范 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="订单查询及撤销"> 订单查询及撤销 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="修改订单信息说明"> 修改订单信息说明 </a>
						</dd>
					</dl>
				</li>
				<li>
					<dl class="s5">
						<dt>相关知识</dt>
						<dd>
							<i></i><a href="#l" title="鲜花枝数寓意"> 鲜花枝数寓意 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="浪漫花语"> 浪漫花语 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="节日送花寓意"> 节日送花寓意 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="蛋糕尺寸"> 蛋糕尺寸 </a>
						</dd>
					</dl>
				</li>
				<li>
					<dl class="s6">
						<dt>帮助中心</dt>
						<dd>
							<i></i><a href="#" title="关于我们"> 关于我们 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="联系我们"> 联系我们 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="安全条款"> 安全条款 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="隐私保护"> 隐私保护 </a>
						</dd>
						<dd>
							<i></i><a href="#" title="常见问题"> 常见问题 </a>
						</dd>
					</dl>
				</li>
			</ul>
			<div class="help">
				<div class="w1190 clearfix">
					<div class="contact f-l">
						<div class="contact-border clearfix">
							<div style="width:40%;float:left;">
								<div style="width:100%;height:25%;margin-top:6px;">
									<label>花店经营时间</label>
								</div>
								<div style="width:100%;height:25%;margin-top:6px;">
									<label>9:00~20:00</label>
								</div>
								<div style="width:100%;height:25%;margin-top:6px;">
									<label>花店留言回复时间</label>
								</div>
								<div style="width:100%;height:25%;margin-top:6px;">
									<label>9:00~22:00</label>
								</div>
							</div>
							<div style="width:60%;float:right;">
								<div style="width:100%;height:25%;margin-top:6px;">
									<label>花店服务热线（免长途费）</label>
								</div>
								<div style="width:100%;height:25%;margin-top:6px;">
									<span class="ic tel t20">4009-670-677</span>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer" class="wrapper">
		<!--<p><a href=""></a>
                                    | <a  target="_blank" href=""></a>
                          </p>-->
		<p>
			<a href="<c:url value="FindAllTypeServlet"/>">首页</a> | <a href="#">购物指南</a> | <a href="#">支付方式</a>
			| <a href="#">配送方式</a> | <a href="#">售后服务</a> | <a href="#">相关知识</a>
			| <a href="#">帮助中心</a>
		</p>
		Copyright 2017 Copyright© 2005-2017 中网慧谷网络科技（北京）有限公司 版权所有，并保留所有权利。 All
		rights reserved <br>
	</div>
	<style type="text/css">
.like {
	position: fixed;
	bottom: 0px;
	width: 100%;
	z-index: 100;
	background: url(/data/upload/shop/mark/like_bg_n.png) repeat-x;
}

.like_c {
	width: 1200px;
	height: 101px;
	margin: auto;
}

.like_c_left {
	width: 226px;
	height: 101px;
	float: left;
}

.like_c_bg {
	width: 900px;
	height: 66px;
	float: left;
	margin-top: 35px;
}

.like_c_right {
	width: 21px;
	height: 51px;
	float: right;
	margin-top: 35px;
}

.like_colse {
	position: absolute;
	top: 10px;
	margin-left: -40px;
	z-index: auto;
	cursor: pointer;
	margin-top: 35px;
}

.like_c_bg ul {
	margin: 5px 10px;
}

.like_c_bg ul li {
	float: left;
}

.like_c_bg ul li a.over {
	/* border: 1px solid #d62023;*/
	color: #d62023;
	background-color: #feffd5;
}

.like_c_bg ul li a {
	font-size: 12px;
	padding: 3px 10px;
	border-radius: 8px;
	color: #555555;
	/*border: 1px solid #d4d4d4;*/
	margin-right: 13px;
	line-height: 30px;
	display: inline;
	white-space: nowrap;
	background: #fff;
}
</style>



	<script type="text/javascript" src="js/jquery.cookie.js"></script>
	<link href="css/perfect-scrollbar.min.css" rel="stylesheet"
		type="text/css">
	<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
	<script type="text/javascript" src="js/jquery.qtip.min.js"></script>
	<link href="css/jquery.qtip.min.css" rel="stylesheet" type="text/css">
	<!-- 对比 -->
	<script src="js/compare.js"></script>
	<script type="text/javascript">
		$(function() {
			$('[nctype="mcard"]').membershipCard({
				type : 'shop'
			});
		});
	</script>


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


</body>
</html>