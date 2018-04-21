<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/28
  Time: 16:17
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

    <script src="/weihotel/front/plugin/layer.m/layer.m.js"></script><link href="/weihotel/front/plugin/layer.m/need/layer.css" type="text/css" rel="styleSheet" id="layermcss">

    <link rel="stylesheet" href="/weihotel/front/plugin/layer.m/need/layer.css">

    <script type="text/javascript" src="/weihotel/front/plugin/jweixin-1.0.0.js"></script>
    <script type="text/javascript" src="/weihotel/front/js/wx_api.js?"></script>




    <script src="/weihotel/front/plugin/flickity/flickity.js"></script>
    <link rel="stylesheet" href="/weihotel/front/plugin/flickity/flickity.min.css?1sds">



    <style type="text/css">

        body{padding-bottom:105px!important;background:#eee!important;}
        .onp_node{font-size:0.9em;}.onp_node *{font-family:Arial;}

        .orderNodePrice{background:#FFF;margin-top:20px;padding:15px;padding-top:0}

        .t_tag{text-align:center;line-height:35px;color:#819EDF;border-bottom:1px solid #EEE;margin-bottom:15px}
        .phj{width:60px;text-align:center;line-height:50px;color:#BBB;}
        .pfy{width:100px;text-align:right;line-height:50px;}.pfy>span>span{font-size:1.6em}

        #order1{background:#FFF;padding:10px;}

        .orderf{font-size:0.9em;text-align:left;border-bottom:1px solid #EEE;padding-bottom:7px;color:#00B38C;}
        .orderf1{line-height:25px;font-size:0.9em;font-family:Arial;color:#555}

        .owrap{background:#FFF;margin-top:10px;}
        .oflow{line-height:35px;}
        .oflow_tag{font-size:0.9em;color:#999;width:70px;padding-left:10px;}
        .oflow_cont{font-size:0.9em;color:#555;font-family:Arial}

        #sureorder{position:fixed;width:100%;line-height:50px;bottom:0px;left:0;z-index:2}
        #sureorder .ibox6{text-align:center;background:#FFF;color:#FF6D10;font-family: Arial}
        #sureorder .ibox4{text-align:center;background:#FF6D10;color:#FFF}

        #idcard{background:#FFF;padding:0 15px 5px 15px;}

        #idcard_tag{color:#555;padding:0 15px;line-height:35px;background:#FFF;MARGIN-top:15px;FONT-SIZE:0.9EM;border-bottom:1px solid #ffb687}

        #pp_by{background:#FFF;margin-top:10px;}
        #pp_blc{padding-left:15px;line-height:40px;font-family:Arial}
        #pp_blc_cont{padding:5px 0;}
        #pp_blc_left{text-align:left;font-size:0.9em;color:#555;width:100px;}
        #pp_blc_right{text-align:right;color:#BBB;}
        #ppb_left1{line-height:20px;font-size:0.9em;COLOR:#FF6D10;font-family:Arial}
        #ppb_left2{line-height:20px;color:#bbb;font-size:0.8em;font-family:Arial}
        #pp_blc_t{width:70px;text-align:center;color:#BBB;line-height:40px}

        #pp_yhj{padding:2px 0px 2px 15px;border-bottom:1px solid #EEE;height:40px;}
        #ppy_tag{width:120px;line-height:40px;font-size:0.8em;color:#555}
        #ppy_right{width:70px;text-align:center;color:#BBB;line-height:40px}#ppy_right>i{font-size:1.3em}
        #ppy_cont{text-align:right;color:#0b8069;font-size:0.9em;line-height:40px;}

        #pp_blc_t>i.icon-xuanzhong2{display:none;color:#00B34E;font-size:1.3em}
        #pp_blc_t>i.icon-xuanzhong{color:#bbb;font-size:1.3em}

        .in_check>i.icon-xuanzhong2{color:#00B34E;font-size:1.3em}
        .in_check>i.icon-xuanzhong{color:#bbb;font-size:1.3em}

        #ibooktype{margin-top:10px;background:#FFF;}
        .ibt_node{line-height:20px;font-size:1em;;text-align:center;color:#888;padding:5px 0}.ibt_node div{font-size:0.7em;color:#CCC}
        .ibtn_dft{background:#46C477;color:#FFF!important;border:none!important;}.ibtn_dft div{color:#beffd7!important;}
        .ibook_node{display:none}
        .ttips{color:#bbb;font-size:0.9em;text-align:center;padding-top:15px}

        #rt_imgs{position:relative;overflow:hidden;width:100%;background:#5677FC}
        #rt_imgs_num{background:url(/weihotel/front/img/bdot.png);color:#FFF;line-height:35px;font-size:0.9em;border-radius:5px 0 0 5px;position:absolute;right:0;top:10px;font-family:Arial;padding:0 15px}

        #pp_phone{background:#FFF;margin-top:10px;border-bottom: 1px dotted #FF6D10}
        #ppp_tag{width:80px;padding-left:10px;font-size:0.9em;color:#999;line-height:45px;}
        #ppp_con input{border:none;line-height:45px;font-family:Arial;font-size:0.9em;width:100%;}

        #pp_name{background:#FFF;margin-top:10px;border-bottom: 1px dotted #FF6D10}
        #pn_tag{width:80px;padding-left:10px;font-size:0.9em;color:#999;line-height:45px;}
        #pn_con input{border:none;line-height:45px;font-family:Arial;font-size:0.9em;width:100%;}
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
<body header="" footer="">
<header class="fixed" border="">
    <div class="header_l"><i class="iconfont icon-fanhui11211"></i></div>
    <div class="header_c">确认订单</div>
    <div class="header_r">

        <i class="iconfont icon-fenlei  xiala" id="open_cart"></i>



    </div>
</header>
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

    #to_cart_wrap{position:fixed;z-index:99;background:url(/templete/fore/common/goods/front/img/bdot1.png);top:0;left:0;opacity:0.5;display:none;width:100%;}
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
</script><script type="text/javascript">
    $(document).ready(function () {
        if(document.referrer === ''){
            $(".header_l>i").hide() ;
        }else{
            $(".header_l").click(function () {
                history.go(-1) ;
            })
        }
    })
</script>
<div id="order1">
    <div class="orderf">圆床房</div>

    <div class="orderf1">入住时间：10-01 12:00 至 10-02 14:00　共1晚</div>
</div>

<%--<div id="ibooktype">
    <div class="ibt_node ibox ibox5 ibtn_dft" data-target="online">
        付费订房
        <div>房间一直为您预留</div>
    </div>
    <div class="ibt_node ibox ibox5" data-target="offline">
        预订，到店付
        <div>为您预留到18点</div>
    </div>
    <div class="clear"></div>
</div>--%>

<div class="owrap">
    <div class="oflow box border-bottom border-eee">
        <div class="oflow_tag">房　费：</div>
        <div class="oflow_cont box1">99.99元 (1晚)= 99.99元 * 1晚</div>
        <div class="clear"></div>
    </div>
<%--    <div class="oflow box border-bottom border-eee">
        <div class="oflow_tag">押　金：</div>
        <div class="oflow_cont box1">99.99元</div>
        <div class="clear"></div>
    </div>--%>
    <div class="oflow box border-bottom border-eee">
        <div class="oflow_tag">应　付：</div>
        <div class="oflow_cont box1">199.98元</div>
        <div class="clear"></div>
    </div>
    <div class="oflow box">
        <div class="oflow_tag">可　住：</div>
        <div class="oflow_cont box1">2人</div>
        <div class="clear"></div>
    </div>
</div>


<div id="pp_phone" class="box">
    <div id="ppp_tag">联系手机：</div>
    <div id="ppp_con" class="box1"><input type="text" name="phone" value="" placeholder="必填，11位手机号"></div>
    <div class="clear"></div>


</div>

<div id="pp_name" class="box">
    <div id="pn_tag">入住人</div>
    <div id="pn_con" class="box1"><input type="text" name="phone" value="" placeholder="必填，入住人信息"></div>
    <div class="clear"></div>
</div>

<div id="pp_by" style="display: block;">


</div>

<div id="sureorder">
    <div class="ibox ibox6" id="totalPrices" data-ticket="199.98" data-integrate="199.98">199.98元</div>
    <div class="ibox ibox4" id="dosureorder">前往支付</div>
    <div class="clear"></div>
</div>


<script type="text/javascript">
    $(document).ready(function(){
        var ticket = "0" ;
        var integrate = 0 ;
        var booking = 0 ;


        $("#rt_imgs>img").width(window.client_width) ;

        $("#rt_imgs").height(window.client_width/2.6) ;

        $("#dosureorder").click(function(){
            var inDate = "2017-10-01 12:00:00" ;var outDate = "2017-10-02 14:00:00" ;var room = "122001" ;var bookType = "0" ;

            var idcards = "" ;

            $(".idcard_node[data-check='1']").each(function () {
                idcards += $(this).attr("data-id")+"," ;
            }) ;

            if($(".idcard_node[data-check='1']").length <= 0){
                $.tip("请选择入住人") ;
            }else if($(".idcard_node[data-check='1']").length > $("#idcard").attr("data-max")){
                $.tip("最多只能入住"+$("#idcard").attr("data-max")+"人！") ;
            }else{
                $.ajax_op_auto("/user/order/createOrder?booking="+booking+"&intime="+inDate+"&outtime="+outDate+"&room="+room+"&idcards="+idcards+"&bookType="+bookType+"&ticket="+ticket+"&integrate="+integrate+"&phone="+$("input[name='phone']").val() , booking == 0 ? "确定提交并生成订单吗？":"确认预订吗？") ;
            }
        }) ;

        $("#pp_blc").click(function(){
            if($("#pp_blc_t>.icon-xuanzhong").css("display") == "none"){
                $("#pp_blc_t>.icon-xuanzhong").show() ;
                $("#pp_blc_t>.icon-xuanzhong2").hide() ;
                $("#totalPrices").html($("#totalPrices").attr("data-ticket")+"元") ;
                integrate = 0 ;
            }else{
                $("#pp_blc_t>.icon-xuanzhong").hide() ;
                $("#pp_blc_t>.icon-xuanzhong2").show() ;
                $("#totalPrices").html($("#totalPrices").attr("data-integrate")+"元") ;
                integrate = 1 ;
            }
        }) ;

        $(".ibt_node").click(function () {
            $(".ibt_node").removeClass("ibtn_dft") ;

            $(this).addClass("ibtn_dft") ;

            if($(this).attr("data-target") == "online"){
                $("#pp_by").show() ;
                $("#dosureorder").html("前往支付") ;
                booking = 0 ;
            }else{
                $("#pp_by").hide() ;
                $("#dosureorder").html("确认预订") ;
                booking = 1 ;
            }
        }) ;

        /*wx.ready(function(){
            var imgs = [] ;
            var img_list = "" ;
            for(var i = 0 ; i < img_list.split(";").length ; i ++){
                var img = img_list.split(";")[i] ;
                if(img!="")imgs = imgs.concat(img) ;
            }

            $("#rt_imgs").click(function(){
                wx.previewImage({
                    urls:imgs
                }) ;
            }) ;

        }) ;*/

        $.pageview("订房" , "订单准备", "") ;
    }) ;
</script>
</body>
</html>
