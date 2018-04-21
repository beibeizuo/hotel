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


    <title>支付</title>

    <script type="text/javascript"
            src="/weihotel/front/plugin/jquery.min.js"></script>

    <script type="text/javascript"
            src="/weihotel/front/plugin/jquery.lazyload.js"></script>

    <script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script type="text/javascript" src="/weihotel/front/js/wx_api.js?"></script>
    <script type="text/javascript" src="/weihotel/front/js/global.js?sdf"></script>
</head>
<body >


<div>

</div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        onPay();
    });
    function onPay() {
        wx.ready(function() { // config信息验证后会执行ready方法，所有接口调用都必须在config接口获得结果之后，config是一个客户端的异步操作，所以如果需要在页面加载时就调用相关接口，则须把相关接口放在ready函数中调用来确保正确执行。对于用户触发时才调用的接口，则可以直接调用，不需要放在ready函数中。
           // alert("js_sdk config success!!!!");
            wx.chooseWXPay({
                timestamp:"${params.timeStamp}",
                nonceStr:"${params.nonceStr}",
                package:"${params.prepayId}",
                signType:"${params.signType}",
                paySign:"${params.paySign}",
                success: function(res) {
                //    alert("success");
                    // 支付成功后的回调函数
                    if (res.errMsg == "chooseWXPay:ok") {
                        //支付成功

                        alert('支付成功');
                        var url = "/weihotel/order/orderSuccess?orderId=${syscode}";
                        window.location.href = url;
                    } else {
                        alert(res.errMsg);
                    }
                },
                cancel: function(res) {
                    //支付取消
                    var url = "/weihotel/order/orderHistory?status=all";
                    window.location.href = url;
                    alert('支付取消');
                },
                fail: function(res) {
                    alert(JSON.stringify(res));
                    alert('error!');
                }
            });
        });

    }

    /*function onBridgeReady(){
        WeixinJSBridge.invoke(
            'getBrandWCPayRequest', {

                "appId":"${params.appId}",
                "timeStamp":"${params.timeStamp}",
                "nonceStr":"${params.nonceStr}",
                "package":"${params.prepayId}",
                "signType":"${params.signType}",
                "paySign":"${params.paySign}"
            },
            function(res){
                if(res.err_msg == "get_brand_wcpay_request:ok" ) {
                    alert("返回：get_brand_wcpay_request:ok");
                } else if (res.err_msg == "get_brand_wcpay_request:cancel") {
                    alert("用户取消支付!");
                } else {
                    alert(res.err_msg);
                    alert("支付失败!");
                }
            }
        );
    }
    if (typeof WeixinJSBridge == "undefined"){
        if( document.addEventListener ){
            document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
        }else if (document.attachEvent){
            document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
            document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
        }
    }else{
        onBridgeReady();
    }
*/
</script>
</html>
