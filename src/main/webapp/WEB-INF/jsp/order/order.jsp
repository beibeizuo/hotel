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
		body{padding-top:85px!important}
		#search_items{position:fixed;top:45px;left:0;z-index:2;height:45px;width:100%;background:#FFF;box-shadow:0 0 3px #ccc;}
		.search_item{border-bottom:2px solid #FFF;line-height:43px;text-align:center;font-size:0.9em;color:#666}

		.orderNode{background:#FFF;font-size:0.9em;margin-top:15px;box-shadow:0 0 3px #eee;FONT-family:arial;border-bottom:1px solid #81C2D6}
		.orderNodeTag{line-height:30px;border-bottom:1px solid #F7F7F7;padding:0 10px;position:relative}
		.orderNodeStatus{position:absolute;right:10px;}
		.orderNodeInfo{padding:10px;line-height:30px;BACKGROUND:#FAFAFA;color:#666;height:50px;FONT-family:arial}
		.oimg{width:90px;height:60px;}
		.onum{text-align:center;line-height:20px;margin-top:5px;color:#BBB}
		.onum span{font-size:2em;font-family:Arial;}
		.otime{line-height:25px;font-family:Arial;width:130px;padding-bottom:5px;}.ointime{font-family:Arial}


		.onp_node{line-height:25px;font-size:0.9em;text-align:right;padding:0 10px;color:#555}
		.intime{text-align:center;}
		.intime_tag{font-size:1.2em;color:#888}
		.intime_cont{color:#BBB}
		.totalnum{BORDER-BOTTOM:1px solid #BBB;text-align:center;font-size:1.1em}
		.orderNodeOp{border-top:3px solid #F6F6F6;padding:8px 10px;text-align:right}
		.onbt{PADDING:3px 10px;border-radius:2px;font-size:0.9em;}

		.torderNode{margin:15px 10PX;background:#FFF;border-radius:10px;box-shadow:0 0 9px #DDD;padding:0 10px}
		.torderNodeHotelName{font-size:1.1em;font-weight:bold;color:#333;line-height:45px;}
		.torderNodeFloorB{line-height:25px;position:relative;padding-left:26px;font-size:0.9em;color:#888}.torderNodeFloorB>i{position: absolute;left:0;top:0;color:#8192D6}
		.torderNodeFloor{line-height:25px;position:relative;padding-left:26px;font-size:0.9em;color:#888;font-family: Arial}.torderNodeFloor>i{position: absolute;left:0;top:0;color:#8192D6}
		.torderNodeStatus{border-top:1px dotted #EEE;margin-top:8px;padding-top:8px;color:#BBB;FONT-Size:0.9em;position: relative}
		.tonPrice{color:#F95F4A;position: absolute;right:0;top:-4px}
		.tonPrice>span{font-size:2.0em;font-family: Arial}
		.torderNodeOp{padding:8px 0px;text-align:right;font-size:0.9em}
		.torderNodedis{background:#f7f7f7}.torderNodedis *{color:#bbb!important;}
		.torderNodewp{box-shadow:0 0 9px #F95F4A}
		.torderNoderz{box-shadow:0 0 9px #04C66D}
	</style>
	<script type="text/javascript">
        window.addEventListener('load', function() {
            FastClick.attach(document.body);
        }, false);
	</script>

	<link rel="stylesheet" href="/weihotel/front/css/global.css?22123s34">

	<link rel="stylesheet" href="/weihotel/front/css/green.css?22sd1sdf123123s34">

	<link rel="stylesheet" href="//at.alicdn.com/t/font_217128_bxnan6by5zziwwmi.css">

	<title>博君家庭酒店</title>
</head>

<body header="" footer="">
<header class="fixed" border="">
	<div class="header_l"><i class="iconfont icon-fanhui11211"></i></div>
	<div class="header_c">预订订单</div>
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
<div id="search_items">
	<a href="/weihotel/order/orderHistory?status=all"><div class="search_item ibox ibox2 si_dft">全部</div></a>
	<a href="/weihotel/order/orderHistory?status=needpay"><div class="search_item ibox ibox2 ">未付款</div></a>
	<a href="/weihotel/order/orderHistory?status=use"><div class="search_item ibox ibox2 ">待使用</div></a>
	<a href="/weihotel/order/orderHistory?status=used"><div class="search_item ibox ibox2 ">已使用</div></a>
	<a href="/weihotel/order/orderHistory?status=cancel"><div class="search_item ibox ibox2 ">已取消</div></a>
	<div class="clear"></div>
</div>


<div id="search_result">


	<c:if test="${status == 'all'}">
		<script type="text/javascript">
            $(".search_item").removeClass("si_dft");
            $(".search_item").eq(0).addClass("si_dft");
		</script>
	</c:if>
	<c:if test="${status == 'needpay'}">
		<script type="text/javascript">
            $(".search_item").removeClass("si_dft");
            $(".search_item").eq(1).addClass("si_dft");
		</script>
	</c:if>
	<c:if test="${status == 'use'}">
		<script type="text/javascript">
            $(".search_item").removeClass("si_dft");
            $(".search_item").eq(2).addClass("si_dft");
		</script>
	</c:if>
	<c:if test="${status == 'used'}">
		<script type="text/javascript">
            $(".search_item").removeClass("si_dft");
            $(".search_item").eq(3).addClass("si_dft");
		</script>
	</c:if>
	<c:if test="${status == 'cancel'}">
		<script type="text/javascript">
            $(".search_item").removeClass("si_dft");
            $(".search_item").eq(4).addClass("si_dft");
		</script>
	</c:if>


	<c:forEach items="${requestScope.historyOrder }" var="u">
		<c:choose>
			<c:when test="${u.status == '100'}">
				<div class="torderNode torderNodewp">
			</c:when>
			<c:when test="${u.status == '0'}">
				<div class="torderNode">
			</c:when>
			<c:when test="${u.status == '106'}">
				<div class="torderNode">
			</c:when>
			<c:otherwise>
				<div class="torderNode torderNodewp">
			</c:otherwise>
		</c:choose>


			<div class="torderNodeHotelName clickLink" data-href="/weihotel/order/detailShow?id=${u.syscode}">${u.hotelName}</div>
			<div class="torderNodeFloorB clickLink" data-href="/weihotel/order/detailShow?id=${u.syscode}"><i class="iconfont icon-fangxing12"></i>${u.roomName} <span class="color999"></span></div>
			<div class="torderNodeFloor"><i class="iconfont icon-weizhi1121"></i>
				<span class="mapopen" style="font-size:0.9em" data-lat="34.12115" data-lng=" 108.84442" data-name="普通房"><span>${u.location}</span></span>
			</div>
			<div class="torderNodeFloor clickLink slh" data-href="/weihotel/order/detailShow?id=${u.syscode}"><i class="iconfont icon-riqi121"></i> ${u.checkInDate} 至 ${u.checkOutDate}　共<span>${u.nightNum}</span>晚</div>
			<div class="torderNodeStatus clickLink" data-href="/weihotel/order/detailShow?id=${u.syscode}">状态：

				<c:choose>

					<c:when test="${u.status == '100'}">
						<span class="colorRed">等待付款</span>
					</c:when>
					<c:when test="${u.status == '0'}">

						<span class="color999">订单取消</span>
					</c:when>
					<c:when test="${u.status == '106'}">
						<span class="color999">已使用</span>
					</c:when>
					<c:otherwise>
						<span class="color999">待使用</span>
					</c:otherwise>
				</c:choose>

				<span class="tonPrice">￥<span>${u.total}</span></span>
			</div>
			<c:if test="${u.status == 'admin'}">
				<div class="torderNodeOp">
					<span class="colorC">支付超时</span>
				</div>

			</c:if>
			<c:if test="${u.status == '100'}">
				<div class="torderNodeOp">
					<a href="/weihotel/common/payRequest?orderId=${u.syscode}" class="onbt">付款</a>

					<a data-id="${u.syscode}" class="onbt cancel_dd">取消订单</a>
				</div>

			</c:if>
		</div>
	</c:forEach>

</div>
<br>




<footer node="3">
	<div id="footer_book" class="footer_node ">
		<a href="/weihotel/common/test">
			<div class="fn_icon">
				<i class="iconfont icon-icon3"></i>
			</div>
			<div class="fn_tag">订房</div>
		</a>
	</div>


	<div id="footer_order" class="footer_node footer_node_dft">
		<a href="/weihotel/order/orderHistory?status=all">
			<div class="fn_icon">
				<i class="iconfont icon-dingdan1"></i>
			</div>
			<div class="fn_tag">订单</div>
		</a>
	</div>



	<!--<div id="footer_member" class="footer_node ">
		<a href="/user">
			<div class="fn_icon">
				<i class="iconfont icon-huiyuan"></i>
			</div>
			<div class="fn_tag">会员</div>
		</a>
	</div>-->
</footer>


<script type="text/javascript">
    $(document).ready(function(){
        $(".cancel_dd").click(function(){


			$.ajax({
				type : "POST",  //提交方式
				url :"/weihotel/order/orderCancel?orderId="+$(this).attr("data-id"),//路径

				success : function(result) {//返回数据根据结果进行相应的处理
					if ( result==1 ) {
						location.reload();
					} else {
						alert("服务器忙，请稍后再试！");
					}
				}
			});
		}) ;


        $.pageview("订房订单" , "日租房订单", "") ;

        wx.ready(function(){
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
        }) ;
    }) ;

</script>
</body>
</html>
