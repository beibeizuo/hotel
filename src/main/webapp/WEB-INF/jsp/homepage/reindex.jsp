<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta name="keywords" content="{$seo_keywords}"/>
    <meta name="description" content="{$seo_description}"/>
    <title>博君-首页</title>
    <link rel="stylesheet" href="/weihotel/images/wx.css">
    <script src="/weihotel/images/jquery.min.js"></script>
    <script src="/weihotel/images/flexible.js"></script>
</head>
<body>
<div class="body" style="max-width: 768px;margin: 0 auto">
    <header class="am-header">
        <div class="am-header-left am-header-nav">
            <a href="javascript:history.go(-1);">
                <img class="am-header-icon-custom" src="/weihotel/images/icon_fh.png" alt=""> </a></div>
        <h1 class="am-header-title gexx_top">
            博君
        </h1>
    </header>
    <!--banner-->
    <div class="banner">
        <a href="javascript:;"><img src="/weihotel/images/x_banner.png" alt=""></a>
    </div>
    <ul class="wx_list">
        <!--<form action=""> -->
        <li><span>城市</span> <select id="city">
            <c:forEach var="city" items="${cities}">
                <option>${city}</option>
            </c:forEach>
        </select></li>
        <li><span>酒店</span> <select id="hotel">
            <c:forEach var="hotel" items="${hotels}">
                <option>${hotel}</option>
            </c:forEach>
        </select><a href="javascript:;" class="map_btn">地图</a></li>
        <li>
            <span></span>
            <button class="button">进入酒店</button>
        </li>
        <!--</form>-->
    </ul>
</div>
<script>
    /***下拉菜单的点击事件(动态添加元素后，需要动态添加其事件)***/
    $(document).ready(function() {
        select_city($("#city").children("option:selected").val());

        /** 选择城市 **/
        $("#city").bind("change",function(){
            if($(this).val()==0){
                return;
            }
            else{
                var city = $(this).val();
                select_city(city);
            }
        });

        /** 点击地图 **/
        $(".map_btn").click(function () {

            var city = $("#city").children("option:selected").val();
            var hotel = $('#hotel').children("option:selected").val();

            var url = "/weihotel/hotel/get_hotel_infos?city=" + city + "&hotel=" + hotel;

            window.location.href = url;
        });

        /** 进入酒店 **/
        $(".button").click(function () {
            var city = $("#city").children("option:selected").val();
            var hotelName = $("#hotel").children("option:selected").val();

            url = "/weihotel/hotel/get_hotel?city=" + city + "&hotelName=" + hotelName;

            window.location.href = url;
        });
    });


    function select_city(city) {
        $.ajax({
            url : "/weihotel/hotel/get_hotel_list",
            type : "get",
            dataType : "json",
            async : false,
            data : {
                city : city
            },
            success: function (json) {
                /** 清除原有下拉框内容 **/
                console.log("return : " + json);
                $("#hotel").empty();

                /** 填充酒店下拉框内容 **/
                var options = "";
                var obj = eval(json);

                $(obj).each(function (index) {
                    var val = obj[index];

                    var option = "<option>" + val + "</option>";

                    options += option;
                });

                $("#hotel").append(options);

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                return false;
            }
        });
    }
</script>
</body>
</html>