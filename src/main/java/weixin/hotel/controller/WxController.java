package weixin.hotel.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.wxpay.sdk.WXPay;
import com.github.wxpay.sdk.WXPayUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.hotel.entity.PayParams;
import weixin.hotel.entity.SysOrder;
import weixin.hotel.service.HotelCustomService;
import weixin.hotel.service.OrderService;
import weixin.hotel.utils.GlobalConstants;
import weixin.hotel.utils.HttpUtils;
import weixin.hotel.utils.JSSDK_Config;
import weixin.hotel.wx.MyConfig;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

import static com.github.wxpay.sdk.WXPayUtil.MD5;

/**
 * Created by Administrator on 2017/9/29.
 */
@Controller
@RequestMapping("/common")
public class WxController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private HotelCustomService hotelCustomService;


    @RequestMapping("/test")
    public String test(HttpServletRequest httpServletRequest, ModelMap modelMap, HttpSession httpSession) {
        String demo = (String) httpSession.getAttribute("openID");
        if (demo == null || demo == "") {
            String code = httpServletRequest.getParameter("code");
            System.out.println("code : " + code);
            String openID = "";
            String retMessage = "";
            Map<String, String> params = new HashMap<String, String>();

            params.put("appid", GlobalConstants.getInterfaceUrl("appid"));
            params.put("secret", GlobalConstants.getInterfaceUrl("AppSecret"));
            params.put("code", code);
            params.put("grant_type", "authorization_code");

            try {
                retMessage = HttpUtils.sendGet(GlobalConstants.getInterfaceUrl("idUrl"), params);
            } catch (Exception e) {
                e.printStackTrace();
            }

            JSONObject jsStr = com.alibaba.fastjson.JSONObject.parseObject(retMessage);
            openID = jsStr.getString("openid");

            System.out.println("#########");
            System.out.println("openId : " + openID);
            System.out.println("#########");

            httpSession.setAttribute("openID", openID);
        }

        List<String> cities = new ArrayList<String>();
        List<String> hotels = new ArrayList<String>();
        cities.addAll(hotelCustomService.getCity());
        hotels.addAll(hotelCustomService.getHotelsByCity(cities.get(0)));
        modelMap.addAttribute("cities", cities);
        modelMap.addAttribute("firstCity", cities.get(0));
        modelMap.addAttribute("firstHotel", hotels.get(0));
        modelMap.addAttribute("hotels", hotels);

        System.out.println("city: " + cities.size());
        System.out.println("hotels: " + hotels.size());
        //return "homepage/home";
        return "homepage/index";
    }

    @RequestMapping("/demo")
    public void demo(HttpServletRequest httpServletRequest, ModelMap modelMap) {
        try {
            MyConfig myConfig = new MyConfig();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @ResponseBody
    @RequestMapping("/getAccessToken")
    public HashMap<String, String> getAccessToken(HttpServletRequest httpServletRequest, ModelMap modelMap) {
        net.sf.json.JSONObject jsonObject = new net.sf.json.JSONObject();

        System.out.println("appId : " + GlobalConstants.getInterfaceUrl("appid"));
        String url = httpServletRequest.getParameter("url");
        String timeStamp = Long.toString(System.currentTimeMillis() / 1000);
        String nonceStr = UUID.randomUUID().toString();
        String jsapi_ticket = GlobalConstants.getInterfaceUrl("jsapi_ticket");

        String str = "jsapi_ticket=" + jsapi_ticket +
                "&noncestr=" + nonceStr +
                "&timestamp=" + timeStamp +
                "&url=" + url;

        HashMap<String, String> jssdk=new HashMap<String, String>();
        try {
            jssdk.putAll(JSSDK_Config.jsSDK_Sign(url));
        } catch (Exception e) {
            e.printStackTrace();
        }

        jssdk.put("jsapi_ticket", jsapi_ticket);


        return jssdk;
    }

    @RequestMapping("/payRequest")
    public ModelAndView payRequest(ModelAndView mv,
                                   String orderId, HttpServletRequest request) throws Exception {
        MyConfig config = new MyConfig();
        WXPay wxpay = new WXPay(config);

        String ipAddr = request.getRemoteAddr();
        SysOrder order = orderService.slectOrderByID(orderId);
        int total_fee = (int)(order.getRoomPrice()*Integer.parseInt(order.getLiveInNum())*100);
        /*
        同一下单
         */
        Map<String,String> data = new HashMap<String, String>();
        data.put("body",order.getRoomName()+order.getLiveInNum()+"晚");
        data.put("out_trade_no", order.getSysCode());
        data.put("device_info", "WEB");
        data.put("fee_type", "CNY");
    //    data.put("total_fee", "1");
        data.put("total_fee", total_fee+"");
        data.put("spbill_create_ip",ipAddr );
        data.put("notify_url", "http://www.bojunjia.com/commom/payResult");
        data.put("trade_type", "JSAPI");
        data.put("openid",order.getOpenID());

    /*    System.out.println("##############");
        System.out.println("生成参数："+data.toString());
        System.out.println("###############");*/

        Map<String,String> resp = wxpay.unifiedOrder(data);

      /*  System.out.println("##############");
        System.out.println("获取返回参数为："+resp);
        System.out.println("###############");*/

        /*
        发起支付窗口
         */
        Map<String,String> param = new HashMap<String, String>();
        param.put("appId",config.getAppID());
        String time = Long.toString(System.currentTimeMillis() / 1000) ;
        param.put("timeStamp", time);
        String randStr = WXPayUtil.generateNonceStr();
        param.put("nonceStr", randStr);
        param.put("package","prepay_id="+resp.get("prepay_id"));
        param.put("signType","MD5");
        String paySign = WXPayUtil.generateSignature(param,config.getKey());
    /*    System.out.println("##############");
        System.out.println("重新生成参数为："+param.toString());
        System.out.println("第一种方式： " + paySign);
        System.out.println("###############");*/

        String stringA="appId="+config.getAppID()+ "&nonceStr="+ randStr +"&package=prepay_id=" + resp.get("prepay_id")+"&signType=MD5&timeStamp="+ time;
        String stringSignTemp=stringA+"&key="+config.getKey();

        String sign=MD5(stringSignTemp).toUpperCase();
    //    System.out.println("第二种方式： 重新生成签名为："+sign);

        PayParams params = new PayParams();
        params.setAppId(resp.get("appid"));
        params.setNonceStr(randStr);
        params.setSignType("MD5");
        params.setPaySign(sign);
        params.setTimeStamp(time);
        params.setPrepayId(param.get("package"));
    //    System.out.println("传递的参数为： " + params.toString());

        mv.addObject("syscode",order.getSysCode());
        mv.addObject("params",params);
        mv.setViewName("pay/pay");
        return mv;
    }

    @RequestMapping("/xuzhi")
    public ModelAndView xuzhi(ModelAndView mv)  {

        mv.setViewName("xuzhi/xuzhi");
        return mv;
    }
}
