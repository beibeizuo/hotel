package weixin.hotel.utils;



import net.sf.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/9/29.
 */
public class WeChatTask {

    /**
     * 微信两小时定时任务
     * @throws Exception
     */
    public void getToken_getTicket() throws Exception {
        System.out.println("进入微信两小时定时器任务！");

        Map<String, String> params = new HashMap<String, String>();
        //获取 token 执行体
        params.put("grant_type", "client_credential");
        params.put("appid", GlobalConstants.getInterfaceUrl("appid"));
        params.put("secret", GlobalConstants.getInterfaceUrl("AppSecret"));
        System.out.println("appid : " + params.get("appid"));
        System.out.println("secret : " + params.get("secret"));
        System.out.println("AppScret : " + GlobalConstants.getInterfaceUrl("AppSecret"));

        String jstoken = HttpUtils.sendGet(
                GlobalConstants.getInterfaceUrl("tokenUrl"), params);

        String access_token = JSONObject.fromObject(jstoken).getString("access_token"); // 获取到 token 并赋值保存

        System.out.println("token : " + access_token);
        GlobalConstants.interfaceUrlProperties.put("access_token", access_token);

        //获取 jsticket 的执行体
        params.clear();
        params.put("access_token", access_token);
        params.put("type", "jsapi");
        String jsticket = HttpUtils.sendGet(
                GlobalConstants.getInterfaceUrl("ticketUrl"), params);
        String jsapi_ticket = JSONObject.fromObject(jsticket).getString(
                "ticket");
        GlobalConstants.interfaceUrlProperties
                .put("jsapi_ticket", jsapi_ticket); // 获取到 js-SDK 的 ticket 并赋值保存

        System.out.println("jsapi_ticket================================================" + jsapi_ticket);
        System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+"token 为=============================="+access_token);

    }

}
