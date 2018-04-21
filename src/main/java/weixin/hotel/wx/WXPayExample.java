package weixin.hotel.wx;

import com.github.wxpay.sdk.WXPayUtil;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

import static com.github.wxpay.sdk.WXPayUtil.MD5;

public class WXPayExample {
    public static void main(String[] args) throws Exception {
        /*MyConfig config = new MyConfig();
        WXPay wxpay = new WXPay(config);

        Map<String,String> data = new HashMap<String, String>();

        data.put("body","测试内容");
        data.put("out_trade_no", "2016090910595900001014");
        data.put("device_info", "WEB");
        data.put("fee_type", "CNY");
        data.put("total_fee", "1");
        data.put("spbill_create_ip", "123.12.12.123");
        data.put("notify_url", "http://www.example.com/wxpay/notify");
        data.put("trade_type", "JSAPI");  // 此处指定为扫码支付
        data.put("product_id", "12");
        data.put("openid","o_cYn1RfA-Wq3izDMPHQxTw9LT5A");

        Map<String,String> resp = wxpay.unifiedOrder(data);

        System.out.println(resp.get("nonce_str"));
        System.out.println(resp.get("sign"));
        System.out.println(resp.get("prepay_id"));

        System.out.println(resp);*/

    }

    @Test
    public void testC() throws Exception {


        String stringA="appId=wx2421b1c4370ec43b&nonceStr=e61463f8efa94090b1f366cccfbbb444&package=prepay_id=u802345jgfjsdfgsdg888&signType=MD5&timeStamp=1395712654";

        String stringSignTemp=stringA+"&key=R75cbfc904b4f17a3d71abeee75d9B42";
        String sign = MD5(stringSignTemp).toUpperCase();
        System.out.println(sign);

        String test = "a758acc366c44b26991fb022e4c1cff5";
        System.out.println("size : " + test.length());




        Map<String,String> param = new HashMap<String, String>();
        param.put("appId", "wxc36503facbd16dec");
        String time = System.currentTimeMillis() / 1000 + "";
        param.put("timeStamp", "1508154351");
        String randStr = WXPayUtil.generateNonceStr();
        param.put("nonceStr", "1508154351587");
        param.put("package","prepay_id=wx201710161945513ca0b98c580392889067");
        param.put("signType","MD5");
        String paySign = WXPayUtil.generateSignature(param, "R75cbfc904b4f17a3d71abeee75d9B42");
        System.out.println("##############");
        System.out.println("重新生成参数为："+param.toString());
        System.out.println("第一种方式： " + paySign);
        System.out.println("###############");




    }
}
