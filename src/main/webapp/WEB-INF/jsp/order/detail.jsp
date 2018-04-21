<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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







    <style type="text/css">
        #order_status{padding:10px 20px 10px 0;text-align:center;}

        .order_status_node{text-align:center;font-size:0.8em;opacity: 0.5}
        .osn_tag{HEIGHT:32PX;COLOR:#fff;position:relative;}
        .osn_tag i{position:absolute;top:14px;LEFT:-6PX}
        .osn_con{color:#fff;text-align:left;padding-left:15px;line-height:32px;position:relative;}
        .osn_con span{opacity: 0.7}
        .osn_on .osn_tag{
            color: #ffffff;}
        .osn_on{opacity: 0.9;font-size:1.1em}
        .osn_on .osn_con{color:#fff;}
        .osn_time{position:absolute;right:0;font-family:Arial}
        #order_op{padding:15px}

        .orderNodeInfo{padding:10px;line-height:30px;BACKGROUND:#FFF;color:#666;FONT-family:arial;margin-top:10px;border-bottom:1px solid #EEE}

        .onp_node{line-height:25px;font-size:0.9em;text-align:right;padding:0 10px;color:#555}
        .intime{text-align:center;}
        .intime_tag{font-size:1.2em;color:#888}
        .intime_cont{color:#BBB}
        .totalnum{BORDER-BOTTOM:1px solid #BBB;text-align:center;font-size:1.1em}

        .orderNodePrice{padding:10px;background:#FFF;margin-top:1px;}.orderNodePrice .colorZi{font-size:1.5em}
        .onp_node{text-align:left;font-family:Arial}

        #order_if{text-align:center;font-size:1.8em;padding:30px;LINE-height:25px;padding-top:50px}
        #order_if .colorZi{font-size:1.8em;}
        #order_if .color999{font-size:0.5em;}
        #order_if .colorCCC{font-size:0.5em}

        .tip{padding:0 15px;font-size:0.9em;background:#F2F2F2;margin:0 15px;line-height:25px}

        .tip-warning{color:#F7C748}.tip-danger{color:#ff7800!important;}

        .tip-error{color:red}

        .status{color:red;text-align:center;font-size:1.2em}
        .status1{color:#bbb;text-align:center;font-size:1.2em}
        #order_number{line-height:35px;padding:0 15px;background:#FFF;COLOR:#777}

        .oitag{font-size:1.1em;color:#555;background:#FFF;text-align:center;line-height:45px;;margin-top:15px;border-bottom:1px solid #EEE;}
        .idcard_node{line-height:40px;background:#FFF;padding:0 15px;font-size:0.9em;font-family:Arial}

        .tip{margin-top:15px;color:#777}

        #orderdtTop{background:-webkit-gradient(linear, 0 0, 0 bottom, from(#F9FBFB), to(#ECEFF2));padding:30px 15px   }
        .odttag{font-size:0.9em;color:#888}
        .odtcon{font-size:1.1em;color:#333;font-family: Arial}
        .orderdtTopNode.ibox4{text-align: right}

        #orderdtRz{background:#FFF;padding:0px 0 0px 15px;}
        .odr_floor_tag{width:30px;color:#bbb}
        .odr_floor_con{font-size:0.9em;color:#555;font-family:Arial;PADDING-RIGHT:15PX;}
        .odr_floor{border-bottom:1px dotted #ddd;LINE-height:41px;}
        .noborder{border:none}

        #orderdtFc{background:#FFF;padding:0px 0 0px 15px;}

        .odf_floor{line-height:30px;color:#333}
        .odff_name{text-align:left;font-size:0.9em;}
        .odff_num{text-align:center;font-size:0.9em;font-family:Arial;width:70px;}
        .odff_am{text-align:right;font-size:0.9em;font-family:Arial;width:90px;PADDING-RIGHT:15PX;}
        .odffth{line-height:45px;color:#888;border-bottom:1px solid #EEE}


        #orderdtPs{background:#FFF;padding:0px 0 0px 15px;}

        .odp_floor{line-height:30px;color:#333}
        .odpf_name{text-align:left;font-size:0.9em;width:60px;}
        .odpf_number{text-align:center;font-size:0.9em;font-family:Arial;}
        .odpf_sm{text-align:center;font-size:0.9em;width:70px;}
        .odpf_op{text-align:right;font-size:0.9em;font-family:Arial;width:40px;PADDING-RIGHT:15PX;}
        .odpfth{line-height:45px;color:#888;border-bottom:1px solid #EEE}
        .tttags{font-size:1.0em;padding-right:15px;font-weight:bold;line-height:35px;text-align:right}

        #orderdtOp{position: fixed;bottom:0;left:0;height:26px;padding:10px 0;text-align:right;background:#eee;opacity: 0.9;width:100%;}
        #orderdtOp>div{padding-right:10px;}
        .onbt{PADDING:3px 10px;border-radius:2px;font-size:0.9em;}
        .cancel_dd{border-color:#999!important;color:#999!important;}
        .tfzt{background:#ccc!important;border-color:#CCC!important;color:#555!important;}
    </style>
    <script type="text/javascript">
        window.addEventListener('load', function() {
            FastClick.attach(document.body);
        }, false);
    </script>

    <link rel="stylesheet" href="/weihotel/front/css/global.css?22123s34">

    <link rel="stylesheet" href="/weihotel/front/css/green.css?22sd1sdf123123s34">

    <link rel="stylesheet" href="/weihotel/front/css/font_217128_bxnan6by5zziwwmi.css">

    <title>博君家庭酒店</title>
</head>

<body header="" footer="">
<header class="fixed" border="">
    <div class="header_l"><i class="iconfont icon-fanhui11211"></i></div>
    <div class="header_c">订单详情</div>
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
<div id="orderdtTop1">

</div>
<div id="orderdtTop">

    <div class="ibox ibox6 orderdtTopNode">
        <div class="odttag">订单号</div>
        <div class="odtcon slh" style="width: 400px;">${detail.syscode}</div>
    </div>

    <div class="ibox ibox6 orderdtTopNode">
        <div class="odttag">状态</div>
        <c:choose>
            <c:when test="${detail.status == '100'}">
                <span class="colorRed">等待付款</span>
            </c:when>
            <c:when test="${detail.status == '0'}">
                <span class="color999">订单取消</span>
            </c:when>
            <c:when test="${detail.status == '106'}">
                <span class="color999">已使用</span>
            </c:when>
            <c:otherwise>
                <span class="color999">待使用</span>
            </c:otherwise>
        </c:choose>

    </div>
    <div class="clear"></div>
</div>

<!--入住信息-->
<div id="orderdtRz">
    <div class="odr_floor box">
        <div class="odr_floor_tag"><i class="iconfont icon-fangxing12"></i></div>
        <div class="odr_floor_con slh">
            ${detail.roomName} <span class="color999"></span>
        </div>
        <div class="clear"></div>
    </div>

    <div class="odr_floor box">
        <div class="odr_floor_tag"><i class="iconfont icon-weizhi1121"></i></div>
        <div class="odr_floor_con slh">
                <span class="mapopen" style="font-size:0.9em" data-lat="34.12115" data-lng=" 108.84442" data-name="roomName}"><span> ${detail.location}</span>
			</span></div>
        <div class="clear"></div>
    </div>

    <div class="odr_floor box ">
        <div class="odr_floor_tag"><i class="iconfont icon-riqi121"></i></div>
        <div class="odr_floor_con slh">
           ${detail.checkInDate}  至 ${detail.checkOutDate}　共<span>${detail.nightNum}</span>晚
        </div>
        <div class="clear"></div>
    </div>

    <div class="odr_floor box noborder">
        <div class="odr_floor_tag"><i class="iconfont icon-dianhua42"></i></div>
        <div class="odr_floor_con slh">
            ${detail.phoneNum}<span class="colorCCC"> [预留电话，请保持电话畅通]</span>

        </div>
        <div class="clear"></div>
    </div>


</div>

<div class="tttags colorOwn">费用</div>
<!--财务-->
<div id="orderdtFc">

    <div class="odf_floor odffth box">
        <div class="odff_name box1">名目</div>
        <div class="odff_num">数量</div>
        <div class="odff_am">总额</div>
        <div class="clear"></div>
    </div>

    <div class="odf_floor box">
        <div class="odff_name box1">房费</div>
        <div class="odff_num">${detail.nightNum}晚</div>
        <div class="odff_am">￥${detail.total}</div>
        <div class="clear"></div>
    </div>

    <div class="odf_floor box">
        <div class="odff_name box1">押金</div>
        <div class="odff_num">--</div>
        <div class="odff_am">￥0</div>
        <div class="clear"></div>
    </div>

    <div class="odf_floor box">
        <div class="odff_name box1 colorOwn">合计</div>
        <div class="odff_num"> </div>
        <div class="odff_am colorOwn">￥${detail.total}</div>
        <div class="clear"></div>
    </div>


</div>

<!--入住人-->
<div class="tttags colorOwn">入住人</div>
<div id="orderdtPs">
<%--
    <div class="odp_floor odpfth box">
        <div class="odpf_name ">姓名</div>
        <div class="odpf_number box1 slh">证件号</div>
        <div class="odpf_sm">实名</div>
        <div class="odpf_op">　</div>
        <div class="clear"></div>
    </div>

    <div class="odp_floor box">
        <div class="odpf_name ">${detail.lodger}</div>
        <div class="odpf_number box1 slh">430703199309292039</div>
        <div class="odpf_sm">未实名</div>
        <div class="odpf_op"><span class="colorBlue clickLink" data-href="/user/idcard_edit?id=8561318">编辑</span></div>
        <div class="clear"></div>
    </div>--%>

    <div class="odf_floor box">
        <div class="odff_name box1">入住人</div>
        <div class="odff_num">${detail.lodger}</div>

        <div class="clear"></div>
    </div>

</div>

<!--订单状态-->
<div class="tttags colorOwn">进度</div>
<div id="order_status" class="bgOwn">
 <%--   <div class="order_status_node osn_on box">
        <div class="osn_tag"><i class="ion-ios-circle-filled"></i></div>
        <div class="osn_con box1">
            订单取消


            <span class="colorC">(支付超时)</span>
            <span class="osn_time">09-25 11:30</span>
        </div>
        <div class="clear"></div>
    </div>--%>
    <div class="order_status_node osn_on box">
        <div class="osn_tag"><i class="ion-ios-circle-filled"></i></div>
        <div class="osn_con box1">
            订单创建
            <span class="osn_time">${detail.orderDate}</span>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>

<!--订单操作-->




<script type="text/javascript">
    $(document).ready(function(){
        var status = "订单取消"
        var pays = "" ;
        var booking = "0" ;
        wx.ready(function(){

            function pay(){
                $.confirm("确定为该订单付款199.98元吗？" ,function(){
                    $.loading("正在支付") ;
                    $.wx_pay("/user/wxpay/applyForOrder?order=1327121" , function(data){
                        $.loading("正在获取支付结果") ;
                        setTimeout(function(){
                            location.reload() ;
                        } , 3000) ;
                    }) ;
                }) ;

            }
            if(status == "订单创建" && pays == "pay" && booking == 0){
                pay() ;
            }

            $("#toPay").click(function(){
                if(booking == 0)
                    pay() ;
            }) ;


            $(document).on("click" ,".mapopen" ,function () {
                var ts = $(this) ;

                if(ts.attr("data-lat")  == "" || ts.attr("data-lat")  == " "){
                    $.tip("地图数据异常！")
                }else{
                    wx.openLocation({
                        latitude: ts.attr("data-lat") - 1 + 1, // 纬度，浮点数，范围为90 ~ -90
                        longitude: ts.attr("data-lng") - 1 + 1, // 经度，浮点数，范围为180 ~ -180。
                        name: ''+ts.attr("data-name"), // 位置名
                        address: ''+ts.find("span").html(), // 地址详情说明
                        scale: 15, // 地图缩放级别,整形值,范围从1~28。默认为最大
                        infoUrl: '' // 在查看位置界面底部显示的超链接,可点击跳转
                    });
                }
            }) ;
        })

        $(".cancel_dd").click(function(){
            $.ajax_op_auto("/user/order/cancel?id="+$(this).attr("data-id") , "确定取消订单吗?") ;
        }) ;

        $.pageview("订房订单" , "订单详情 - HTO011327121", "1327121") ;
    }) ;
</script>
</body>
</html>
