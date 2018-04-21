$(document).ready(function(){

    var url = location.href;
    $.ajax({
        url : "/weihotel/common/getAccessToken",
        type : "get",
        data : {
            url : url
        },
        success : function(data) {
            console.log("jsapi_ticket: " + data.jsapi_ticket);
            wx.config({
                debug: false,
                appId: data.appId,
                timestamp: data.timestamp,
                nonceStr: data.noncestr,
                signature: data._wxSignature,
                jsApiList: [
                    'checkJsApi',
                    'onMenuShareTimeline',
                    'onMenuShareAppMessage',
                    'onMenuShareQQ',
                    'onMenuShareWeibo',
                    'hideMenuItems',
                    'showMenuItems',
                    'hideAllNonBaseMenuItem',
                    'showAllNonBaseMenuItem',
                    'translateVoice',
                    'startRecord',
                    'stopRecord',
                    'onRecordEnd',
                    'playVoice',
                    'pauseVoice',
                    'stopVoice',
                    'uploadVoice',
                    'downloadVoice',
                    'chooseImage',
                    'previewImage',
                    'uploadImage',
                    'downloadImage',
                    'getNetworkType',
                    'openLocation',
                    'getLocation',
                    'hideOptionMenu',
                    'showOptionMenu',
                    'closeWindow',
                    'scanQRCode',
                    'chooseWXPay',
                    'openProductSpecificView',
                    'addCard',
                    'chooseCard',
                    'openCard'
                ]
            });
        }
    });



    /*var getLocation ;

    wx.ready(function(){
        console.log("weixin js_sdk is ready for using!");

        getLocation = function(func){
         wx.getLocation({
         type: 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
         success: function (res) {
         func(res) ;
         var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
         var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
         var speed = res.speed; // 速度，以米/每秒计
         var accuracy = res.accuracy; // 位置精度
         } ,

         });

         }

         $.wx_getLocation = function(func){
         getLocation(func) ;
         }

       $.wx_pay = function(url , success){
            $.ajax_do(url , function(data){
                if(data.status == "success"){
                    if(window.wx_plg && window.wx_plg == 1){
                        $.loading("支付中" , 3000) ;
                    }else{
                        $.loadingClose(1000) ;
                    }
                    wx.chooseWXPay({
                        timestamp: data.result.timeStamp, // 支付签名时间戳，注意微信jssdk中的所有使用timestamp字段均为小写。但最新版的支付后台生成签名使用的timeStamp字段名需大写其中的S字符
                        nonceStr: data.result.nonceStr, // 支付签名随机串，不长于 32 位
                        package: data.result.package, // 统一支付接口返回的prepay_id参数值，提交格式如：prepay_id=***）
                        signType: data.result.signType, // 签名方式，默认为'SHA1'，使用新版支付需传入'MD5'
                        paySign: data.result.paySign, // 支付签名
                        success: function (res) {
                            success(res) ;
                        }
                    });
                }else{
                    $.tip(data.info) ;
                }
            }) ;

        };
    }) ;*/


	
}) ;