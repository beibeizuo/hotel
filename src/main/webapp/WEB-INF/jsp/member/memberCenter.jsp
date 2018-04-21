<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/25
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <meta name="format-detection" content="telephone=no">


    <!--footer-->


    <link rel="stylesheet" href="/weihotel/front/css/weui.css">

    <script type="text/javascript" src="/weihotel/front/plugin/jquery.min.js"></script>

    <script type="text/javascript" src="/weihotel/front/plugin/jquery.lazyload.js"></script>

    <script type="text/javascript" src="/weihotel/front/plugin/fastclick.js?"></script>

    <script type="text/javascript" src="/weihotel/front/js/global.js?sdf"></script>









    <style type="text/css">
        #uc_top{background:#FFF;MARGIN-top:0px;padding-bottom:10px;position: relative;z-index:1}
        #uc_top_img{width:60px;margin-left:15px;padding:10px;background:#F2F2F2;height:60px;border-radius:60px;margin-top:-40px}
        #uc_top_img img{border-radius:60px;}

        #uc_top_info{padding:0 10px;}
        #uti_other{line-height:30px;font-size:0.8em;color:#999;padding-top:5px;font-family: Arial}
        #uti_name{line-height:35px;color:#FFF;font-size:1.2em;font-family: Arial;padding-bottom:5px}

        #uc_list{margin-top:20px;background:#FFF;}

        .ucn_lg{width:15px;}
        .uc_node{line-height:55px;}.uc_node>div:not(.ucn_lg){border-bottom:1px solid #EEE}
        .ucn_icon{width:30px;}
        .ucn_name{width:100px;padding-left:10px;color:#555}
        .ucn_go{width:20px;padding-right:10px;color:#BBB}.ucn_go i{font-size:1.2em;color:#CCC}
        .ucn_intro{color:#bbb;font-size:0.9em;TEXt-align:right;padding-right:10px;font-family: Arial;}

        .ucn_icon>div{width:22px;height:22px;border-radius:2px;line-height:30px;TEXT-align:center;font-size:1.3em;margin-top:17px}.ucn_icon>div>i{line-height:20px!important;color:#FFF}
        .bg-org{background-color:#FFB600}
        .bg-zi{background-color:#D9B3E6}
        .bg-blue{background-color:#2972DE}
        .bg-fh{background-color:#FF0062}
        .bg-gr{background-color:#4AB621}
        .bg-gray{background-color:#999}

        #bottom{text-align:center;font-family: Arial;color:#BBB!important;}

        #uc_top_wrap{height:100px;}
        #uc_top_info{margin-top:-40px}

        #ucorder{background:#FFF;padding:0 15px 10px 15px;box-shadow:0 0 5px #CCC;position: relative;z-index:0}
        #ucorder_c{border-top:1px solid #EEE;PADDING-top:5px}
        #ucorder_icon{width:50px}
        #ucorder_icon>div{width:35px;height:35px;border-radius:100px;color:#FFF;line-height:35px;text-align:center;box-shadow:2px 2px 2px #fb9b67;margin-top:10px;margin-left:0px}
        #ucorder_name{padding-top:9px}
        #ucon_name{font-size: 1em;color:#333;line-height:20px;}
        #ucon_tip{font-size: 0.9em;color:#BBB;line-height:20px;font-family: Arial}

        #ucorder_see{width:77px;padding-top:12px}
        #ucorder_see>div{width:75px;line-height:26px;border:1px solid #FD5332;border-radius:30px;color:#FD5332;text-align: center;font-size:0.9em}
        #ucorder_see>div>i{font-size:1.3em}
        #open_cart{color:#eee;position: absolute;right:10px;top:10px;font-size:1.3em}
    </style>
    <script type="text/javascript">
        window.addEventListener('load', function() {
            FastClick.attach(document.body);
        }, false);
    </script>

    <link rel="stylesheet" href="/weihotel/front/css/global.css?22123s34">

    <link rel="stylesheet" href="/weihotel/front/css/green.css?22sd1sdf123123s34">

    <link rel="stylesheet" href="/weihotel/front/css/font_217128_bxnan6by5zziwwmi.css">

    <title>西安市南雷酒店</title>
</head>
<body footer="">
<div id="to_cart_wrap" style="height: 627px;"></div>
<div id="to_cart" class="bgOwn" style="height: 627px;">
    <div id="cart_cates">
        <div class="cart_node_group">预订</div>

        <div class="ccges">　</div>

        <div class="cart_cate_node" onclick="location.href='/'">　订房</div>

        <div class="cart_cate_node" onclick="location.href='/user'">　会员中心</div>


        <div class="cart_cate_node" onclick="location.href='/xuzhi'">　入住须知</div>

        <div class="cart_node_group">商城</div>
        <div class="ccges">　</div>
        <div class="cart_cate_node" onclick="location.href='/goods'">　首页</div>
        <div class="cart_cate_node" onclick="location.href='/goods/cart'">　购物车</div>
        <div class="cart_cate_node" onclick="location.href='/goods/order'">　订单</div>
        <div class="cart_cate_node" onclick="location.href='/goods/user'">　会员中心</div>
    </div>
</div>

<style type="text/css">
    #to_cart{line-height:45px;width:90px;display:none;position:fixed;right:0;top:0px;padding-left:15px;Z-INDEX:999;;box-shadow:0px 0px 13px #333}
    #to_cart>.ion-ios-cart-outline{font-size:1.5em;color:#A80000}

    #to_cart_wrap{position:fixed;z-index:99;background:url(/weihotel/front/img/header.jpg);top:0;left:0;opacity:0.5;display:none;width:100%;}
    #cart_cates{border-radius: 0 0 3px 3px;}
    .cart_node_group{color:#FFF;opacity: 0.6;font-size:0.9em;line-height:30px}
    .cart_cate_node{line-height:28px;text-align:left;font-size:0.9em;position:relative;color:#FFF;opacity: 0.8}
    .cart_cate_node>.icon-gouwuche{font-size:1.3em;position:absolute;left:0;top:1px;color:#555!important;}

    .ccges{height:3px;background:#FFF;opacity: 0.3}
</style>

<script type="text/javascript">
    $(document).ready(function () {
        $("#to_cart,#to_cart_wrap").height(window.client_height) ;

        $("#open_cart").click(function(){
            $("#to_cart,#to_cart_wrap").toggle() ;
        }) ;

        $("#to_cart_wrap,#to_cart_close").click(function(){
            $("#to_cart,#to_cart_wrap").hide() ;
        }) ;

    })
</script><div id="uc_top_wrap">　
    <i class="iconfont icon-fenlei xiala" id="open_cart"></i>
</div>
<div id="uc_top" class="box">
    <div id="uc_top_img">
        <img src="http://wx.qlogo.cn/mmopen/vi_32/5JnR1rU9jF5ia6NpcEj0L2ptPOTokT0aCUDLl12LKy34XJ029z3ibyGMNenWjKMoPBKrNufjdTeyOHUPdYMWYMsw/0" width="60" height="60">
    </div>

    <div id="uc_top_info" class="box1">
        <div id="uti_name">魔方</div>
        <div id="uti_other">
            ID:53880338
        </div>
    </div>

    <div class="clear"></div>
</div>

<div id="ucorder" class="clickLink" data-href="/weihotel/order/order">
    <div id="ucorder_c" class="box">
        <div id="ucorder_icon"><div class="jbs_fh"><i class="iconfont icon-icon-yxj-order1"></i></div></div>
        <div id="ucorder_name" class="box1">
            <div id="ucon_name">我的订单</div>
            <div id="ucon_tip" class="slh">
                待付款订单15分钟自动关闭
            </div>
        </div>
        <div id="ucorder_see">
            <div>
                <i class="iconfont icon-liulan1"></i> 查看
            </div>
        </div>
    </div>
</div>


<!--
	<div class="tips tips_warning margin-top-20">
		<i class="ion-alert-circled"></i><a href="/user/phone">请绑定手机</a><i class="ion-ios-close-outline tips_close"></i>
	</div>
	-->

<div id="uc_list">

    <div class="uc_node box clickLink" id="uc_infomng" data-href="/weihotel/user/idcards">
        <div class="ucn_lg"></div>
        <div class="ucn_icon"><div class="bg-blue"><i class="iconfont icon-shenfenzheng1"></i></div></div>
        <div class="ucn_name">证件管理</div>
        <div class="ucn_intro box1 slh"></div>
        <div class="ucn_go"><i class="iconfont icon-iconfontright"></i></div>
        <div class="clear"></div>
    </div>

    <a href="tel:">
        <div class="uc_node box no-borders">
            <div class="ucn_lg"></div>
            <div class="ucn_icon"><div class="bg-gray"><i class="ion-ios-telephone-outline"></i></div></div>
            <div class="ucn_name">联系客服</div>
            <div class="ucn_intro box1 slh"></div>
            <div class="ucn_go"><i class="iconfont icon-dianhua42"></i></div>
            <div class="clear"></div>
        </div>
    </a>
    <!--
    <div class="uc_node box no-borders">
        <div class="ucn_lg"></div>
        <div class="ucn_icon"><div class='bg-fh'><i class="ion-social-yen-outline"></i></div></div>
        <div class="ucn_name">账户管理</div>
        <div class="ucn_intro box1 slh">60元</div>
        <div class="ucn_go"><i class="ion-ios-arrow-right"></i></div>
        <div class=clear></div>
    </div>-->
</div>

<div id="bottom">博君家庭酒店(www.bojunjia.com)</div>


<footer node="3">
    <div id="footer_book" class="footer_node ">
        <a href="/">
            <div class="fn_icon">
                <i class="iconfont icon-icon3"></i>
            </div>
            <div class="fn_tag">订房</div>
        </a>
    </div>


    <div id="footer_order" class="footer_node ">
        <a href="/weihotel/order/order">
            <div class="fn_icon">
                <i class="iconfont icon-dingdan1"></i>
            </div>
            <div class="fn_tag">订单</div>
        </a>
    </div>



    <div id="footer_member" class="footer_node footer_node_dft">
        <a href="/weihotel/user">
            <div class="fn_icon">
                <i class="iconfont icon-huiyuan"></i>
            </div>
            <div class="fn_tag">会员</div>
        </a>
    </div>
</footer>

<script type="text/javascript">
    $(document).ready(function(){

        $("#uc_order").actionSheet({
            "buttons":[{name:'日租房',url:'/weihotel/order/dayOrders' } ,
                {name:'钟点房',url:'/weihotel/order/hourOrders'}
            ] ,
            "cancelText":"取消"
        }) ;

        $.pageview("会员中心" , "会员中心首页", "") ;
    }) ;
</script>
</body>
</html>
