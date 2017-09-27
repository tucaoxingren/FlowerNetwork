<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<script async charset="UTF-8" src="js/meiqia.js"></script><script src="js/uaredirect.js" type="text/javascript"></script>
<script type="text/javascript">uaredirect("/wap/index.php?act=member_address&op=address");</script>

<title></title>
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
<!--[if IE 7]>
  <link rel="stylesheet" href="http://huashi.hqskjy.com/shop/resource/font/font-awesome/css/font-awesome-ie7.min.css">
<![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="http://huashi.hqskjy.com/data/resource/js/html5shiv.js"></script>
      <script src="http://huashi.hqskjy.com/data/resource/js/respond.min.js"></script>
<![endif]-->

<!--[if IE 6]>
<script src="http://huashi.hqskjy.com/data/resource/js/IE6_PNG.js"></script>
<script>
DD_belatedPNG.fix('.pngFix');
</script>

<script>
// <![CDATA[
if((window.navigator.appName.toUpperCase().indexOf("MICROSOFT")>=0)&&(document.execCommand))
try{
document.execCommand("BackgroundImageCache", false, true);
   }
catch(e){}
// ]]>
</script>
<![endif]-->

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
<script src="js/dialog.js" id="dialog_js" charset="utf-8"></script><link href="css/dialog.css" rel="stylesheet" type="text/css">
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
<style type="text/css" id="MEIQIA-ICON-STYLE">.MEIQIA-ICON { background-size: 40px auto !important; background-repeat: no-repeat !important; background-image: url("http://static.meiqia.com/dist/images/icon-mq.png?v=m27dr61ixkanstt9") !important; } @media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min--moz-device-pixel-ratio: 2), only screen and (-o-min-device-pixel-ratio: 2/1), only screen and (min-device-pixel-ratio: 2) { .MEIQIA-ICON { background-image: url("http://static.meiqia.com/dist/images/icon-mq@2x.png?v=m27dr61ixkanstt9") !important; } } .MEIQIA-ICON-CHAT1 { background-position: 0 0 !important; } .MEIQIA-ICON-CHAT2 { background-position: 0 -20px !important; } .MEIQIA-ICON-CHAT3 { background-position: 0 -40px !important; } .MEIQIA-ICON-CHAT4 { background-position: 0 -60px !important; } .MEIQIA-ICON-CHAT5 { background-position: 0 -80px !important; } .MEIQIA-ICON-CHAT6 { background-position: 0 -100px !important; } .MEIQIA-ICON-CHAT7 { background-position: 0 -120px !important; } .MEIQIA-ICON-CHAT8 { background-position: 0 -140px !important; } .MEIQIA-ICON-CHAT9 { background-position: 0 -160px !important; } .MEIQIA-ICON-CHAT10 { background-position: 0 -180px !important; } .MEIQIA-ICON-CHAT11 { background-position: 0 -200px !important; } .MEIQIA-ICON-CHAT12 { background-position: 0 -220px !important; } .MEIQIA-ICON-TICKET1 { background-position: -20px 0 !important; } .MEIQIA-ICON-TICKET2 { background-position: -20px -20px !important; } .MEIQIA-ICON-TICKET3 { background-position: -20px -40px !important; } .MEIQIA-ICON-TICKET4 { background-position: -20px -60px !important; } .MEIQIA-ICON-TICKET5 { background-position: -20px -80px !important; } .MEIQIA-ICON-TICKET6 { background-position: -20px -100px !important; } .MEIQIA-ICON-TICKET7 { background-position: -20px -120px !important; } .MEIQIA-ICON-TICKET8 { background-position: -20px -140px !important; } .MEIQIA-ICON-TICKET9 { background-position: -20px -160px !important; } .MEIQIA-ICON-TICKET10 { background-position: -20px -180px !important; } .MEIQIA-ICON-TICKET11 { background-position: -20px -200px !important; } .MEIQIA-ICON-TICKET12 { background-position: -20px -220px !important; } </style><style type="text/css" id="MEIQIA-PANEL-STYLE">#MEIQIA-PANEL-HOLDER { position: fixed;  bottom: 0px; right: 30px;  z-index: -1; width: 688px; height: 540px; padding: 0;  margin: 0;  overflow: hidden; visibility: hidden; box-shadow: 0 0 20px 0 rgba(0, 0, 0, .15); border: 1px solid #eee\0; *border: 1px solid #eee; } #MEIQIA-IFRAME { display: none; float: none; position: absolute; top: 0; right: 0; bottom: 0; left: 0; z-index: 1; width: 100% !important; height: 100% !important; padding: 0; margin: 0; border: 0; background: none; } #MEIQIA-DRAG-HANDLE { float: none; position: absolute; top: 0; left: 0; right: 140px; z-index: 3; width: auto; height: 60px; border: 0; padding: 0; margin: 0; background: none; cursor:move; } #MEIQIA-DRAG-MASK { display: none; float: none; position: absolute; top: 0; left: 0; z-index: 2; width: 100%; height: 100%; padding: 0; margin: 0; border: 0; background: none; } </style><style type="text/css" id="MEIQIA-INVITE-STYLE">#MEIQIA-INVITE, #MEIQIA-INVITE div, #MEIQIA-INVITE span { float: none; width: auto; height: auto; padding: 0; margin: 0; border: 0; background: none; } #MEIQIA-INVITE { position: fixed; z-index: 2147483647; display: none; width: 340px; height: 130px; margin-bottom: 64px; border: 1px solid #f7f7f7; border-radius: 4px; box-shadow: 0 0 14px 0 rgba(0, 0, 0, .16); text-align: left; cursor: pointer; color: #000; line-height: 1.428571429; background-color: #fff; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW1, #MEIQIA-INVITE #MEIQIA-INVITE-ARROW2 { position: absolute; font-size: 0; line-height: 0; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW1 { z-index: 2; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW2 { z-index: 1; }      #MEIQIA-INVITE { top: 50%; left: 50%; margin: -65px 0 0 -170px; } #MEIQIA-INVITE #MEIQIA-INVITE-ARROW1, #MEIQIA-INVITE #MEIQIA-INVITE-ARROW2 { display: none; }  #MEIQIA-INVITE #MEIQIA-INVITE-CLOSE { position: absolute; right: -20px; top: -20px; width: 40px; height: 40px; cursor: pointer;  background-position: 0 -260px;  } #MEIQIA-INVITE #MEIQIA-INVITE-CLOSE:hover {  background-position: 0 -300px;  } #MEIQIA-INVITE #MEIQIA-INVITE-INSIDE { width: 300px; height: 44px; margin: 46px 20px 0; text-align: left; font-size: 14px; line-height: 22px; overflow: hidden; color: #000; /*word-break: break-all;*/ } </style></head>
<body>

<!-- PublicTopLayout Begin -->
 

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
        /*if ($(window).width() >= 1240) {
            $('#appBarTabs >.variation').show();
        } else {
            $('#appBarTabs >.variation').hide();
        }*/
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
    <div class="user-entry">花市鲜花网-专注于网上订花11年,网上花店领先品牌.承诺1-3小时将鲜花快递上门！</div>
    <div class="quick-menu">
	 <!-- <dl>
        <dt><a href="index.php?act=invite">邀请返利</a></dt>
      </dl>-->
        <dl>
            <dt><a href="#" target="_blank"><label style="color:red;color:red;cursor: pointer;">订单查询</label></a></dt>
        </dl>
        <dl>
            <dt><a href="#" target="_blank">投诉建议</a></dt>
        </dl>
      <dl>
        <dt><a href="#">我的订单</a><i></i></dt>
        <dd>
          <ul>
            <li><a href="#">待付款订单</a></li>
            <li><a href="#">待确认收货</a></li>
            <li><a href="#">待评价交易</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt><a href="#">我的收藏</a><i></i></dt>
        <dd>
          <ul>
            <li><a href="#">商品收藏</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt>客户服务<i></i></dt>
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
<!--<script>
$(function(){
	$.get('&_rand='+new Date().getTime(),function(content){
		$('.user-entry').jsp(content);
	});	
});
</script>--><!-- PublicHeadLayout Begin -->
<!-- 顶部广告展开效果-->
<!--<div class="wrapper"  style="display: block;">
    <a href="/zt/38" target="_blank" title="3.8女神节">
        <img style="width:1200px;height:90px" border="0" src="/data/upload/shop/mark/38.jpg" alt="3.8女神节">
    </a>
</div>-->

<!-- 顶部广告展开效果-->
<div class="header-wrap">
  <header class="public-head-layout wrapper">
        <h1 class="site-logo">
                            <a href="http://huashi.hqskjy.com/">
                    <img src="image/05166631110429063.jpg" class="pngFix">
                </a>
                    </h1>
          <div id="search" class="head-search-bar" style="margin-left:90px;">
	<!--商品和店铺-->
      <ul class="tab">
        <li title="请输入您要搜索的商品关键字" act="search" class="current">商品</li>
      </ul>

      <form class="search-form" method="get" action="likeSelectall">
         <input placeholder="请输入您要搜索的商品关键字" name="keyword" id="keyword" type="text" class="input-text" value="" maxlength="60" x-webkit-speech="" lang="zh-CN" onwebkitspeechchange="foo()" x-webkit-grammar="builtin:search">
         <input type="submit" id="button" value="搜索" class="input-submit">
        </form>
	  <!--搜索关键字-->
      <div class="keyword">热门搜索：
        <ul>
          <li><a href="#">情人节</a></li><li><a href="#">玫瑰</a></li> <li><a href="#">百合</a></li><li><a href="#">蓝色妖姬</a></li> <li><a href="#">爱情</a></li><li><a href="#">花篮</a></li><li><a href="#">教师</a></li><li><a href="#">七夕</a></li>
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
    <h3><a href="http://huashi.hqskjy.com/list.jsp">所有商品分类</a></h3>
</div>
<div class="category">
<ul class="menu">
<li cat_id="256" class="odd">
    <div class="class">
        <h4><a href="javascript:">鲜花用途</a></h4>
              <span class="recommend-class">
                                                      <a href="#" title="爱情鲜花">爱情鲜花</a>
                                        <a href="#" title="商务用花">商务用花</a>
                                        <a href="#" title="生日鲜花">生日鲜花</a>
                                        <a href="#" title="友情鲜花">友情鲜花</a>
                                        <a href="#" title="老师长辈">老师长辈</a>
                                        <a href="#" title="求婚婚庆">求婚婚庆</a>
                                        <a href="#" title="道歉鲜花">道歉鲜花</a>
                                        <a href="#" title="探病慰问">探病慰问</a>
                                        <a href="#" title="祝福庆贺">祝福庆贺</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="256" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-259-0-0-2-2-0-0-0-0.jsp">爱情鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1111-0-0-2-2-0-0-0-0.jsp">商务用花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">生日鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">友情鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">老师长辈</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">求婚婚庆</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">道歉鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">探病慰问</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">祝福庆贺</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="2" class="even">
    <div class="class">
        <h4><a href="javascript:">鲜花花材</a></h4>
              <span class="recommend-class">
                                        <a href="#" title="玫瑰">玫瑰</a>
                                        <a href="#" title="百合">百合</a>
                                        <a href="#" title="向日葵">向日葵</a>
                                        <a href="#" title="康乃馨">康乃馨</a>
                                        <a href="#" title="郁金香">郁金香</a>
                                        <a href="#" title="扶郎">扶郎</a>
                                        <a href="#" title="马蹄莲">马蹄莲</a>
                                        <a href="#" title="满天星">满天星</a>
                                        <a href="#" title="百合+玫瑰">百合+玫瑰</a>
                                        <a href="#" title="玫瑰+康乃馨">玫瑰+康乃馨</a>
                                        <a href="#" title="康乃馨+百合">康乃馨+百合</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="2" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">玫瑰</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">百合</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">向日葵</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">康乃馨</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">郁金香</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">扶郎</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">马蹄莲</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">满天星</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">百合+玫瑰</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">玫瑰+康乃馨</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">康乃馨+百合</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="3" class="odd">
    <div class="class">
        <h4><a href="javascript:">鲜花价格</a></h4>
              <span class="recommend-class">
                                        <a href="#" title="100-200元">100-200元</a>
                                        <a href="#" title="200-300元">200-300元</a>
                                        <a href="#" title="300-500元">300-500元</a>
                                        <a href="#" title="500-800元">500-800元</a>
                                        <a href="#" title="800元以上">800元以上</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="3" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">100-200元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">200-300元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">300-500元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">500-800元</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">800元以上</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="1" class="even">
    <div class="class">
        <h4><a href="javascript:">对象订花</a></h4>
              <span class="recommend-class">
                                        <a href="#" title="恋人">恋人</a>
                                        <a href="#" title="朋友">朋友</a>
                                        <a href="#" title="父母">父母</a>
                                        <a href="#" title="领导">领导</a>
                                        <a href="#" title="老师">老师</a>
                                        <a href="#" title="客户">客户</a>
                                        <a href="#" title="长辈">长辈</a>
                                        <a href="#" title="病人">病人</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="1" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">恋人</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">朋友</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">父母</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">领导</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">老师</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">客户</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">长辈</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">病人</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="308" class="odd">
    <div class="class">
        <h4><a href="javascript:">节日选花</a></h4>
              <span class="recommend-class">
                                        <a href="#" title="七夕节">七夕节</a>
                                        <a href="#" title="情人节">情人节</a>
                                        <a href="#" title="妇女节">妇女节</a>
                                        <a href="#" title="母亲节">母亲节</a>
                                        <a href="#" title="光棍节">光棍节</a>
                                        <a href="#" title="圣诞节">圣诞节</a>
                                        <a href="#" title="中秋节">中秋节</a>
                                        <a href="#" title="感恩节">感恩节</a>
                                        <a href="#" title="父亲节">父亲节</a>
                                        <a href="#" title="教师节">教师节</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="308" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="#">七夕节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">情人节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">妇女节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">母亲节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">光棍节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">圣诞节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">中秋节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">感恩节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">父亲节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="#">教师节</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="470" class="even">
    <div class="class">
        <h4><a href="javascript:">枝数订花</a></h4>
              <span class="recommend-class">
                                        <a href="#" title="9枝">9枝</a>
                                        <a href="#" title="11枝">11枝</a>
                                        <a href="#" title="12枝">12枝</a>
                                        <a href="#" title="13枝">13枝</a>
                                        <a href="#" title="16枝">16枝</a>
                                        <a href="#" title="19枝">19枝</a>
                                        <a href="#" title="21枝">21枝</a>
                                        <a href="#" title="29枝">29枝</a>
                                        <a href="#" title="33枝">33枝</a>
                                        <a href="#" title="36枝">36枝</a>
                                        <a href="#" title="66枝">66枝</a>
                                        <a href="#" title="99枝">99枝</a>
                                        <a href="#" title="99以上">99以上</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="470" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1075-0-0-2-2-0-0-0-0.jsp">9枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1076-0-0-2-2-0-0-0-0.jsp">11枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1077-0-0-2-2-0-0-0-0.jsp">12枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1078-0-0-2-2-0-0-0-0.jsp">13枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1079-0-0-2-2-0-0-0-0.jsp">16枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1080-0-0-2-2-0-0-0-0.jsp">19枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1081-0-0-2-2-0-0-0-0.jsp">21枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1082-0-0-2-2-0-0-0-0.jsp">29枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1083-0-0-2-2-0-0-0-0.jsp">33枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1084-0-0-2-2-0-0-0-0.jsp">36枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1085-0-0-2-2-0-0-0-0.jsp">66枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1086-0-0-2-2-0-0-0-0.jsp">99枝</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1087-0-0-2-2-0-0-0-0.jsp">99以上</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="593" class="odd">
    <div class="class">
        <h4><a href="javascript:">类型订花</a></h4>
              <span class="recommend-class">
                                                      <a href="http://huashi.hqskjy.com/list-1091-0-0-2-2-0-0-0-0.jsp" title="手捧花束">手捧花束</a>
                                        <a href="http://huashi.hqskjy.com/list-1089-0-0-2-2-0-0-0-0.jsp" title="礼盒鲜花">礼盒鲜花</a>
                                        <a href="http://huashi.hqskjy.com/list-1088-0-0-2-2-0-0-0-0.jsp" title="卡通花束">卡通花束</a>
                                        <a href="http://huashi.hqskjy.com/list-1090-0-0-2-2-0-0-0-0.jsp" title="绿植发财树">绿植发财树</a>
                                        <a href="http://huashi.hqskjy.com/list-1102-0-0-2-2-0-0-0-0.jsp" title="开业花篮">开业花篮</a>
                                        <a href="http://huashi.hqskjy.com/list-1103-0-0-2-2-0-0-0-0.jsp" title="巧克力花束">巧克力花束</a>
                                        <a href="http://huashi.hqskjy.com/list-1116-0-0-2-2-0-0-0-0.jsp" title="精美桌花">精美桌花</a>
                                        <a href="http://huashi.hqskjy.com/list-1101-0-0-2-2-0-0-0-0.jsp" title="卡通花束">卡通花束</a>
                                        <a href="http://huashi.hqskjy.com/list-1115-0-0-2-2-0-0-0-0.jsp" title="祭奠花篮">祭奠花篮</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="593" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1091-0-0-2-2-0-0-0-0.jsp">手捧花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1089-0-0-2-2-0-0-0-0.jsp">礼盒鲜花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1088-0-0-2-2-0-0-0-0.jsp">卡通花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1090-0-0-2-2-0-0-0-0.jsp">绿植发财树</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1102-0-0-2-2-0-0-0-0.jsp">开业花篮</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1103-0-0-2-2-0-0-0-0.jsp">巧克力花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1116-0-0-2-2-0-0-0-0.jsp">精美桌花</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1101-0-0-2-2-0-0-0-0.jsp">卡通花束</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1115-0-0-2-2-0-0-0-0.jsp">祭奠花篮</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
<li cat_id="888" class="even">
    <div class="class">
        <h4><a href="javascript:">按颜色订花</a></h4>
              <span class="recommend-class">
                                                      <a href="http://huashi.hqskjy.com/list-1093-0-0-2-2-0-0-0-0.jsp" title="红色">红色</a>
                                        <a href="http://huashi.hqskjy.com/list-1094-0-0-2-2-0-0-0-0.jsp" title="粉色">粉色</a>
                                        <a href="http://huashi.hqskjy.com/list-1095-0-0-2-2-0-0-0-0.jsp" title="紫色">紫色</a>
                                        <a href="http://huashi.hqskjy.com/list-1096-0-0-2-2-0-0-0-0.jsp" title="黄色">黄色</a>
                                        <a href="http://huashi.hqskjy.com/list-1097-0-0-2-2-0-0-0-0.jsp" title="白色">白色</a>
                                        <a href="http://huashi.hqskjy.com/list-1098-0-0-2-2-0-0-0-0.jsp" title="蓝色">蓝色</a>
                                        <a href="http://huashi.hqskjy.com/list-1099-0-0-2-2-0-0-0-0.jsp" title="香槟色">香槟色</a>
                                              </span><span class="arrow"></span> </div>
    <div class="sub-class" cat_menu_id="888" style="margin-top: 0px; display: none; ">
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1093-0-0-2-2-0-0-0-0.jsp">红色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1094-0-0-2-2-0-0-0-0.jsp">粉色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1095-0-0-2-2-0-0-0-0.jsp">紫色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1096-0-0-2-2-0-0-0-0.jsp">黄色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1097-0-0-2-2-0-0-0-0.jsp">白色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1098-0-0-2-2-0-0-0-0.jsp">蓝色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
        <dl>
            <dt>
            <h3><a href="http://huashi.hqskjy.com/list-1099-0-0-2-2-0-0-0-0.jsp">香槟色</a></h3>
            </dt>
            <dd class="goods-class">
            </dd>
        </dl>
    </div>
</li>
</ul>
</div>        </div>
    <ul class="site-menu">
      <li><a href="<c:url value="FindAllTypeServlet"/>">首页</a></li>
      <li><a href="listAll.jsp">全部鲜花</a></li>
      <li><a href="love.jsp" target="_blank">爱情鲜花</a></li>
      <li><a href="listBrmdate.jsp">生日鲜花</a></li>
      <li><a href="startFlower.jsp">开业花篮</a></li>
      <li><a href="grade.jsp" target="_blank">高端鲜花</a></li>
      <li><a href="tejia.jsp" target="_blank">特价鲜花<img src="image/discount.gif" style="position: absolute; top: 0px; z-index: auto; float: right; "></a></li>
    </ul>
  </div>
</nav><div class="nch-breadcrumb-layout">
    <div class="nch-breadcrumb wrapper"><i class="icon-home"></i>
            <span><a href="http://huashi.hqskjy.com/shop">首页</a></span><span class="arrow">&gt;</span>
                <span><a href="http://huashi.hqskjy.com/index.php?act=member&amp;op=home">我的商城</a></span><span class="arrow">&gt;</span>
                <span>收货地址</span>
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
      <h2><a href="http://huashi.hqskjy.com/index.php?act=member&amp;op=home" title="我的商城">我的商城</a></h2>
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
                <input name="member_information" data-value="selfNews.jsp" data-name="账户信息" type="checkbox" class="checkbox">
                账户信息</label>
            </dd>
                        <dd>
              <label>
                <input name="member_security" data-value="http://huashi.hqskjy.com/index.php?act=member_security&amp;op=index" data-name="账户安全" type="checkbox" class="checkbox">
                账户安全</label>
            </dd>
                        <dd>
              <label>
                <input name="member_address" data-value="selfAddres.jsp" data-name="收货地址" type="checkbox" class="checkbox">
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
      <div class="avatar"> <img src="image/default_user_portrait.gif"> 
        <div class="frame"></div>
              </div>
      <div class="handle"><a href="#" title="修改头像"><i class="icon-camera"></i>修改头像</a><a href="#" title="修改资料"><i class="icon-pencil"></i>修改资料</a><a href="#" title="安全退出"><i class="icon-off"></i>安全退出</a></div>
      <div class="name">${loginUser.usLoginName}&nbsp;
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
                    <li><a href="selfCollect.jsp">我的收藏</a></li>
                    <li><a href="#">交易评价/晒单</a></li>
                  </ul>
              </li>
            <li class="side-menu"><a href="javascript:void(0)" key="info">
        <h3>资料管理</h3>
        </a>
                <ul>
                    <li><a href="userLogo.jsp">账户信息</a></li>
                    <li><a href="anquan.jsp">账户安全</a></li>
                    <li><a href="selfAddres.jsp">收货地址</a></li>
                  </ul>
              </li>
                </ul>
  </div>
  <div class="right-layout">
    
<div class="wrap">
  <div class="tabmenu">
    <ul class="tab pngFix">
  <li class="active"><a href="#">地址列表</a></li></ul>
    <a href="#" class="ncm-btn ncm-btn-orange" dialog_id="my_address_edit"# dialog_width="550" title="新增地址"><i class="icon-map-marker"></i><em style="font:13px "宋体";" id="addshou">新增地址</em></a>
        <a href="#" class="ncm-btn ncm-btn-orange" style="right: 100px;" nc_type="dialog" dialog_title="使用代收货（自提）" dialog_id="daisou" uri="index.php?act=member_address&amp;op=delivery_add" dialog_width="900" title="使用自提服务站"><i class="icon-flag"></i>使用自提服务站</a>
      </div>
  <div class="alert alert-success">
    <h4>操作提示：</h4>
    <ul>
      <li>最多可保存20个有效地址</li>
    </ul>
  </div>
  <link rel="stylesheet" type="text/css" href="css/address.css"/>
  <table class="ncm-default-table">
    <thead>
      <tr>
        <th class="w80">收货人</th>
        
        <th class="tladd">所在地址</th>
        <th class="w120">电话/手机</th>
        <th class="w150"></th>
        <th class="w110">操作</th>
      </tr>
    </thead>
        <tbody>
        <tr class="bd-line">
        <td>name</td>
        
        <td class="tladd"><em class="delivery"></em>昆明市</td>
        <td>
          <p><i class="icon-mobile-phone"></i>13638814165</p></td>
        <td></td>
        <td class="ncm-table-handle"><span>
                    <a href="#" class="btn-blue" ><i class="icon-edit"></i>
          <p>编辑</p>
          </a>
                    </span> <span><a href="javascript:void(0)" class="btn-red" onclick=""><i class="icon-trash"></i>
          <p>删除</p>
          </a></span></td>
      	</tr>
      	
      	
      </tbody>
  </table>
</div>
<script type="text/javascript" src="js/common_select.js" charset="utf-8"></script>
<script src="js/jquery.ajaxContent.pack.js" type="text/javascript"></script>
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
                            <!--<div style="width:100%;height:25%;margin-top:6px;">
                                <label>花店QQ在线</label>
                            </div>
                            <div style="width:100%;height:25%;margin-top:6px;">
                                                            <span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes" title="QQ: "><img border="0" src="http://wpa.qq.com/pa?p=2::52" style=" vertical-align: middle;"/></a></span>
                                                                                    <span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes" title="QQ: "><img border="0" src="http://wpa.qq.com/pa?p=2::52" style=" vertical-align: middle;"/></a></span>

                                                        </div>-->
                        </div>
                        <!--
                        <span class="ic tel t20"></span>
                        <span class="ic mail"></span>
                        <div class="attention cleafix">
                            <div class="weixin f-l">
                                <img src="" class="f-l jImg img-error">
                                   <p class="f-l">
                                    <span>扫一扫</span>
                                    <span>关注我们</span>
                                </p>
                            </div>
                            <div class="weibo f-l">
                                <div class="ic qq" style="padding-left: 0px;"></div>
                                <div class="ic sina" style="padding-left: 0px;"></div>
                            </div>
                        </div>
                        -->
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
    <p><a href="#">首页</a>
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
<!--<script src="http://s4.cnzz.com/z_stat.php?id=1259180010&web_id=1259180010" language="JavaScript"></script>-->
<!--
    <script> (function () {var _53code=document.createElement("script");_53code.src = '//tb.53kf.com/code/code/10133173/1'; var s = document.getElementsByTagName("script")[0];s.parentNode.insertBefore(_53code, s);})(); </script>
--><style type="text/css">
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
<div style="width:480px; height:200px; background-color:#fff; display:none; position:absolute; top:328px;  left:700px; border:solid 1px #888; " id="showadd">
	
    <div class="xian1">
    	<div class="xian1_1">&nbsp;&nbsp;新增地址</div>
        <div class="xian1_2"><em id="hiedAd">X</em></div>
        <form action="addAddres" method="post">
        	<div class="xianform1">
            	<div>姓名：</div>
                <input type="text" name="address.addressName"/>
            </div>
            <div class="xianform1">
            	<div>电话：</div>
                <input type="text" width="400"name="address.addressPhone"/>
            </div>
            <div class="xianform1">
            	<div>地址：</div>
                <input type="text" width="400" name="address.addressSite"/>
            </div>
            <div class="xianform2">
            	<input type="submit" value="保 存" id="baocuns"/>
            </div>
        </form>
        
    </div>
    
</div>




    


</body>
</html>