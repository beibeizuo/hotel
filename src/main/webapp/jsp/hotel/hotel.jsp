<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <meta name="format-detection" content="telephone=no">


    <!--footer-->

    <link rel="stylesheet" href="/weihotel/front/css/weui.css">

    <script type="text/javascript"
            src="/weihotel/front/plugin/jquery.min.js"></script>

    <script type="text/javascript"
            src="/weihotel/front/plugin/jquery.lazyload.js"></script>

    <script type="text/javascript"
            src="/weihotel/front/plugin/fastclick.js?"></script>

    <script type="text/javascript"
            src="/weihotel/front/js/global.js?sdf"></script>

    <script src="/weihotel/front/plugin/layer.m/layer.m.js"></script>
    <link href="/weihotel/front/plugin/layer.m/need/layer.css"
          type="text/css" rel="styleSheet" id="layermcss">

    <link rel="stylesheet"
          href="/weihotel/front/plugin/layer.m/need/layer.css">

    <script type="text/javascript"
            src="/weihotel/front/plugin/jweixin-1.0.0.js"></script>
    <script type="text/javascript" src="/weihotel/front/js/wx_api.js?"></script>



    <script
            src="/weihotel/front/plugin/mobiscroll/mobiscroll.custom-3.0.0.js"></script>
    <link rel="stylesheet"
          href="/weihotel/front/plugin/mobiscroll/css/mobiscroll.custom-3.0.0.min.css?12">

    <script src="/weihotel/front/plugin/flickity/flickity.js"></script>
    <link rel="stylesheet"
          href="/weihotel/front/plugin/flickity/flickity.min.css?1sds">



    <link rel="stylesheet" href="/weihotel/front/css/jquery.shadow.css">
    <link rel="stylesheet"
          href="/weihotel/front/css/font_295462_k4b4rxy8fdh1tt9.css">
    <style type="text/css">
        .carousel {
            margin-bottom: -7px
        }

        .flickity-page-dots {
            bottom: 10px;
        }

        #iwrap_1 {
            background: #FFF;
            padding-left: 10px;
            border-bottom: 1px solid #fff
        }

        .displaynone {
            display: none
        }

        .i1flow {
            line-height: 35px;
            height: 35px;
            overflow: hidden
        }

        .i1flow_1 {
            font-size: 0.9em;
            color: #555
        }

        .i1flow_1 i {
            font-size: 1.2em
        }

        .i1flow_2 {
            width: 100px;
            text-align: right;
            font-size: 0.8em;
        }

        .i1flow_3 {
            width: 30px;
            text-align: center;
            font-size: 1.3em;
        }

        .i1flow_3 i {
            color: #ccc;
            line-height: 35px;
        }

        #ibooktype_wrap {
            background: #FFF;
            padding: 0 0 0px 0;
            margin-bottom: 5px
        }

        #ibooktype {
            margin-top: 10px;
            background: #FFF;
            height: 38px;
            background: url(/templete/fore/wx/front/img/line.png) bottom no-repeat;
            position: relative;
            border-bottom: 1px solid #F2F2F2;
            background-size: contain;
            margin: 0 10px;
        }

        .ibt_node {
            line-height: 37px;
            font-size: 1em;;
            text-align: center;
            color: #aaa;
            width: 60px;
            float: left
        }

        .ibt_node[data-target='day'] {
            margin-right: 20px
        }

        .ibtn_dft {
            font-size: 1em;
        }

        .ibook_node {
            display: none
        }

        #ibooktype_con {
            width: 140px;
            margin: auto
        }

        #ibook_wrap {
            margin-top: 2px;
        }

        #date {
            display: none
        }

        .ibd_right {
            width: 30px;
            text-align: center;
            font-size: 1.3em;
        }

        .ibd_right i {
            color: #ccc;
            line-height: 38px
        }

        /***/
        #hour_dis {
            /*background: ;*/
            line-height: 35px;
            text-align: center;
            font-size: 0.9em;
            color: #CCC
        }

        .form_node {
            height: 35px;
            border-bottom: 1px solid #EEE;
            background: #FFF;
            padding-left: 15px;
            position: relative;
            padding-bottom: 10px
        }

        .form_node_go {
            width: 30px;
            line-height: 45px;
            text-align: center;
            font-size: 1.3em;
            color: #CCC
        }

        .form_node_name {
            width: 100px;
            font-size: 0.9em;
            text-align: right;
            line-height: 35px;
        }

        .form_node_name i {
            color: #81C2D6;
            font-size: 0.9em
        }

        .form_node_value {
            font-size: 0.9em;
            color: #555;
            line-height: 45px;
        }

        .ftip {
            position: absolute;
            font-size: 0.7em;
            background: #EEE;
            color: #BBB;
            PADDING: 0px 8px;
            border-radius: 2px;
            right: 32px;
            bottom: 3px
        }

        .ftip i {
            position: absolute;
            TOP: -19px;
            font-size: 2.6em;
            color: #EEE;
            right: 0px
        }

        select[name='inTime'] {
            display: none
        }

        #iroomtypes_loading {
            text-align: center;
            display: none
        }

        #iroomtypes {
            margin-top: 5px;
        }
    </style>


    <style type="text/css">
        .roomTypeNode {
            padding: 10px 10px;
            border-bottom: 1px solid #F6F6F6;
            background: #FFF;
            padding-right: 0
        }

        .roomTypeNode:active {
            background: #F6F6F6
        }

        .roomTypeNodeImg {
            width: 100px;
            position: relative;
            margin-bottom: -5px;
            height: 60px;
            overflow: hidden
        }

        .roomTypeNodeInfo {
            height: 60px;
            overflow: hidden
        }

        .roomTypeNodeImg img {
            border-radius: 0px;
        }

        .roomTypeNodeInfoName {
            font-size: 1em;
            line-height: 22px;
            color: #555
        }

        .roomTypeNodeInfoPara {
            font-size: 0.8em;
            line-height: 22px;
            color: #999;
        }

        .roomTypeNodeInfoTags {
            font-size: 0.7em;
            line-height: 16px;
            margin-top: 0px;
        }

        .roomTypeNodeInfoTags i {
            font-size: 1.1em;
            color: #CCC
        }

        .rtn_tag_node {
            border: 1px solid #EEE;
            padding: 1px 3px;
            border-radius: 2px;
            line-height: 13px
        }

        .roomTypeNodePrice {
            width: 80px;
        }

        .roomTypeNodePrice1 {
            width: 80px;
        }

        .roomTypeNodeRight {
            width: 40px;
            text-align: center;
            padding-right: 15px;
            padding-top: 17px
        }

        .roomTypeNodeRight i {
            font-size: 1.1em;
            color: #CCC;
            line-height: 60px
        }

        .roomTypeNodePrice .rtnp {
            line-height: 60px;
            text-align: center
        }

        .roomTypeNodePrice1 .rtnp {
            line-height: 20px;
            margin-top: 15px;
            text-align: center
        }

        .roomTypeNodePrice1 .rtnp_zk {
            line-height: 20px;
            width: 50px;
            margin: auto;
            background: red;
            color: #FFF;
            text-align: center;
            border-radius: 2px;
            font-size: 0.7em;
        }

        .rtnp {
            color: #FF6D10;
            font-family: Arial
        }

        .flickity-page-dots {
            bottom: 10px;
        }

        .roomTypeDetail {
            display: none
        }

        .ths {
            background: #FFF
        }

        .rtninfo {
            padding: 0 10px;
            margin-top: -5px;
        }

        .rtninfo div * {
            font-size: 1em
        }

        .rtninfo .roomTypeNodeInfoPara,.rtninfo .roomTypeNodeInfoTags {
            font-size: 0.9em;
            line-height: 35px;
            border-bottom: 1px solid #EEE;
            margin-top: 0px;
        }

        .rtninfo .i {
            font-size: 1.5em
        }

        .rtninfo .roomTypeNodeInfoTags {
            margin-bottom: 10px;
            border-bottom: 2px solid #F6F6F6;
            padding-bottom: 0px;
        }

        //
        .rtninfo div {
            padding: 5px 0;
        }

        .rtnbt {
            padding: 15px 0;
        }

        .rtnbt .weui_btn_plain_default {
            border-color: #CCC !important
        }

        div.rtn_tag_node {
            float: left;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .rtni_xq {
            background: url(/templete/wx/front/img/bdot1.png);
            display: none;
            line-height: 22px;
            color: #FFF;
            text-align: center;
            font-size: 0.8em;
            width: 90px;
            position: absolute;
            left: 5px;
            top: 25px;
            z-index: 3
        }

        .irooms_loading {
            text-align: center;
            display: none
        }

        .roomTypeNodeMemberPrice {
            line-height: 25px;
            font-size: 0.8em;
            background: #FAFAFA;
            padding-left: 10px;
            padding-right: 25px;
            color: #999;
            position: relative;
            display: none;
        }

        .rtnmp1 {
            width: 80px;
            font-family: Arial
        }

        .roomTypeNodeCalendarPrice {
            line-height: 25px;
            font-size: 0.8em;
            background: #FAFAFA;
            padding: 10px;
            color: #999;
            position: relative;
            margin-top: 5px;
            font-family: Arial;
            display: none;
        }

        .roomTypeNodeCalendarPrice span {
            font-family: Arial
        }

        .irooms_wrap {
            padding-bottom: 5px;
        }

        .iroom_node {
            background: #fcfcfc;
            height: 50px;
            float: left;
            margin-right: 5px;
            margin-top: 5px
        }

        .irn_1 {
            line-height: 30px;
            text-align: center;
            color: #555;
            font-family: Arial;
            font-size: 0.9em
        }

        .irn_2 {
            line-height: 20px;
            text-align: center;
            color: #CCC;
            font-family: Arial;
            font-size: 0.8em
        }

        .iroomstip {
            text-align: center;
            line-height: 25px;
            color: #DDD;
            font-size: 0.8em;
            padding-top: 5px
        }

        .rtncp_to>div {
            border-top: 1px solid #EEE;
            padding-top: 10px;
            text-align: center
        }

        .rtncp_to>div span {
            background: #ff7800;
            padding: 10px 45px;
            color: #FFF;
            font-size: 1.1em
        }

        #hotel_imgs {
            position: relative;
            overflow: hidden;
            width: 100%;
            background: #ccc
        }

        #hotel_imgs_num {
            background: url(/templete/front/img/bdot.png);
            color: #FFF;
            line-height: 35px;
            font-size: 0.9em;
            border-radius: 5px 0 0 5px;
            position: absolute;
            right: 0;
            top: 10px;
            font-family: Arial;
            padding: 0 15px
        }

        #ticket {
            padding: 0 15px;
            padding-top: 5px;
            background: #FFF;
            display: none;
            box-shadow: 0 0 5px #DDD;
            border-radius: 2px;
            margin: 0px 15px 12px 15px;
        }

        .ticketnode {
            height: 50px;
        }

        .ticketnode_icon {
            width: 45px;
            padding-top: 5px
        }

        .ticketnode_icon div {
            background: #f43838;
            color: #FFF;
            width: 35px;
            border-radius: 100px;
            line-height: 35px;
            text-align: center;
            font-size: 1em
        }

        .ticketni_name {
            font-size: 0.9em;
            line-height: 25px;
            color: #333
        }

        .ticketni_am {
            font-size: 0.8em;
            color: #aaa;
            font-family: Arial
        }

        .ticketnode_togo {
            width: 60px;
            padding-top: 8px
        }

        .ticketnode_togo div {
            border: 1px solid #FF6D10;
            color: #FF6D10;
            text-align: center;
            line-height: 25px;
            border-radius: 3px;
        }

        #ibd_in_tag,#ibd_in_con {
            text-align: left;
            padding-left: 25px
        }

        #ibd_out_tag,#ibd_out_con {
            text-align: right;
            padding-right: 25px
        }

        #ibd_in_tag,#ibd_out_tag {
            color: #8E9DB1;
            font-size: 0.9em;
            padding-top: 15px;
            line-height: 20px
        }

        #ibd_out_con,#ibd_in_con {
            font-size: 1.2em;
            color: #333B4D;
            font-family: Helvetica;
            line-height: 30px
        }

        #ibd_total {
            text-align: center;
            padding-top: 10px;
            position: relative
        }

        #ibd_total_pn {
            border: 1px solid #DDE2E6;
            width: 50px;
            line-height: 50px;
            overflow: hidden;
            height: 50px;
            border-radius: 50px;
            margin: auto;
            position: relative;
            z-index: 2;
            background: #FFF
        }

        #ibd_total_line {
            width: 100%;
            height: 1px;
            background: #DDE2E6;
            position: absolute;
            top: 35px;
            -webkit-transform: rotate(-45deg);
            z-index: 1
        }

        #ibd_total_con {
            font-size: 1.2em;
            font-family: Helvetica
        }

        #ibd_total_tag {
            font-size: 0.9em;
            color: #ACADB3
        }

        #ibooknode {
            margin: 0 10px;
        }

        #ibook_day {
            padding-bottom: 10px
        }

        .ibtjust {
            display: none
        }

        .noresults {
            text-align: center;
            font-size: 0.9em;
            color: #F95F4A;
            line-height: 90px
        }

        .yudinganiu {
            border: 1px solid #00B38C;
            color: #00B38C;
            border-radius: 5px;
        }

        .roomTypeNodeRight[data-open='1'] .yudinganiu {
            border-color: #FFB400;
            color: #FFB400
        }

        .roomTypeNodeRight[data-open='0'] .yudinganiu {
            border-color: #00B38C;
            color: #00B38C
        }
    </style>
    <script type="text/javascript">
        window.addEventListener('load', function() {
            FastClick.attach(document.body);
        }, false);
    </script>

    <link rel="stylesheet"
          href="/weihotel/front/css/global.css?22123s34">

    <link rel="stylesheet"
          href="/weihotel/front/css/green.css?22sd1sdf123123s34">

    <link rel="stylesheet"
          href="/weihotel/front/css/font_217128_bxnan6by5zziwwmi.css">

    <title>西安市南雷酒店</title>
</head>
<body footer>
<script src="/weihotel/front/js/sheep.js?"></script>
<div id="sheep_bg"></div>
<div id="sheep_ct"></div>


<div id="hotel_imgs" style="height: 187.5px;">
    <div id="hotel_imgs_num">21+张图片</div>
    <img class="lazy"
         data-original="http://img.yiding.me/o_1bqeenj0pihk3vt1clv3oqco8a.jpg?imageView2/1/w/800/h/400"
         width="100%"
         src="http://img.yiding.me/o_1bqeenj0pihk3vt1clv3oqco8a.jpg?imageView2/1/w/800/h/400"
         style="width: 375px; display: inline;">
</div>
<div id="ibooktype_wrap">
    <div class="ibt_node ibtn_dft ibtjust" data-target="day"></div>
    <div id="ibooknode">
        <div class="ibook_node" data-target="day" style="display: block;">
            <input type="hidden" name="date" id=date
                   value="2017/09/25-2017/09/29" class="mbsc-comp" readonly="">
            <div id="ibook_day">
                <div class="ibox ibox4 colorOrg" id="ibd_in">
                    <div id="ibd_in_tag">入住日期</div>
                    <div id="ibd_in_con"></div>
                </div>
                <div class="ibox ibox2" id="ibd_total">
                    <div id="ibd_total_line"></div>
                    <div id="ibd_total_pn">
                        <span id="ibd_total_con"></span><span id="ibd_total_tag">晚</span>
                    </div>
                </div>
                <div class="ibox ibox4 colorOrg" id="ibd_out">
                    <div id="ibd_out_tag">退房日期</div>
                    <div id="ibd_out_con"></div>
                </div>
                <div class="clear"></div>
            </div>

        </div>


    </div>
</div>

<div id="ticket"></div>


<div id="iwrap_1">
    <!--地图-->
    <div id="imap" class="i1flow box border-bottom border-eee"
         data-lat="34.12115" data-lon=" 108.84442">
        <div class="box1 i1flow_1 slh">西安市长安区南雷村</div>
        <div class="i1flow_2">导航</div>
        <div class="i1flow_3">
            <i class="iconfont icon-iconfontright"></i>
        </div>
        <div class="clear"></div>
    </div>

    <div id="ixuzhi" class="i1flow box clickLink" data-href="/xuzhi">
        <div class="box1 i1flow_1 slh ">入住须知</div>
        <div class="i1flow_2">必读</div>
        <div class="i1flow_3">
            <i class="iconfont icon-iconfontright"></i>
        </div>
        <div class="clear"></div>
    </div>

    <!--<div id="iintro" class="i1flow box ">
    <div class="box1 i1flow_1 slh color999">无需登记、自助入住/退房</div>
    <div class="i1flow_2">特色服务</div>
    <div class="i1flow_3"><i class="ion-ios-arrow-right"></i></div>
    <div class="clear"></div>
</div>-->
</div>




<div id="ibook_wrap">



    <div id="iroomtypes">
        <div id="iroomtypes_loading" style="display: none;">
            <img src="/weihotel/front/img/loading1.gif" width="30">
        </div>

        <div id="iroomtypes_cont">
            <div data-id="123533">
                <div class="roomTypeNode box">
                    <div class="roomTypeNodeImg">
                        <img class="lazy1"
                             data-original="/weihotel/front/skin/o_1boadbo83irtq1m1i431a1s1k7bc.jpg"
                             width="90" height="60"
                             src="/weihotel/front/skin/o_1boadbo83irtq1m1i431a1s1k7bc.jpg"
                             style="display: inline;">
                    </div>
                    <div class="roomTypeNodeInfo box1">
                        <div class="roomTypeNodeInfoName slh">圆床房</div>
                        <div class="roomTypeNodeInfoPara slh">
                            100㎡ <span class="colorCCC">|</span> 1张床4 <span class="colorCCC">|</span>
                            可住2人
                        </div>
                        <div class="roomTypeNodeInfoTags slh">
                            <i class="iconfont icon-linyu"></i> <i
                                class="iconfont icon-tingche"></i>
                        </div>
                    </div>
                    <div class="roomTypeNodePrice">
                        <div class="rtnp">售罄</div>
                    </div>
                    <div class="roomTypeNodeRight" data-open="0">
                        <div class="yudinganiu">订</div>
                    </div>
                    <div class="roomTypeDetail" data-id="123533">
                        <div class="ths">
                            <div class="carousel123533">
                                <div class="carousel-cell">
                                    <img src="#" style="width:375px;height:250px">
                                </div>
                                <div class="carousel-cell">
                                    <img src="#" style="width:375px;height:250px">
                                </div>
                                <div class="carousel-cell">
                                    <img src="#" style="width:375px;height:250px">
                                </div>
                            </div>
                            <div class="rtninfo">
                                <div class="roomTypeNodeInfoPara">
                                    100㎡ <span class="colorCCC"> | </span> 1张床4 <span
                                        class="colorCCC">|</span> <span class="colorCCC"> | </span>
                                    可住2人
                                </div>
                                <div class="roomTypeNodeInfoTags">
                                    <i class="iconfont icon-linyu"></i>
                                    <i	class="iconfont icon-tingche"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="roomTypeNodeCalendarPrice">
                    微信优惠价<span>99.99元</span>一晚
                    <div class="rtncp_to"></div>
                </div>
                <div class="irooms_loading">
                    <img src="/weihotel/front/skin/loading1.gif" width="30">
                </div>
                <div class="irooms_wrap"></div>
            </div>

            <div data-id="123535">
                <div class="roomTypeNode box">
                    <div class="roomTypeNodeImg">
                        <img class="lazy1"
                             data-original="http://img.yiding.me/o_1boadhvtge0n1tj964v1su913o3c.jpg?imageView2/1/w/150/h/100"
                             width="90" height="60"
                             src="http://img.yiding.me/o_1boadhvtge0n1tj964v1su913o3c.jpg?imageView2/1/w/150/h/100"
                             style="display: inline;">
                    </div>
                    <div class="roomTypeNodeInfo box1">
                        <div class="roomTypeNodeInfoName slh">大床房</div>
                        <div class="roomTypeNodeInfoPara slh">
                            300㎡ <span class="colorCCC">|</span> 1张床 <span class="colorCCC">|</span>
                            可住2人
                        </div>
                        <div class="roomTypeNodeInfoTags slh">
                            <i class="iconfont icon-canyin"></i>
                            <i	class="iconfont icon-linyu"></i>
                            <i	class="iconfont icon-tingche"></i>
                            <i	class="iconfont icon-jieji"></i>
                            <i	class="iconfont icon-yinshuiji"></i>
                        </div>
                    </div>
                    <div class="roomTypeNodePrice">
                        <div class="rtnp">120元</div>
                    </div>
                    <div class="roomTypeNodeRight" data-open="0">
                        <div class="yudinganiu">订</div>
                    </div>
                    <div class="roomTypeDetail" data-id="123535">
                        <div class="ths">
                            <div class="carousel123535">
                                <div class="carousel-cell">
                                    <img
                                            src="http://img.yiding.me/o_1boadhvtge0n1tj964v1su913o3c.jpg?imageView2/3/w/800/h/400"
                                            style="width:375px;height:250px">
                                </div>
                                <div class="carousel-cell">
                                    <img src="#" style="width:375px;height:250px">
                                </div>
                                <div class="carousel-cell">
                                    <img src="#" style="width:375px;height:250px">
                                </div>
                            </div>
                            <div class="rtninfo">
                                <div class="roomTypeNodeInfoPara">
                                    300㎡ <span class="colorCCC"> | </span> 1张床 <span
                                        class="colorCCC">|</span> <span class="colorCCC"> | </span>
                                    可住2人
                                </div>
                                <div class="roomTypeNodeInfoTags">
                                    <i class="iconfont icon-canyin"></i> <i
                                        class="iconfont icon-linyu"></i> <i
                                        class="iconfont icon-tingche"></i> <i
                                        class="iconfont icon-jieji"></i> <i
                                        class="iconfont icon-yinshuiji"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="roomTypeNodeCalendarPrice">
                    微信优惠价<span>120.00元</span>一晚
                    <div class="rtncp_to"></div>
                </div>
                <div class="irooms_loading">
                    <img src="/weihotel/front/skin/loading1.gif" width="30">
                </div>
                <div class="irooms_wrap"></div>
            </div>



        </div>

    </div>





    <script type="text/javascript">
        window.roomtypehtml = "<div data-id='{id}'><div class='roomTypeNode box'>"
            + "<div class='roomTypeNodeImg'>"
            + "<img class=lazy1 data-original='{coverImg}' width=90 height=60>"
            + "</div>"
            +

            "<div class='roomTypeNodeInfo box1'>"
            + "<div class='roomTypeNodeInfoName slh'>{name}</div>"
            + "<div class='roomTypeNodeInfoPara slh'>{area}㎡ <span class=colorCCC>|</span> {bedType} 可住{personNum}人</div>"
            +

            "<div class='roomTypeNodeInfoTags slh'>"
            + "{sheshis}"
            + "</div>"
            + "</div>"
            +

            "<div class='roomTypeNodePrice'>"
            + "<div class='rtnp'>{price}</div>"
            + "</div>"
            +

            "<div class='roomTypeNodeRight' data-open='0'>"
            + "   <div class='yudinganiu'>订</div>"
            + "</div>"
            +

            "<div class='roomTypeDetail' data-id='{id}'>"
            + "<div class='ths'>"
            + "{images}"
            + "<div class='rtninfo'>"
            +

            "<div class='roomTypeNodeInfoPara'>{area}㎡ <span class=colorCCC>　|　</span> {bedType} <span class=colorCCC>　|　</span> 可住{personNum}人</div>"
            +

            "<div class='roomTypeNodeInfoTags'>"
            + "{sheshis}"
            + "</div>"
            +

            "</div>"
            + "</div>"
            +

            "</div>"
            + "<div class=clear></div>"
            + "</div>"
            + "{memberprice}"
            + "{calendarprice}"
            + "<div class='irooms_loading'><img src='/weihotel/front/skin/loading1.gif' width='30'></div>"
            + "<div class=irooms_wrap></div>" + "</div>";
    </script>
    <script type="text/javascript">
        $(document)
            .ready(
                function() {
                    // $('#ibooktype').shadow({type:'sides', sides:'hz-2'});
                    console.log("1");
                    var df_xuanfang = "";

                    $("#hotel_imgs>img").width(window.client_width);

                    $("#hotel_imgs")
                        .height(window.client_width / 2);

                    $("img.lazy").lazyload({
                        effect : "fadeIn"
                    });

                    var flky = new Flickity('.carousel', {
                        autoPlay : 5000,
                        prevNextButtons : false,
                        imagesLoaded : true,
                        contain : true,
                        lazyLoad : true
                    });

                    wx
                        .ready(function() {
                            var imgs = [];
                            var img_list = "http://img.yiding.me/o_1boadbo83irtq1m1i431a1s1k7bc.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadbo83lth1m6r1j8ojdd768d.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadbo841bt54k61qs81fog1o7re.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhirq1lo7n627o01m781jisc.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhirq1e6g1pgqfmsd071v17d.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1bqeei4psd661ck71g2ljvn1rvgf.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhirqcb31sa41vnjgagt1ie.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1bqeei16l1v1e1mrctrjn5s1l8fa.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhvtge0n1tj964v1su913o3c.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhvtgsftupe1eca9qe18h3d.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhvtg1flf1ipa18qn1dii1g4ve.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadbo83irtq1m1i431a1s1k7bc.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadbo83lth1m6r1j8ojdd768d.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadbo841bt54k61qs81fog1o7re.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhirq1lo7n627o01m781jisc.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhirq1e6g1pgqfmsd071v17d.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhirqcb31sa41vnjgagt1ie.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhvtge0n1tj964v1su913o3c.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhvtgsftupe1eca9qe18h3d.jpg?imageView2/3/w/800/h/2000;http://img.yiding.me/o_1boadhvtg1flf1ipa18qn1dii1g4ve.jpg?imageView2/3/w/800/h/2000;";
                            for (var i = 0; i < img_list
                                .split(";").length; i++) {
                                var img = img_list.split(";")[i];
                                if (img != "")
                                    imgs = imgs.concat(img);
                            }

                            $("#hotel_imgs").click(function() {
                                wx.previewImage({
                                    urls : imgs
                                });
                            });

                            $("#imap")
                                .click(
                                    function() {
                                        if ($("#imap")
                                                .attr(
                                                    "data-lat") == ""
                                            || $(
                                                "#imap")
                                                .attr(
                                                    "data-lat") == " ") {
                                            $
                                                .tip("地图出现了些问题，请通过其他方式获取酒店地址并进行导航！")
                                        } else {
                                            wx
                                                .openLocation({
                                                    latitude : $(
                                                        "#imap")
                                                        .attr(
                                                            "data-lat") - 1 + 1, // 纬度，浮点数，范围为90 ~ -90
                                                    longitude : $(
                                                        "#imap")
                                                        .attr(
                                                            "data-lon") - 1 + 1, // 经度，浮点数，范围为180 ~ -180。
                                                    name : '西安市南雷酒店', // 位置名
                                                    address : '西安市长安区南雷村', // 地址详情说明
                                                    scale : 15, // 地图缩放级别,整形值,范围从1~28。默认为最大
                                                    infoUrl : '' // 在查看位置界面底部显示的超链接,可点击跳转
                                                });
                                        }

                                    });
                        });
                    console.log("3");
                    var dayintime = "12";
                    var dayouttime = "14";
                    var roomtype = 0;
                    var day_intime = "";
                    var day_outtime = "";
                    var hour_intime = "";
                    var hour_outtime = "";
                    var bookType = 0;
                    /**
                     * 日租操作
                     * */
                    /*

                     function showBookType(){
                     if($(".ibtn_dft").attr("data-target") == "day"){
                     $.pageview("订房" , "日租房" , "") ;
                     }else{
                     $.pageview("订房" , "钟点房" , "") ;
                     }


                     $(".ibook_node").hide() ;
                     $(".ibook_node[data-target='"+($(".ibtn_dft").attr("data-target"))+"']").show() ;


                     }showBookType() ;

                     $(".ibt_node").click(function () {
                     $(".ibt_node").removeClass("ibtn_dft") ;
                     $(this).addClass("ibtn_dft") ;
                     showBookType() ;

                     if($(".ibtn_dft").attr("data-target") == "day"){
                     bookType = 0 ;
                     }else{
                     bookType = 1 ;
                     }

                     roomtype_search() ;
                     }) ;

                     *///界面写入入住时间，离店时间，住的天数
                    function dateChange() {
                        if ($("#date").val() != "") {
                            var start = $.dateFormatDMS(new Date($(
                                "#date").val().split("-")[0]
                                .replace(" ", "")));

                            var end = $.dateFormatDMS(new Date($(
                                "#date").val().split("-")[1]
                                .replace(" ", "")));

                            $("#ibd_in_con").html(start);

                            $("#ibd_out_con").html(end);

                            var num = $.dateDPbyDay(new Date($(
                                "#date").val().split("-")[1]),
                                new Date($("#date").val()
                                    .split("-")[0]));

                            $("#ibd_total_con").html("" + num + "");

                            day_intime = $.dateFormat(new Date($(
                                "#date").val().split("-")[0]
                                    .replace(" ", "")))
                                + " " + dayintime + ":00:00";

                            day_intime = $.dateFormats($
                                .dateFor(day_intime));

                            day_outtime = $.dateFormat(new Date($(
                                "#date").val().split("-")[1]
                                    .replace(" ", "")))
                                + " " + dayouttime + ":00:00";

                            day_outtime = $.dateFormats($
                                .dateFor(day_outtime));

                            /* if(bookType == 0){
                                roomtype_search() ;
                            } */
                        }

                    }

                    $("#date").val(
                        $.dateFormatX(new Date())
                        + "-"
                        + $.dateFormatX($.dateDP(
                        new Date(), 1)));
                    dateChange();

                    var date = mobiscroll.range('#date', {
                        theme : 'mobiscroll',
                        lang : 'zh',
                        display : 'bottom',
                        min : new Date(),
                        animate : false,
                        max : $.dateDP(new Date(), 90),
                        headerText : false,
                        counter : true,
                        defaultValue : [ new Date(),
                            $.dateDP(new Date(), 1) ],
                        onSet : function(event, inst) {
                            dateChange();
                        }
                    });
                    $("#ibook_day").click(function() {

                        date.show();
                    });

                    /*  //定义控件的全局变量
                    var mobiscrllObj = null;

                    $(function(){
                        function init() {
                            mobiscrllObj = $('#ibook_day').mobiscroll().range({
                            theme: 'mobiscroll',
                               lang: 'zh',
                               display: 'bottom' ,
                               min : new Date() ,
                               animate : false ,
                               max : $.dateDP(new Date() , 90) ,
                               headerText:false ,
                               counter:true ,
                               defaultValue: [ new Date(), $.dateDP(new Date() , 1) ] ,
                               onSet:function(event, inst){
                                   dateChange() ;
                               }
                            });
                            console.dir(mobiscrllObj);
                        }
                        init();
                    });
                       /**
                     * 钟点房操作
                     * */

                    /*  function roomtype_search(){
                         var intime = "" ; var outtime = "" ;
                         if(bookType == 0){
                             intime = day_intime ;
                             outtime = day_outtime ;
                         }else{
                             intime = hour_intime ;
                             outtime = hour_outtime ;
                         }

                         $("#iroomtypes_cont").html("") ;

                         $("#iroomtypes_loading").show() ;

                         var htmls = "" ;


                        //ajax查询后台返回显示结果
                         $.ajax_do_async("/weihotel/hotel/showDetails?intime="+intime+"&outtime="+outtime , function(data){

                             for(var i = 0 ; i < data.result.length ; i ++){
                                 var rt = data.result[i] ;

                                 var sheshis = "" ;

                                 for(var j = 0 ;j < rt.sheshiList.length;j++){
                                     sheshis += "<i class='iconfont "+rt.sheshiList[j].icon+"'></i> " ;
                                 }

                                 var images = "<div class='carousel"+rt.id+"'>" ;

                                 for(var j = 0 ; j < rt.images.length ; j ++){
                                     var img = rt.images[j] ;
                                     images += "<div class='carousel-cell'><img src='"+img+"' style='width:"+(window.client_width)+"px;height:"+(window.client_width * (2/3))+"px'></div>" ;
                                 }

                                 images += "</div>" ;

                                 var memberprice = (rt.truePrice == (bookType == 0 ? rt.price : rt.hourPrice) ? "":"<div class='roomTypeNodeMemberPrice box'><div class=box1>享受折扣价</div><div class=rtnmp1>"+rt.truePrice.toFixed(2)+"元</div></div>") + "" ;


                                 var canlendarprice = "" ;

                                 if(rt.pcs.length > 0){
                                     canlendarprice += "<div class='roomTypeNodeCalendarPrice'>" ;
                                     for(var z = 0 ; z < rt.pcs.length ; z ++){
                                         var pc = rt.pcs[z] ;
                                         canlendarprice += pc.days.split("-")[1]+"月"+pc.days.split("-")[2]+"日<span>"+pc.truePrice.toFixed(2)+"元</span>一晚，" ;
                                     }

                                     canlendarprice+="其他时间<span>"+rt.truePrice.toFixed(2)+"元</span>一晚<div class='rtncp_to'></div></div>" ;
                                 }else{
                                     canlendarprice += "<div class='roomTypeNodeCalendarPrice'>微信优惠价<span>"+rt.truePrice.toFixed(2)+"元</span>一晚<div class='rtncp_to'></div></div>" ;
                                 }



                                 htmls += window.roomtypehtml.replace("{coverImg}" , rt.coverImg).replace("{name}" , rt.name).replace("{name}" , rt.name).replace("{name}" , rt.name).replace("{id}" , rt.id).replace("{id}" , rt.id).replace("{id}" , rt.id)
                                         .replace("{area}" , rt.area).replace("{area}" , rt.area)
                                         .replace("{bedType}" , !rt.bedType || rt.bedType == "" ? "":rt.bedType+" <span class=colorCCC>|</span> ").replace("{bedType}" ,  !rt.bedType || rt.bedType == "" ? "":rt.bedType+" <span class=colorCCC>|</span> ")
                                         .replace("{personNum}" , rt.personNum).replace("{personNum}" , rt.personNum).replace("{memberprice}" , memberprice).replace("{calendarprice}" , canlendarprice)
                                         .replace("{price}" , (bookType == 0 ? rt.price : rt.hourPrice)+"元").replace("{price}" , (bookType == 0 ? rt.price : rt.hourPrice)+"元")
                                         .replace("{sheshis}" ,sheshis).replace("{sheshis}" ,sheshis).replace("{images}" ,images);

                             }

                             $("#iroomtypes_cont").html(htmls == ""?"<div class=noresults>全部满房</div>":htmls) ;

                             $("img.lazy1").lazyload({effect: "fadeIn"});

                             $(".roomTypeDetail").each(function(z,v){
                                 v = $(v) ;
                                 v.sheep(v.parent().find(".roomTypeNodeImg") , function(){
                                     $.pageview("订房" , "客房浏览 - "+v.parent().find(".roomTypeNodeInfoName").html() , v.attr("data-id")) ;

                                     var flky = new Flickity( '.carousel'+v.attr("data-id"), {
                                         autoPlay: 5000,
                                         prevNextButtons: false ,
                                         imagesLoaded: true ,
                                         contain: true ,
                                         lazyLoad: true
                                     });
                                 }) ;
                             }) ;

                             $(".roomTypeNodeMemberPrice").hide() ;

                             $(".roomTypeNodeInfo , .roomTypeNodePrice , .roomTypeNodeRight,.rtninfo").unbind("click").click(function(){

                                 var tt = $(this).parent().parent() ;
                                 $(".irooms_wrap").html("") ;
                                 $(".roomTypeNodeMemberPrice").hide() ;
                                 $(".roomTypeNodeCalendarPrice").hide() ;
                                 $(".irooms_loading").hide() ;
                                 if(tt.find(".roomTypeNodeRight").attr("data-open") == 0){
                                     $(".roomTypeNodeRight").attr("data-open" , 0) ;
                                     tt.find(".roomTypeNodeRight").attr("data-open" , 1) ;
                                     tt.find(".irooms_loading").show() ;
                                     tt.find(".roomTypeNodeMemberPrice").show() ;
                                     tt.find(".roomTypeNodeCalendarPrice").show() ;
                                     roomtype = tt.attr("data-id") ;


                                     $("html,body").animate({scrollTop:tt.offset().top},300);

                                     room_search(tt) ;

                                 }else{

                                     tt.find(".roomTypeNodeRight").attr("data-open" , 0) ;

                                 }


                             }) ;

                             $("#iroomtypes_loading").hide() ;

                         })
                     } */

                    /*   var roomtemp = "<div class='iroom_node' style='width:"+((window.client_width - 30)/5)+"px' data-href='{href}'><div class='irn_1'>{name}</div><div class='irn_2'>{window}</div></div>" ;
                     */
                    /*       function room_search(target) {
                              var htmls = "";
                              var intime = "" ; var outtime = "" ;
                              if(bookType == 0){
                                  intime = day_intime ;
                                  outtime = day_outtime ;
                              }else{
                                  intime = hour_intime ;
                                  outtime = hour_outtime ;
                              }
                            //ajax查询房型房间数目
                              $.ajax_do_async("/book/get_room_list?intime=" + intime + "&outtime=" + outtime + "&bookType=" + bookType + "&roomType=" + roomtype, function (data) {
                                  var firstRoom = "" ;
                                  for (var i = 0; i < data.result.length; i++) {
                                      var room = data.result[i];
                                      htmls += roomtemp.replace("{name}", room.name).replace("{window}", room.window).replace("{href}" , "/user/order/prepare?intime="+intime+"&outtime="+outtime+"&bookType="+bookType+"&room="+room.id);
                                      if(i == 0){
                                          firstRoom = "<a href='/user/order/prepare?intime="+intime+"&outtime="+outtime+"&bookType="+bookType+"&room="+room.id+"'><div ><span >预 订</span><div></a>" ;
                                      }
                                  }

                                  if(df_xuanfang == "开启" || df_xuanfang == "")
                                      target.find(".irooms_wrap").html("<div class=iroomstip>请选房间</div>"+htmls+"<div class=clear></div>");
                                  else
                                      target.find(".rtncp_to").html(firstRoom);


                                  $(".iroom_node").unbind("click").click(function(){
                                      location.href = $(this).attr("data-href") ;
                                  }) ;

                                  target.find(".irooms_loading").hide();
                              })
                          }
                     */
                    /*  //代金券活动
                     function load_ticket_tasks(){
                         $.ajax_do_async("/book/ticket_task" , function(data){
                             if(data.tasks.length > 0){
                                 var htmls = "<div class=carousel>" ;

                                 for(var i = 0 ; i < data.tasks.length ; i++){
                                     htmls += "<div class=carousel-cell>" +
                                             "<a ><div class='ticketnode box clickLink 'data-href='/fuli/"+data.tasks[i].branch+"' >" +
                                             "<div class=ticketnode_icon><div>减</div></div>"+
                                             "<div class='ticketnode_info box1'><div class=ticketni_name>"+data.tasks[i].name+"</div><div class=ticketni_am>"+(data.tasks[i].amountType == 0 ? data.tasks[i].amount+"元代金券":data.tasks[i].amountX+"元 ~ "+data.tasks[i].amountY+"元代金券")+"</div></div>"+
                                             "<div class=ticketnode_togo><div>领券</div></div><div class=clear></div>"+
                                             "</div><div class=clear></div>" +
                                             "</div></a>" ;
                                 }
                                 htmls += "</div>" ;

                                 $("#ticket").html(htmls).show(); ;

                                 $(".ticketnode").width(window.client_width - 60) ;

                                 $(".clickLink").unbind("click").click(function(){
                                     location.href = $(this).attr("data-href") ;
                                 }) ;


                                 var flky = new Flickity( '.carousel', {
                                     autoPlay: 3000,
                                     prevNextButtons: false ,
                                     imagesLoaded: true ,
                                     contain: true ,
                                     lazyLoad: true
                                 });

                             }
                         })
                     }

                     load_ticket_tasks() ; */
                });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $.pageview("订房", "首页", "");
        })
    </script>
</div>
</body>
</html>
