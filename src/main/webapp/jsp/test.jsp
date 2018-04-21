<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html>
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


        #ibook_wrap {
            margin-top: 2px;
        }



        .ibd_right i {
            color: #ccc;
            line-height: 38px
        }



        .form_node_name i {
            color: #81C2D6;
            font-size: 0.9em
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


        .ticketnode_togo div {
            border: 1px solid #FF6D10;
            color: #FF6D10;
            text-align: center;
            line-height: 25px;
            border-radius: 3px;
        }


        .ui-wrapper {
            margin-top: 5px;
            background: #FFF;
            border-bottom: 1px solid #F6F6F6;
            padding-top: 20px;
        }
        .ui-toolbar {
            font-size: 0px;
        }

        .m-toolbar {
            padding-top: 1px;
            padding-left: 20%;
            margin-bottom: 20px;
            position: relative;
        }
        .clrfix {
            zoom: 1;
        }
        .ui-toolbar-group {
            display: inline-block;
            vertical-align: middle;
            border-left: 1px solid #f6f6f6;
            margin-left: 10px;
            _border-left: expression(this.previousSibling == null ? '0 none':'1px solid #e5e5e5');
            _margin-left: expression(this.previousSibling == null ? '-10px':'10px');
        }
        .ui-toolbar-group:first-child {
            border-left: 0 none;
            margin-left: -10px;
        }
        .ui-toolbar-cell {
            display: inline-block;
            vertical-align: middle;
            font-size: 20px;
            font-family: Arial;
            padding-left: 10px;
        }
        .ui-dropdown {
            width: 200px;
            display: inline-block;
            vertical-align: middle;
            text-align: center;
            font-size: 16px;
            font-family: Arial;
            outline: 0;
        }
        .ui-dropdown-source {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        .ui-dropdown-input {
            -moz-user-select: none;
            -ms-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            height: 20px;
            overflow: hidden;
            padding: 3px 21px 3px 6px;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-break: normal;
            word-wrap: normal;
            color: #1f1f1f;
        }
        .ui-dropdown-icon-wrap {
            display: block;
            height: 0;
            position: relative;
        }
        .ui-dropdown-icon {
            color: #b5b5b5;
            ursor: pointer;
            display: none;
            padding: 0 6px;
            position: absolute;
            right: 0;
            text-align: center;
            top: -21px;
        }
        .ui-dropdown .ui-icon {
            cursor: pointer;
            font-size: 12px;
            vertical-align: baseline;
        }
        .ui-icon {
            -moz-user-select: none;
            -ms-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            cursor: default;
            font-family: fontawesome!important;
            font-size: 14px;
            -moz-osx-font-smoothing: grayscale;
            -webkit-font-smoothing: antialiased;
            font-style: normal;
            font-weight: normal;
            line-height: 18px;
            vertical-align: middle;
        }
        .ui-dropdown-menu-wrap {
            position: relative;
            z-index: 1000;
        }
        .ui-dropdown-menu {
            display: none;
            left: 0;
            position: absolute;
            top: -1px;
            width: 100%;
            _width: auto!important;
        }
        .ui-dropdown-menu-inner {
            box-shadow: 2px 2px 3px 0 rgba(0,0,0,0.1);
            background-color: #fff;
            border: 1px solid #ccc;
            overflow: hidden;
            padding: 3px 0;
        }
        .ui-dropdown-item-selected {
            background-color: #00B38C;
            color: #fff;
        }
        .ui-dropdown-item {
            -moz-user-select: none;
            -ms-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            cursor: pointer;
            overflow: hidden;
            padding: 3px 0;
            text-indent: 6px;
            text-overflow: ellipsis;
            white-space: nowrap;
            width: 100%;
            word-break: normal;
            word-wrap: normal;
        }

        .clrfix:before, .clrfix:after {
            content: '';
            display: block;
        }
        .ui-btn {
            display: inline-block;
            vertical-align: middle;
            -moz-user-select: none;
            -ms-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            background-color: #f8f8f8;
            border: 1px solid #ccc;
            border-radius: 5px;
            color: #333;
            cursor: pointer;
            font-size: 12px;
            height: 26px;
            outline: 0;
            overflow: visible;
            _overflow-y: hidden;
            padding: 0 10px;
            text-decoration: none;
        }

        .ui-btn-large {
            margin-left: 22%;
            margin-bottom: 20px;
            width: 240px;
            font-size: 18px;

            color: #00B38C;
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

    <title>Test !!!</title>
</head>
<body footer>
<script src="/weihotel/front/js/sheep.js?"></script>
<div id="sheep_bg"></div>
<div id="sheep_ct"></div>


<div id="hotel_imgs" style="height: 187.5px;">
    <div id="hotel_imgs_num">舒适、贴心您的旅程！</div>
    <img class="lazy"
         data-original="http://img.yiding.me/o_1bqeenj0pihk3vt1clv3oqco8a.jpg?imageView2/1/w/800/h/400"
         width="100%"
         src="http://img.yiding.me/o_1bqeenj0pihk3vt1clv3oqco8a.jpg?imageView2/1/w/800/h/400"
         style="width: 375px; display: inline;">
</div>

<div class="ui-wrapper">
    <div class="ui-toolbar m-toolbar clrfix">
        <div class="ui-toolbar-group">
            <div class="ui-toolbar-cell">
                <p class="notes">城市</p>
            </div>
            <div class="ui-toolbar-cell">
                <div class="ui-dropdown hotel-selector ui-dropdown-open" data-set="hotelInfo" dropdown-unid="1">
                    <div class="ui-dropdown-source">
                        <div class="ui-dropdown-input">西安</div>
                        <div class="ui-dropdown-icon-wrap">
                            <i class="ui-dropdown-icon ui-icon ui-icon-angle-up"></i><i class="ui-dropdown-icon ui-icon ui-icon-angle-down"></i>
                        </div>
                    </div>
                    <div class="ui-dropdown-menu-wrap">
                        <div class="ui-dropdown-menu" style="display: block; width: 100%;">
                            <div class="ui-dropdown-menu-inner" style="max-height: 150px; overflow: auto; display: none;">
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">西安</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">临潼</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">雄安</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">成都</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">威尼斯</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">澳门</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">京都</div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <div class="ui-toolbar m-toolbar clrfix">
        <div class="ui-toolbar-group">
            <div class="ui-toolbar-cell">
                <p class="notes">酒店</p>
            </div>
            <div class="ui-toolbar-cell">
                <div class="ui-dropdown hotel-selector ui-dropdown-open" data-set="hotelInfo" dropdown-unid="1">
                    <div class="ui-dropdown-source">
                        <div class="ui-dropdown-input">小寨花都</div>
                        <div class="ui-dropdown-icon-wrap">
                            <i class="ui-dropdown-icon ui-icon ui-icon-angle-up"></i><i class="ui-dropdown-icon ui-icon ui-icon-angle-down"></i>
                        </div>
                    </div>
                    <div class="ui-dropdown-menu-wrap">
                        <div class="ui-dropdown-menu" style="display: block; width: 100%;">
                            <div class="ui-dropdown-menu-inner" style="max-height: 150px; overflow: auto; display: none;">
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">小寨花都</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">临潼水池</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">雄安空中花园</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">成都地下堡垒</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">威尼斯双子门</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">澳门大都会</div>
                                <div class="ui-dropdown-item ui-dropdown-item-selected" idx="0">京都草堂</div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <button class="ui-btn ui-btn-medium pa open-log-list " style="margin-left: 180px;margin-top:5px;">地图展示</button>
    </div>

    <button class="ui-btn ui-btn-large pa open-log-list " style="right:5px;">进入酒店</button>
</div>

<script>
    /***下拉菜单的点击事件(动态添加元素后，需要动态添加其事件)***/
    $(document).ready(function() {

        select_city($(".ui-dropdown-input").eq(0).text());

        $(document).on("click", '.ui-dropdown', function(e) {
            //阻止冒泡功能,这样点击事件能够冒泡到document
            e.stopPropagation();

            var dropdown = jQuery(this);
            if (jQuery(this).hasClass('ui-dropdown-open')) {

                jQuery(this).removeClass('ui-dropdown-open');
                jQuery(this).children('div').eq(1).children('div').eq(0).css('display', 'none');
            } else {
                /** 确定是否是城市的下拉框 **/
                var isCitySelector = dropdown.parent().siblings().find(".notes").text();
                console.log(" selector : " + isCitySelector);


                dropdown.addClass('ui-dropdown-open');
                jQuery(this).children('div').eq(1).children('div').eq(0).css('display', 'block');
                jQuery(this).find(".ui-dropdown-menu-inner").css("display", "block");

                /***针对选择的条目进行替换，并对餐厅和客房选择房型***/
                jQuery(this).on('click', '.ui-dropdown-item', function() {
                    /**选择下拉项，对输入框添加选择的相应内容**/
                    dropdown.children('div').eq(0).children('div').eq(0).text(jQuery(this).text());

                    if (isCitySelector == "城市") {
                        var city = jQuery(this).text();
                        console.log("city : " + city);
                        select_city(city);
                    }

                    /**对客房和浴室选项需要添加房型信息**/
                    if (jQuery(this).text() == "客房" || jQuery(this).text() == "浴室") {
                        dropdown.parent().parent().find(".control-line").eq(2).css("display", "block");
                    } else {
                        dropdown.parent().parent().find(".control-line").eq(2).css("display", "none");
                    }
                });

                /***对于选中的下拉项***/
                var tag = jQuery(this).children('div').eq(0).children('div').eq(0).text();
                dropdown.find('.ui-dropdown-item').each(function() {

                    if (jQuery(this).text() == tag) {
                        jQuery(".ui-dropdown-item").removeClass("ui-dropdown-item-selected");
                        jQuery(this).addClass("ui-dropdown-item-selected");
                    }
                })
            }

        });


        /***点击空白处，下拉框回收***/
        $(document).click(function() {

            jQuery('.ui-dropdown').each(function() {
                if (jQuery(this).hasClass('ui-dropdown-open')) {
                    jQuery(this).removeClass('ui-dropdown-open');

                    jQuery(this).children('div').eq(1).children('div').eq(0).css('display', 'none');

                }
            });

        });


        //地图展示
        $(".ui-btn-medium").click(function () {
            var url = "http://apis.map.qq.com/tools/poimarker?type=0";
            var city = $(".ui-dropdown-input").eq(0).text();

            $.ajax({
                url : "/weihotel/hotel/get_hotel_infos",
                type : "get",
                dataType : "json",
                async : false,
                data : {
                    city : city
                },
                success: function (json) {
                    for (var i = 0; i < json.infos.length; i++) {
                        var hotel = json.infos[i];


                        if (i == 0) {
                            url += "&marker=coord:" + hotel.latitude + "," + hotel.longitude + ";title:" + hotel.hotelName + ";addr:" + hotel.hotelLocation + "|";
                        } else if (i == json.infos.length - 1) {
                            url += "coord:" + hotel.latitude + "," + hotel.longitude + ";title:" + hotel.hotelName + ";addr:" + hotel.hotelLocation;
                            url += "&key=S3ZBZ-MWVR4-WR5UD-DPRPQ-GD375-YMFJT&referer=fhotel";
                        } else {
                            url += "coord:" + hotel.latitude + "," + hotel.longitude + ";title:" + hotel.hotelName + ";addr:" + hotel.hotelLocation + "|";
                        }


                    }

                    window.location.href = url;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    return false ;
                }
            });
        });

        //进入酒店
        $(".ui-btn-large").click(function () {
           var city = $(".ui-dropdown-input").eq(0).text();
           var hotelName = $(".ui-dropdown-input").eq(1).text();

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
               $(".ui-dropdown-menu-inner").eq(1).empty();

              /** 填充酒店下拉框内容 **/
              var options = "";
              var obj = eval(json);
              if (json == "") {
                  $(".ui-dropdown-input").eq(1).text("（暂无）");
              }

              $(obj).each(function (index) {
                   var val = obj[index];
                   if (index == 0) {
                       $(".ui-dropdown-input").eq(1).text(val);
                       var option = "<div class='ui-dropdown-item ui-dropdown-item-selected' idx=" + index + ">" + val + "</div>";
                   } else {
                       var option = "<div class='ui-dropdown-item' idx=" + index + ">" + val + "</div>";
                   }

                   options += option;
               });

               $(".ui-dropdown-menu-inner").eq(1).append(options);

           },
           error: function (XMLHttpRequest, textStatus, errorThrown) {
               return false ;
           }
       });
    }

</script>
</body>
</html>
