package weixin.hotel.utils;

import java.util.Properties;

/**
 * Created by Administrator on 2017/9/29.
 */
public class GlobalConstants {
    public static Properties interfaceUrlProperties;

    public static String getInterfaceUrl(String key) {
        return (String) interfaceUrlProperties.get(key);
    }
}
