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
        .oflow_tag{font-size:0.9em;color:#999;}
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

    <title>博君酒店</title>
</head>
<body header="" footer="">
<header class="fixed" border="">
    <div class="header_l"><i class="iconfont icon-fanhui11211"></i></div>
    <div class="header_c">入住须知</div>
    <div class="header_r">
    </div>
</header>


<style type="text/css">
    #cart_cates{border-radius: 0 0 3px 3px;}
    .cart_node_group{color:#FFF;opacity: 0.6;font-size:0.9em;line-height:30px}
    .cart_cate_node{line-height:28px;text-align:left;font-size:0.9em;position:relative;color:#FFF;opacity: 0.8}
    .cart_cate_node>.icon-gouwuche{font-size:1.3em;position:absolute;left:0;top:1px;color:#555!important;}

    .ccges{height:3px;background:#FFF;opacity: 0.3}
</style>


<script type="text/javascript">
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


<div class="owrap">
    <div class="oflow box border-bottom border-eee">
        <div class="oflow_tag">WIFI密码：88888888</div>
    </div>

    <div class="oflow box border-bottom border-eee">
        <div class="oflow_tag">1.入住：</div>
    </div>
    <div class="oflow box border-bottom border-eee">
        <div class="oflow_cont box1">&nbsp&nbsp&nbsp&nbsp请各位入住的亲们，遵照中华人民共和国的法律法规、
            及时配合房东做好入住登记，做一个守纪律、守法律的好公民！</div>
    </div>

    <div class="oflow box border-bottom border-eee">
        <div class="oflow_tag">2.房间物品：</div>
    </div>
    <div class="oflow box border-bottom border-eee">
        <div class="oflow_cont box1">&nbsp&nbsp&nbsp&nbsp房间所有的物品请各位亲爱护，如有损毁，
            请大家比照房间物品价目表予以赔付</div>
    </div>

    <div class="oflow box">
        <div class="oflow_tag">3、电视使用：</div>
    </div>
    <div class="oflow box">
        <div class="oflow_cont box1">&nbsp&nbsp&nbsp&nbsp请直接使用桌面黑色电视遥控器，对准信号盒子，
            如果没有反应，请按一下电视机右下侧的power按钮，直到电源键变绿，再使用遥控即可。
            如还有问题，请重启电源，如果还不行，请联系我们，我们及时安排电视机装机师傅为您调试</div>
    </div>


    <div class="oflow box">
        <div class="oflow_tag">4.热水器使用：</div>
    </div>
    <div class="oflow box">
        <div class="oflow_cont box1">&nbsp&nbsp&nbsp&nbsp所有房间配备的均为电热水器或者燃气热水器。电热水器使用
            时请及时调整好加热按钮和水温，洗澡前请断掉电源确保安全。燃气热水器使用时一般和
            24小时热水的使用一样，直接将出水口打至热水一侧，调至水温合适即可。如果不出热水，
            请检查是否打至方向不对，朝反方向开热水1分钟，看下是否出热水。如果还不出热水，
            请去厨房看一下燃气热水器是否亮灯，电源是否跳闸（检查电表箱），如还是完好而无热水，
            请把安全气阀轻轻外拉一下，再次测试热水，如还无热水，
            请及时电话我们安排维修师傅维修（大概24小时之内，燃气属于市政总管）</div>
    </div>


    <div class="oflow box">
        <div class="oflow_tag">5.退房：</div>
    </div>
    <div class="oflow box">
        <div class="oflow_cont box1">&nbsp&nbsp&nbsp&nbsp下午两点以后入住，次日12点之前退房，退房时请将钥
            匙放在房间的茶几上，属于房间的物品请不要带走，尽量保持房间的整洁，物品如
            有损毁，请及时沟通</div>
    </div>

    <div class="oflow box">
        <div class="oflow_tag">6.押金退还：</div>
    </div>
    <div class="oflow box">
        <div class="oflow_cont box1">&nbsp&nbsp&nbsp&nbsp在退房当天下午两点到六点，保洁人员检查和查完房间后
            准时予以退还。如到时间还未收取到押金退还，请及时联系门店接待您的人员。温馨提
            示：为了能第一时间退还您的押金，请退房后以您方便的方式通知门店接待您的工作
            人员。谢谢您的配合</div>
    </div>

    <div class="oflow box">
         <div class="oflow_tag">7.值班时间：</div>
    </div>
    <div class="oflow box">
        <div class="oflow_cont box1">&nbsp&nbsp&nbsp&nbsp早上9点至晚上11点，尊敬的顾客您好，晚上11点之后
            至次日9点之前，有事请微信留言或者发送短信，工作人员上班之后，会第一时间联系
            您的，如遇到不可控因素，请及时联系，谢谢您的体谅,入住愉快哦！</div>
    </div>

</div>

</div>

</body>
</html>
