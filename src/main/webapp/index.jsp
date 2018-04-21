<%@ page language="java" pageEncoding="UTF-8"%>
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
    <title></title>
    <script type="text/javascript"
            src="/weihotel/front/plugin/jquery.min.js"></script>

    <script type="text/javascript"
            src="/weihotel/front/plugin/jquery.lazyload.js"></script>

</head>
<body >
<a id="test" href="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc36503facbd16dec&redirect_uri=http://www.bojunjia.com/weihotel
&response_type=code&scope=snsapi_base&state=123#wechat_redirect">点击这里体验</a>
<img src="/pictureService/original_images/2017/10/19/7214153C649F11F21EC1297AF532B78C_u=40083126,4215123473&fm=23&gp=0.jpg" />
</body>
<script>
    /*$(document).ready(function() {
        // 判断session中是否存在openID
        if ("") {

        }
        console.log("start!!!");
        document.getElementById("test").click();
    });*/
</script>
</html>

