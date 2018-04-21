package weixin.hotel.utils;



import java.security.MessageDigest;
import java.util.HashMap;
import java.util.UUID;
import java.util.Formatter;

/**
 * Created by Administrator on 2017/9/29.
 */
public class JSSDK_Config {
    /**
     * @Description: 前端 jssdk 页面配置需要用到的配置参数
     * @param @return hashmap {appid,timestamp,nonceStr,signature}
     * @param @throws Exception
     * @date 2016 年 3 月 19 日 下午 3:53:23
     */
    public static HashMap<String, String> jsSDK_Sign(String url) throws Exception {
        String nonce_str = create_nonce_str();
        String timestamp = create_timestamp();
        String jsapi_ticket= GlobalConstants.getInterfaceUrl("jsapi_ticket");
        // 注意这里参数名必须全部小写，且必须有序
        String  string1 = "jsapi_ticket=" + jsapi_ticket + "&noncestr=" + nonce_str
                + "&timestamp=" + timestamp  + "&url=" + url;


        MessageDigest crypt = MessageDigest.getInstance("SHA-1");
        crypt.reset();
        crypt.update(string1.getBytes("UTF-8"));
        String signature = byteToHex(crypt.digest());
        HashMap<String, String> jssdk=new HashMap<String, String>();
        jssdk.put("appId", GlobalConstants.getInterfaceUrl("appid"));
        jssdk.put("timestamp", timestamp);
        jssdk.put("noncestr", nonce_str);
        jssdk.put("_wxSignature", signature);
        return jssdk;

    }

    /**
     * 二进制转换为16进制
     * @param hash
     * @return
     */
    private static String byteToHex(final byte[] hash) {
        Formatter formatter = new Formatter();
        for (byte b : hash) {
            formatter.format("%02x", b);
        }
        String result = formatter.toString();
        formatter.close();
        return result;
    }

    private static String create_nonce_str() {
        return UUID.randomUUID().toString();
    }


    private static String create_timestamp() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }
}
