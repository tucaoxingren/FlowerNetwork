<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<script async charset="UTF-8" src="js/meiqia.js"></script><script src="js/uaredirect.js" type="text/javascript"></script>
<script type="text/javascript">uaredirect("/wap/index.php?act=member_address&op=address");</script>

<title>用户密码修改</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta property="qc:admins" content="451153110760513015206375">
<meta property="wb:webmaster" content="a66e5b1a81063f36">
<meta property="qc:admins" content="4511531107605130152063757164506000">
<meta property="qc:admins" content="30423741676051301520637573070">

<style type="text/css">
body {
_behavior: url(http://huashi.hqskjy.com/shop/templates/default/css/csshover.htc);
}
</style>
<link rel="shortcut icon" href="http://huashi.hqskjy.com/favicon.ico">
<link href="css/base.css" rel="stylesheet" type="text/css">
<link href="css/home_header.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet">

 <link rel="stylesheet" type="text/css" href="css/main.css"/>
 <link rel="stylesheet" type="text/css" href="css/commons.css"/>

<script>
    var COOKIE_PRE = '2754_';
    var _CHARSET = 'utf-8';
    var SITEURL = 'http://huashi.hqskjy.com/shop';
    var SHOP_SITE_URL = 'http://huashi.hqskjy.com/shop';
    var RESOURCE_SITE_URL = 'http://huashi.hqskjy.com/data/resource';
    var RESOURCE_SITE_URL = 'http://huashi.hqskjy.com/data/resource';
    var SHOP_TEMPLATES_URL = 'http://huashi.hqskjy.com/shop/templates/default';
</script>

<script src="js/jquery.js"></script>
<script src="js/common.js" charset="utf-8"></script>
<script src="js/jquery.ui.js"></script>
<script src="js/jquery.validation.min.js"></script>
<script src="js/jquery.masonry.js"></script>
<script src="js/dialog.js" id="dialog_js" charset="utf-8"></script>

<link href="css/dialog.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
var PRICE_FORMAT = '&yen;%s';

$(function(){
	//首页左侧分类菜单
	$(".category ul.menu").find("li").each(
		function() {
			$(this).hover(
				function() {
				    var cat_id = $(this).attr("cat_id");
					var menu = $(this).find("div[cat_menu_id='"+cat_id+"']");
					menu.show();
					$(this).addClass("hover");
					var menu_height = menu.height();
					if (menu_height < 60) menu.height(80);
					menu_height = menu.height();

					var li_top = $(this).position().top;
					$(menu).css("top",0);

				},
				function() {
					$(this).removeClass("hover");
				    var cat_id = $(this).attr("cat_id");
					$(this).find("div[cat_menu_id='"+cat_id+"']").hide();
				}
			);
		}
	);
	$(".head-user-menu dl").hover(function() {
		$(this).addClass("hover");
	},
	function() {
		$(this).removeClass("hover");
	});
	/*$('.head-user-menu .my-mall').mouseover(function(){// 最近浏览的商品
		load_history_information();
		$(this).unbind('mouseover');
	});*/
	$('.head-user-menu .my-cart').mouseover(function(){// 运行加载购物车
		load_cart_information();
		$(this).unbind('mouseover');
	});
	$('#button').click(function(){
	    if ($('#keyword').val() == '') {
		    return false;
	    }
	});

    });

$(function(){
	//search
	var act = "member_address";
    var $search_url = $("#search").children('ul');
	if (act == "store_list"){
        $search_url.children('li:eq(1)').addClass("current");
        $search_url.children('li:eq(0)').removeClass("current");
	}
    $search_url.children('li').click(function(){
		$(this).parent().children('li').removeClass("current");
		$(this).addClass("current");
		$('#search_act').attr("value",$(this).attr("act"));
		$('#keyword').attr("placeholder",$(this).attr("title"));
	});
	$("#keyword").blur();
	var cook = getCookie('v3_banner');
		
});

</script>
<style type="text/css" id="MEIQIA-ICON-STYLE">.MEIQIA-ICON { background-size: 40px auto !important; background-repeat: no-repeat !important; background-image: url("http://static.meiqia.com/dist/images/icon-mq.png?v=m27dr61ixkanstt9") !important; } @media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min--moz-device-pixel-ratio: 2), only screen and (-o-min-device-pixel-ratio: 2/1), only screen and (min-device-pixel-ratio: 2) { .MEIQIA-ICON { background-image: url("http://static.meiqia.com/dist/images/icon-mq@2x.png?v=m27dr61ixkanstt9") !important; } } .MEIQIA-ICON-CHAT1 { background-position: 0 0 !important; } .MEIQIA-ICON-CHAT2 { background-position: 0 -20px !important; } .MEIQIA-ICON-CHAT3 { background-position: 0 -40px !important; } .MEIQIA-ICON-CHAT4 { background-position: 0 -60px !important; } .MEIQIA-ICON-CHAT5 { background-position: 0 -80px !important; } .MEIQIA-ICON-CHAT6 { background-position: 0 -100px !important; } .MEIQIA-ICON-CHAT7 { background-position: 0 -120px !important; } .MEIQIA-ICON-CHAT8 { background-position: 0 -140px !important; } .MEIQIA-ICON-CHAT9 { background-position: 0 -160px !important; } .MEIQIA-ICON-CHAT10 { background-position: 0 -180px !important; } .MEIQIA-ICON-CHAT11 { background-position: 0 -200px !important; } .MEIQIA-ICON-CHAT12 { background-position: 0 -220px !important; } .MEIQIA-ICON-TICKET1 { background-position: -20px 0 !important; } .MEIQIA-ICON-TICKET2 { background-position: -20px -20px !important; } .MEIQIA-ICON-TICKET3 { background-position: -20px -40px !important; } .MEIQIA-ICON-TICKET4 { background-position: -20px -60px !important; } .MEIQIA-ICON-TICKET5 { background-position: -20px -80px !important; } .MEIQIA-ICON-TICKET6 { background-position: -20px -100px !important; } .MEIQIA-ICON-TICKET7 { background-position: -20px -120px !important; } .MEIQIA-ICON-TICKET8 { background-position: -20px -140px !important; } .MEIQIA-ICON-TICKET9 { background-position: -20px -160px !important; } .MEIQIA-ICON-TICKET10 { background-position: -20px -180px !important; } .MEIQIA-ICON-TICKET11 { background-position: -20px -200px !important; } .MEIQIA-ICON-TICKET12 { background-position: -20px -220px !important; } </style><style type="text/css" id="MEIQIA-PANEL-STYLE">#MEIQIA-PANEL-HOLDER { position: fixed;  bottom: 0px; right: 30px;  z-index: -1; width: 688px; height: 540px; padding: 0;  margin: 0;  overflow: hidden; visibility: hidden; box-shadow: 0 0 20px 0 rgba(0, 0, 0, .15); border: 1px solid #eee\0; *border: 1px solid #eee; } #MEIQIA-IFRAME { display: none; float: none; position: absolute; top: 0; right: 0; bottom: 0; left: 0; z-index: 1; width: 100% !important; height: 100% !important; padding: 0; margin: 0; border: 0; background: none; } #MEIQIA-DRAG-HANDLE { float: none; position: absolute; top: 0; left: 0; right: 140px; z-index: 3; width: auto; height: 60px; border: 0; padding: 0; margin: 0; background: none; cursor:move; } #MEIQIA-DRAG-MASK { display: none; float: none; position: absolute; top: 0; left: 0; z-index: 2; width: 100%; height: 100%; padding: 0; margin: 0; border: 0; background: none; } </style><style type="text/css" id="MEIQIA-INVITE-STYLE">#MEIQIA-INVITE, #MEIQIA-INVITE div, #MEIQIA-INVITE span { float: none; width: auto; height: auto; padding: 0; margin: 0; border: 0; background: none; } #MEIQIA-INVITE { position: fixed; z-index: 2147483647; display: none; width: 340px; height: 130px; margin-bottom: 64px; border: 1px solid #f7f7f7; border-radius: 4px; box-shadow: 0 0 14px 0 rgba(0, 0, 0, .16); text-align: left; cursor: pointer; color: #000; line-height: 1.428571429; background-color: #fff; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW1, #MEIQIA-INVITE #MEIQIA-INVITE-ARROW2 { position: absolute; font-size: 0; line-height: 0; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW1 { z-index: 2; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW2 { z-index: 1; }      #MEIQIA-INVITE { top: 50%; left: 50%; margin: -65px 0 0 -170px; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW1, #MEIQIA-INVITE #MEIQIA-INVITE-ARROW2 { display: none; }  #MEIQIA-INVITE #MEIQIA-INVITE-CLOSE { position: absolute; right: -20px; top: -20px; width: 40px; height: 40px; cursor: pointer;  background-position: 0 -260px;  } #MEIQIA-INVITE #MEIQIA-INVITE-CLOSE:hover {  background-position: 0 -300px;  } #MEIQIA-INVITE #MEIQIA-INVITE-INSIDE { width: 300px; height: 44px; margin: 46px 20px 0; text-align: left; font-size: 14px; line-height: 22px; overflow: hidden; color: #000; /*word-break: break-all;*/ } </style></head>
<body>

<!-- PublicTopLayout Begin -->
 
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div id="ncToolbar" class="nc-appbar">
  <div class="nc-appbar-tabs" id="appBarTabs">
    <div class="ever">
          <div class="cart"><a href="javascript:void(0);" id="rtoolbar_cart"><span class="icon"></span> <span class="name">购物车</span><i id="rtoobar_cart_count" class="new_msg" style="display:none;"></i></a></div>
            
    </div>
    <div class="variation">
      <div class="middle">
            <div class="user" nctype="a-barUserInfo">
     <a href="javascript:void(0);">
      <div class="avatar"><img src="image/default_user_portrait.gif"></div>
<span class="tit">会员登录</span>
</a>
    </div>
    <div class="user-info" nctype="barUserInfo" style="display:none;"><i class="arrow"></i>
      <div class="avatar"><img src="image/default_user_portrait.gif">
        <div class="frame"></div>
      </div>
      <dl>
        <dt>Hi, ${loginUser. usLoginName}</dt>
        <dd>当前等级：<strong nctype="barMemberGrade">V0</strong></dd>
        <dd>当前经验值：<strong nctype="barMemberExp">30</strong></dd>
      </dl>
    </div>
            
        <div class="prech">&nbsp;</div>
                <div class="compare"><a href="javascript:void(0);" id="compare"><span class="icon"></span><span class="tit">商品对比</span></a></div>
            </div>
      <div class="gotop"><a href="javascript:void(0);" id="gotop"><span class="icon"></span><span class="tit">返回顶部</span></a></div>
    </div>
    <div class="content-box" id="content-compare">
      <div class="top">
        <h3>商品对比</h3>
        <a href="javascript:void(0);" class="close" title="隐藏"></a></div>
      <div id="comparelist"></div>
    </div>
    <div class="content-box" id="content-cart">
      <div class="top">
        <h3>我的购物车</h3>
        <a href="javascript:void(0);" class="close" title="隐藏"></a></div>
      <div id="rtoolbar_cartlist"></div>
    </div>
  </div>
</div>
<script type="text/javascript">
//返回顶部
backTop=function (btnId){
	var btn=document.getElementById(btnId);
	var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	window.onscroll=set;
	btn.onclick=function (){
		btn.style.opacity="0.5";
		window.onscroll=null;
		this.timer=setInterval(function(){
		    scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
			scrollTop-=Math.ceil(scrollTop*0.1);
			if(scrollTop==0) clearInterval(btn.timer,window.onscroll=set);
			if (document.documentElement.scrollTop > 0) document.documentElement.scrollTop=scrollTop;
			if (document.body.scrollTop > 0) document.body.scrollTop=scrollTop;
		},10);
	};
	function set(){
	    scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	    btn.style.opacity=scrollTop?'1':"0.5";
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
    $('#appBarTabs').hover(
        function() {
            $('#appBarTabs >.variation').show();
        }, 
        function() {
            ncToolbar();
        }
    );
    $("#compare").click(function(){
    	if ($("#content-compare").css('right') == '-210px') {
 		   loadCompare(false);
 		   $('#content-cart').animate({'right': '-210px'});
  		   $("#content-compare").animate({right:'35px'});
    	} else {
    		$(".close").click();
    		$(".chat-list").css("display",'none');
        }
	});
    $("#rtoolbar_cart").click(function(){
        if ($("#content-cart").css('right') == '-210px') {
         	$('#content-compare').animate({'right': '-210px'});
    		$("#content-cart").animate({right:'35px'});
    		if (!$("#rtoolbar_cartlist").jsp()) {
    			$("#rtoolbar_cartlist").load('index.php?act=cart&op=ajax_load&type=html');
    		}
        } else {
        	$(".close").click();
        	$(".chat-list").css("display",'none');
        }
	});
	$(".close").click(function(){
		$(".content-box").animate({right:'-210px'});
      });

	$(".quick-menu dl").hover(function() {
		$(this).addClass("hover");
	},
	function() {
		$(this).removeClass("hover");
	});

    // 右侧bar用户信息
    $('div[nctype="a-barUserInfo"]').click(function(){
        $('div[nctype="barUserInfo"]').toggle();
    });
    // 右侧bar登录
    $('div[nctype="a-barLoginBox"]').click(function(){
        $('div[nctype="barLoginBox"]').toggle();
        document.getElementById('codeimage').src='http://huashi.hqskjy.com/shop/index.php?act=seccode&op=makecode&nchash=cbcda2fa&t=' + Math.random();
	});
    $('a[nctype="close-barLoginBox"]').click(function(){
        $('div[nctype="barLoginBox"]').toggle();
    });
     });
</script>
<div class="public-top-layout w">
  <div class="topbar wrapper">
    <div class="user-entry">
    	 <c:if test="${loginUser == null }">
            	<div class="topOne1_left">你好，欢迎来到<i><a href="#">花市网</a></i>
                
                [<i><a href="login.jsp">登录</a></i>][<i><a href="register.jsp">注册</a></i>]
                </div>
            </c:if >    
            <c:if test="${loginUser != null }">
                <div class="topOne1_left">你好<a href="">${ loginUser. usLoginName}</a>,欢迎来到<i><a href="#">花市网</a></i>
                [<i><a href="<c:url value="ExitServlet"/>">退出</a></i>]
                
                </div>
            </c:if > 
    </div>
    <div class="quick-menu">
	
        <dl>
            <dt><a href="http://huashi.hqskjy.com/order-search.jsp" target="_blank"><label style="color:red;color:red;cursor: pointer;">订单查询</label></a></dt>
        </dl>
        <dl>
            <dt><a href="http://huashi.hqskjy.com/suggestion.jsp" target="_blank">投诉建议</a></dt>
        </dl>
      <dl>
        <dt><a href="http://huashi.hqskjy.com/shop/index.php?act=member_order">我的订单</a><i></i></dt>
        <dd>
          <ul>
            <li><a href="http://huashi.hqskjy.com/shop/index.php?act=member_order&amp;state_type=state_new">待付款订单</a></li>
            <li><a href="http://huashi.hqskjy.com/shop/index.php?act=member_order&amp;state_type=state_send">待确认收货</a></li>
            <li><a href="http://huashi.hqskjy.com/shop/index.php?act=member_order&amp;state_type=state_noeval">待评价交易</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt><a href="http://huashi.hqskjy.com/shop/index.php?act=member_favorites&amp;op=fglist">我的收藏</a><i></i></dt>
        <dd>
          <ul>
            <li><a href="http://huashi.hqskjy.com/shop/index.php?act=member_favorites&amp;op=fglist">商品收藏</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt>客户服务<i></i></dt>
        <dd>
          <ul>
            <li><a href="http://huashi.hqskjy.com/article_cate-2.jsp">帮助中心</a></li>
            <li><a href="http://huashi.hqskjy.com/article_cate-5.jsp">售后服务</a></li>
            <li><a href="http://huashi.hqskjy.com/article_cate-6.jsp">客服中心</a></li>
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
                            <a href="<c:url value="FindAllTypeServlet"/>">
                    <img src="image/05166631110429063.jpg" class="pngFix">
                </a>
                    </h1>
          <div id="search" class="head-search-bar" style="margin-left:90px;">
	<!--商品和店铺-->
      <ul class="tab">
        <li title="请输入您要搜索的商品关键字" act="search" class="current">商品</li>
      </ul>

      <form class="search-form" method="get" action="http://huashi.hqskjy.com/list.jsp">
         <input placeholder="请输入您要搜索的商品关键字" name="keyword" id="keyword" type="text" class="input-text" value="" maxlength="60" x-webkit-speech="" lang="zh-CN" onwebkitspeechchange="foo()" x-webkit-grammar="builtin:search">
         <input type="submit" id="button" value="搜索" class="input-submit">
        </form>
	  <!--搜索关键字-->
      <div class="keyword">热门搜索：
        <ul>
          <li><a href="http://huashi.hqskjy.com/list-1067.jsp">情人节</a></li><li><a href="http://huashi.hqskjy.com/list-151.jsp">玫瑰</a></li> <li><a href="http://huashi.hqskjy.com/list-152.jsp">百合</a></li><li><a href="http://huashi.hqskjy.com/list-151_1098.jsp">蓝色妖姬</a></li> <li><a href="http://huashi.hqskjy.com/list-259.jsp">爱情</a></li><li><a href="http://huashi.hqskjy.com/list-1102.jsp">花篮</a></li><li><a href="http://huashi.hqskjy.com/list-1113.jsp">教师</a></li><li><a href="http://huashi.hqskjy.com/list-1066.jsp">七夕</a></li>
        </ul>
      </div>
    </div>

    <div class="head-user-menu">
        <dl class="my-mall">
            <dt style="width: 120px;border: none;background-color: #fff;color:red;">
                <img src="image/tel.png">4009-670-677            </dt>
        </dl>
        <dl class="my-mall">
            <dt style="width: 110px;border: none;background-color: #fff;">
                <a href="javascript:void(0);" onclick="" target="_blank" style="color:red;">
                    <img src="image/kf.gif">&nbsp;在线客服
                </a>
            </dt>
        </dl>
      <dl class="my-cart">
        <!--
        <div class="addcart-goods-num"></div>
        -->        <dt><span class="ico"></span>购物车结算<i class="arrow"></i></dt>
        <dd>
          <div class="sub-title">
            <h4>最新加入的商品</h4>
          </div>
          <div class="incart-goods-box">
            <div class="incart-goods"> <img class="loading" src="image/loading.gif"> </div>
           </div>
          <div class="checkout"><span class="total-price">共<i>0</i>种商品</span><a href="http://huashi.hqskjy.com/shop/index.php?act=cart" class="btn-cart">结算购物车中的商品</a> </div>
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
      

<div class="title"><i></i>
    <h3><a href="#">所有商品分类</a></h3>
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
</nav><div class="nch-breadcrumb-layout">
    <div class="nch-breadcrumb wrapper"><i class="icon-home"></i>
            <span><a href="<c:url value="FindAllTypeServlet"/>">首页</a></span><span class="arrow">&gt;</span>
                <span><a href="#">个人中心</a></span><span class="arrow">&gt;</span>
                <span>密码修改</span>
          </div>
  </div>
<link href="css/member.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/member.js"></script>
<script type="text/javascript" src="js/ToolTip.js"></script><div id="toolTipLayer" style="position: absolute; z-index: 999; display: none; visibility: visible; left: 1096px; top: 447px;"></div>
<script>
//sidebar-menu
$(document).ready(function() {
    $.each($(".side-menu > a"), function() {
        $(this).click(function() {
            var ulNode = $(this).next("ul");
            if (ulNode.css('display') == 'block') {
            	$.cookie(COOKIE_PRE+'Mmenu_'+$(this).attr('key'),1);
            } else {
            	$.cookie(COOKIE_PRE+'Mmenu_'+$(this).attr('key'),null);
            }
			ulNode.slideToggle();
				if ($(this).hasClass('shrink')) {
					$(this).removeClass('shrink');
				} else {
					$(this).addClass('shrink');
				}
        });
    });
	$.each($(".side-menu-quick > a"), function() {
        $(this).click(function() {
            var ulNode = $(this).next("ul");
			ulNode.slideToggle();
				if ($(this).hasClass('shrink')) {
					$(this).removeClass('shrink');
				} else {
					$(this).addClass('shrink');
				}
        });
    });
});
$(function() {
	//展开关闭常用菜单设置
	$('.set-btn').bind("click",
	function() {
		$(".set-container-arrow").show("fast");
		$(".set-container").show("fast");
	});
	$('[nctype="closeCommonOperations"]').bind("click",
	function() {
		$(".set-container-arrow").hide("fast");
		$(".set-container").hide("fast");
	});

    $('dl[nctype="checkcCommonOperations"]').find('input').click(function(){
        var _this = $(this);
        var _dd = _this.parents('dd:first');
        var _type = _this.is(':checked') ? 'add' : 'del';
        var _value = _this.attr('name');
        var _operations = $('[nctype="commonOperations"]');

        // 最多添加5个
        if (_operations.find('li').length >= 5 && _type == 'add') {
            showError('最多只能添加5个常用选项。');
            return false;
        }
        $.getJSON('http://huashi.hqskjy.com/index.php?act=member&op=common_operations', {type : _type, value : _value}, function(data){
            if (data) {
                if (_type == 'add') {
                    _dd.addClass('checked');
                    if (_operations.find('li').length == 0) {
                        _operations.fadeIn('slow');
                    }
                    _operations.find('ul').append('<li style="display : none;" nctype="' + _value + '"><a href="' + _this.attr('data-value') + '">' + _this.attr('data-name') + '</a></li>');
                    _operations.find('li[style]').fadeIn('slow');
                } else {
                    _dd.removeClass('checked');
                    _operations.find('li[nctype="' + _value + '"]').fadeOut('slow', function(){
                        $(this).remove();
                        if (_operations.find('li').length == 0) {
                            _operations.fadeOut('slow');
                        }
                    });
                }
            }
        });
    });
});

</script>
<div class="ncm-container">
  <div class="left-layout">
    <div class="ncm-l-top">
      <h2><a href="#" title="个人中心">个人中心</a></h2>
      <a href="javascript:void(0)" title="常用菜单设置" class="set-btn"></a>
      <div class="set-container-arrow1" style="display:none;"></div>
      <div class="set-container1" style="display:none;">
        <div class="title">
          <h3>常用菜单设置</h3>
          <a href="javascript:void(0)" title="关闭" class="close-btn close-container" nctype="closeCommonOperations"></a></div>
        <div class="tip">勾选您经常使用的菜单，最多可选5个。 </div>
        <div class="menu-list">
                              <dl class="collapsed" nctype="checkcCommonOperations">
            <dt>交易管理</dt>
                                    <dd>
              <label>
                <input name="member_order" data-value="http://huashi.hqskjy.com/index.php?act=member_order&amp;op=index" data-name="订单列表" type="checkbox" class="checkbox">
                订单列表</label>
            </dd>
                        <dd>
              <label>
                <input name="member_favorites" data-value="http://huashi.hqskjy.com/index.php?act=member_favorites&amp;op=fglist" data-name="我的收藏" type="checkbox" class="checkbox">
                我的收藏</label>
            </dd>
                        <dd>
              <label>
                <input name="member_evaluate" data-value="http://huashi.hqskjy.com/index.php?act=member_evaluate&amp;op=list" data-name="交易评价/晒单" type="checkbox" class="checkbox">
                交易评价/晒单</label>
            </dd>
                                  </dl>
                    <dl class="collapsed" nctype="checkcCommonOperations">
            <dt>资料管理</dt>
                                    <dd>
              <label>
                <input name="member_information" data-value="http://huashi.hqskjy.com/index.php?act=member_information&amp;op=member" data-name="账户信息" type="checkbox" class="checkbox">
                账户信息</label>
            </dd>
                        <dd>
              <label>
                <input name="member_security" data-value="http://huashi.hqskjy.com/index.php?act=member_security&amp;op=index" data-name="账户安全" type="checkbox" class="checkbox">
                账户安全</label>
            </dd>
                        <dd>
              <label>
                <input name="member_address" data-value="http://huashi.hqskjy.com/index.php?act=member_address&amp;op=address" data-name="收货地址" type="checkbox" class="checkbox">
                收货地址</label>
            </dd>
                                  </dl>
                            </div>
        <div class="bottom">
          <input type="submit" value="确定" class="setting" nctype="closeCommonOperations">
        </div>
      </div>
    </div>
    <script src="js/addressss.js"></script>
    <div class="ncm-user-info">
      <div class="avatar"><img src="image/default_user_portrait.gif">
        <div class="frame"></div>
              </div>
      <div class="handle"><a href="userLogo.jsp" title="修改头像"><i class="icon-camera"></i>修改头像</a><a href="userInfoUpdate.jsp" title="修改资料"><i class="icon-pencil"></i>修改资料</a><a href="userPwd.jsp" title="修改密码"><i class="icon-off"></i>修改密码</a></div>
      <div class="name">${loginUser. usLoginName}&nbsp;
                <div class="nc-grade-mini" style="cursor:pointer;" onclick="">V0</div>
              </div>
    </div>
    <ul class="ncm-sidebar ncm-quick-menu">
      <li class="side-menu-quick" nctype="commonOperations" style="display: none;"> <a href="javascript:void(0)">
        <h3>常用操作</h3>
        </a>
        <ul>
                  </ul>
      </li>
    </ul>
    <ul id="sidebarMenu" class="ncm-sidebar">
                  <li class="side-menu"><a href="javascript:void(0)" key="trade">
        <h3>交易管理</h3>
        </a>
                <ul>
                    <li class="selected"><a href="orderLists.jsp">订单列表</a></li>
                   
                  </ul>
              </li>
              
              		   <li class="side-menu"><a href="javascript:void(0)" key="info">
            <h3>资料管理</h3>
            </a>
                    <ul>
                        <li><a href="userInfo.jsp">账户信息</a></li>
                       
                      </ul>
                    </li>
      
              
              
                </ul>
  </div>
  <div class="right-layout">
    
<div class="wrap">


  <div class="tabmenu">
    <ul class="tab pngFix">
  <li class="active"><a href="#">用户密码修改</a></li></ul>
  </div>
  
  	 <form action="<c:url value="UpdatePwdServlet"/>" method="post" id="myform" name="myform">
                    <table class="insert-tab" width="100%">
                        <tbody><tr>
                        </tr>
                            <tr>
                                <th>旧密码：</th>
                               <td><input type="password" name="oldPwd"/></td> 
                            </tr>
							<tr>
                                <th>新密码：</th>
                                <td><input type="password" name="newPwd"/></td> 
                                
                                
                            </tr>
							<tr>
                                <th>确认密码：</th>
                                <td><input type="password" name="rnewPwd"/></td> 
                                
                            </tr>
							
							
                           
                            <tr>
                                
                                <td style="float:right;border:none;margin-right:-140px;">
                                   <a href="<c:url value="UpdatePwdServlet"/>"> <input class="btn btn-primary btn6 mr10" value="确定修改" type="submit"/></a>
								
                                </td>
                            </tr>
                            
                            
                        </tbody></table>
                </form>
 
  
  
  
</div>
<script charset="utf-8" type="text/javascript" src="./order_files/zh-CN.js"></script>
<script charset="utf-8" type="text/javascript" src="./order_files/sns.js"></script>
<script type="text/javascript">
$(function(){
    $('#query_start_date').datepicker({dateFormat: 'yy-mm-dd'});
    $('#query_end_date').datepicker({dateFormat: 'yy-mm-dd'});
});
</script>
  </div>
  <div class="clear"></div>
</div>

<div id="faq">
    <div class="faq-wrapper">
        <ul>
            <li> <dl class="s1">
                    <dt>
                        购物指南      </dt>
                    <dd><i></i><a href="#" title="品牌服务"> 品牌服务 </a></dd>
                    <dd><i></i><a href="#" title="购物流程"> 购物流程 </a></dd>
                    <dd><i></i><a href="#" title="订购必读"> 订购必读 </a></dd>
                    <dd><i></i><a href="#" title="VIP会员"> VIP会员 </a></dd>
                </dl></li>
            <li> <dl class="s2">
                    <dt>
                        支付方式      </dt>
                    <dd><i></i><a href="#" title="在线支付"> 在线支付 </a></dd>
                    <dd><i></i><a href="#" title="发票说明"> 发票说明 </a></dd>
                    <dd><i></i><a href="#" title="银行转账说明"> 银行转账说明 </a></dd>
                    <dd><i></i><a href="#" title="货到付款及要求"> 货到付款及要求 </a></dd>
                </dl></li>
            <li> <dl class="s3">
                    <dt>
                        配送方式      </dt>
                    <dd><i></i><a href="#" title="配送范围"> 配送范围 </a></dd>
                    <dd><i></i><a href="#" title="鲜花定时配送"> 鲜花定时配送 </a></dd>
                    <dd><i></i><a href="#" title="配送说明"> 配送说明 </a></dd>
                    <dd><i></i><a href="#" title="配送费用收取标准"> 配送费用收取标准 </a></dd>
                </dl></li>
            <li> <dl class="s4">
                    <dt>
                        售后服务      </dt>
                    <dd><i></i><a href="#" title="订单处理"> 订单处理 </a></dd>
                    <dd><i></i><a href="#" title="在线支付"> 在线支付 </a></dd>
                    <dd><i></i><a href="#" title="投诉处理规范"> 投诉处理规范 </a></dd>
                    <dd><i></i><a href="#" title="订单查询及撤销"> 订单查询及撤销 </a></dd>
                    <dd><i></i><a href="#" title="修改订单信息说明"> 修改订单信息说明 </a></dd>
                </dl></li>
            <li> <dl class="s5">
                    <dt>
                        相关知识      </dt>
                    <dd><i></i><a href="#l" title="鲜花枝数寓意"> 鲜花枝数寓意 </a></dd>
                    <dd><i></i><a href="#" title="浪漫花语"> 浪漫花语 </a></dd>
                    <dd><i></i><a href="#" title="节日送花寓意"> 节日送花寓意 </a></dd>
                    <dd><i></i><a href="#" title="蛋糕尺寸"> 蛋糕尺寸 </a></dd>
                </dl></li>
            <li> <dl class="s6">
                    <dt>
                        帮助中心      </dt>
                    <dd><i></i><a href="#" title="关于我们"> 关于我们 </a></dd>
                    <dd><i></i><a href="#" title="联系我们"> 联系我们 </a></dd>
                    <dd><i></i><a href="#" title="安全条款"> 安全条款 </a></dd>
                    <dd><i></i><a href="#" title="隐私保护"> 隐私保护 </a></dd>
                    <dd><i></i><a href="#" title="常见问题"> 常见问题 </a></dd>
                </dl></li>
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
<div id="footer" class="wrapper">
 
    <p><a href="<c:url value="FindAllTypeServlet"/>">首页</a>
        | <a href="#">购物指南</a>
        | <a href="#">支付方式</a>
        | <a href="#">配送方式</a>
        | <a href="#">售后服务</a>
        | <a href="#">相关知识</a>
        | <a href="#">帮助中心</a>
    </p>
        Copyright 2017 Copyright© 2005-2017 中网慧谷网络科技（北京）有限公司 版权所有，并保留所有权利。 All rights reserved
              <br>
    </div>

<script type="text/javascript" src="js/jquery.cookie.js"></script>
<link href="css/perfect-scrollbar.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/jquery.qtip.min.js"></script>
<link href="css/jquery.qtip.min.css" rel="stylesheet" type="text/css">
<!-- 对比 -->
<script src="js/compare.js"></script>
<script type="text/javascript">
$(function(){
	$('[nctype="mcard"]').membershipCard({type:'shop'});
});
</script>
<style type="text/css">
    .set_chat{position: fixed;z-index: 1000;right: 80px;top:30%;width: 120px;}
    .set_chat img{display: block;width: 150px;cursor: pointer;}
    .set_chat .chat_close{position: absolute;top:0px;left: 0px;}
    .set_chat .chat_close img{width: 13px;}
    .set_chat .chat_order_search,.set_chat .chat_sh{position: absolute;}
    .set_chat .chat_order_search{bottom: 75px;
        display: inline-block;
        width: 100px;
        height: 30px;
        right: -10px;}
    .set_chat .chat_sh{bottom: 32px;
        display: inline-block;
        width: 100px;
        height: 30px;
        right: -10px;
        font-size: 14px;
        color: #CE7C53;
        text-align: center;
    }
</style>
<div style="width:480px; height:200px; background-color:#fff; display:none; position:absolute;top:328px; left:500px; border:solid 1px #888; " id="showadd">
	
    <div class="xian1">
    	<div class="xian1_1">&nbsp;&nbsp;新增地址</div>
        <div class="xian1_2"><em id="hiedAd">X</em></div>
        <form action="#" method="post">
        	<div class="xianform1">
            	<div>姓名：</div>
                <input type="text"/>
            </div>
            <div class="xianform1">
            	<div>地址：</div>
                <input type="text" width="400"/>
            </div>
            <div class="xianform1">
            	<div>电话：</div>
                <input type="text" width="400"/>
            </div>
            <div class="xianform2">
            	<input type="submit" value="保 存"/>
            </div>
        </form>
        
    </div>
    
</div>
 	<c:if test="${error!=null }">
		<script type="text/javascript">
			alert("${error}");
		</script>
	</c:if>

</body>
</html>