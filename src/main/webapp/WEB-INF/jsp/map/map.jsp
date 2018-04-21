<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/14
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>博君</title>
    <style type="text/css">
        *{
            margin:0px;
            padding:0px;
        }
        body, button, input, select, textarea {
            font: 12px/16px Verdana, Helvetica, Arial, sans-serif;
        }
        #info {
            margin-top: 10px;
        }
        #container{
            min-width:600px;
            min-height:500px;
        }
    </style>
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
    <script>
        var init = function() {
            var selectedHotel = '${hotel}';
            var hotels = eval('${hotelInfos}');

            var center = new qq.maps.LatLng(hotels[0].latitude, hotels[0].longitude);
            for (var i = 0; i < hotels.length; i++) {
                var h = hotels[i];
                if (h.hotelName == selectedHotel) {
                    center = new qq.maps.LatLng(h.latitude, h.longitude);
                    break;
                }
            }

            var map = new qq.maps.Map(document.getElementById('container'), {
                center: center,
                zoom: 14
            });

            var marker = new Array();

            for (var i = 0; i < hotels.length; i++) {
                (function (n) {
                    var hotel = hotels[n];
                    var position = new qq.maps.LatLng(hotel.latitude, hotel.longitude);

                    marker[n] = new qq.maps.Marker({
                        position: position,
                        map: map
                    });
                    var label = new qq.maps.Label({
                        position: position,
                        map: map,
                        content:hotel.hotelName
                    });

                     qq.maps.event.addListener(marker[n], 'click', function() {
                         var info = new qq.maps.InfoWindow({
                             map: map
                         });

                         info.open();

                         info.setContent('<div style="width:200px;padding-top:10px;">' +
                         '<img style="float:left; margin-right:10px;" src=' + hotels[n].hotelPicUrl + '/> ' +
                         hotels[n].hotelName + '<br /> ' + hotels[n].hotelLocation + '</div>');
                         info.setPosition(position);
                     });
                })(i);
            }
        }
    </script>
</head>
<body onload="init()">
<div id="container"></div>

</body>
</html>