<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
    <!-- <meta name="viewport"
        content="initial-scale=0.5,maximum-scale=0.5,minimum-scale=0.5,user-scalable=no,width=device-width">
     -->
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-touch-fullscreen" content="yes">

    <title>博君家庭酒店</title>

    <meta http-equiv="Cache-Control" content="no-cache">

    <script src="/weihotel/front/plugin/jquery.min.js"></script>
    <script src="/weihotel/front/plugin/jquery.lazyload.js"></script>

    <link rel="stylesheet" href="/weihotel/front/css/hue.css" media="all">
    <link rel="stylesheet" href="/weihotel/front/css/room.css">
    <link rel="stylesheet" href="/weihotel/front/css/Hotel.css">
</head>

<body>
<div class="main">
    <div>
        <ul class="header-wrapper">
            <li class="header-bar" style="transition-property: transform; transition-timing-function: cubic-bezier(0, 0, 0.25, 1); transition-duration: 400ms; transform: translate3d(-2250px, 0px, 0px);">
                <img src="https://p1.meituan.net/hotelnoah/062b48f4-f5dd-4f85-9a13-767622eb11db.gif.webp">
            </li>
        </ul>
        <div class="tab-wrapper">
            <div class="tab-header">
                <div class="tab-header--left">
                    <div class="">xxx--选房平台</div>
                    <!-- <div class="tab-header--left-content">xxx--选房平台</div> -->
                    <div class="is-active is-active-left is-active-left-transition"
                         style="display: none"></div>
                </div>
            </div>
            <form method="post" action="#">
                <div class="tab-city hue-base-arrow-right tab-row">
                    <span class="tab-row--header">目的地</span>
                    <span class="des">西安 </span>
                    <input type="hidden" id="des" name="des" value="" />
                </div>


                <script>
                    jQuery(document).ready(function() {
                        var left = jQuery("#liveIn").eq(0).text();

                        if (left.indexOf("今天") >= 0) {
                            //alert("as");
                            var date = new Date();
                            var today = (date.getFullYear()) + "-" + (date.getMonth() + 1) +  "-" + (date.getDate());
                            var tomorrow = (date.getFullYear()) + "-" + (date.getMonth() + 1) +  "-" + (date.getDate() + 1);
                            jQuery("#liveIn").text(today);

                            jQuery("#liveOut").text(tomorrow);


                        }
                        jQuery("#indate").text(jQuery("#liveIn").text());
                        jQuery("#outdate").text(jQuery("#liveOut").text());

                    });
                </script>

                <div class="tab-search tab-row hue-base-arrow-right">
                    <span class="tab-row--header">搜索</span>
                    <input type="text" id="key" name="key" value="" placeholder="关键词/酒店名/地点" />
                </div>
                <div class="tab-btn">
                    <button type="submit" class="hue-base-button-block-btn-green">查找酒店</button>
                </div>
            </form>
        </div>

        <div class="v-old-footer">
            <div class="v-old-footer--btn-wrapper">
                <a class="v-old-footer--btn-signin hue-base-button-block-btn-border-green"
                   href="/family-hotel/jsp/userinfo/WeixinLogin.jsp">登录</a>
                <a class="v-old-footer--btn-signup hue-base-button-block-btn-border-green"
                   href="/family-hotel/jsp/userinfo/WeixinLogin.jsp">注册</a>
                <button class="v-old-footer--btn-signup hue-base-button-block-btn-border-green"
                        id="myOrder">我的订单</button>
            </div>
            <ul class="v-old-footer--links">

                <li class="v-old-footer--links-item">
                    <button>我的订单</button>
                </li>
                <li class="v-old-footer--links-item">
                    <a href="//i.meituan.com/help/">帮助</a>
                </li>
            </ul>
            <div class="v-old-footer--icp">
					<span class="v-old-footer--icp-text">©2017 博君家庭酒店
						<a href="//www.miibeian.gov.cn自己添加许可证连接/"
                           target="_blank" rel="nofollow">京ICP证070791号</a>
					</span>
            </div>
        </div>
    </div>
</div>




</body>
<script type="text/javascript">
    $('#key').click(function(){
        var des = $('.des').text();
        var liveIn = $('#liveIn').text();
        var liveOut = $('#liveOut').text();
        $('#des').val(des);
        $('#livein').val(liveIn);
        $('#liveout').val(liveOut);
        console.log(des);
        console.log(liveIn);
        console.log(liveOut);
        console.log($('#livein').val());

    });

    $("#myOrder").click(function(){
        console.log("登陆控制");
        $.ajax({
            type:"POST",
            url:"/family-hotel/authentication/isLogin.do",
            datatype: "json",
            success:function(data){
                if (data == "1") {
                    console.log("已经登陆")
                    //隐去登陆注册
                    window.location.href = "/family-hotel/order/orderHistory.do";

                }else{
                    alert("请先登陆!!!!");

                }
            }

        });
    });
</script>
</html>

