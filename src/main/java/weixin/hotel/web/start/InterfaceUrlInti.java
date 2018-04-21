package weixin.hotel.web.start;

import weixin.hotel.utils.GlobalConstants;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by Administrator on 2017/9/29.
 */
public class InterfaceUrlInti {

    public synchronized static void init(){
        ClassLoader cl = Thread.currentThread().getContextClassLoader();
        Properties props = new Properties();

        /** 懒汉模式 **/
        if(GlobalConstants.interfaceUrlProperties==null){
            GlobalConstants.interfaceUrlProperties = new Properties();
        }
        InputStream in = null;
        try {
            in = cl.getResourceAsStream("interface_url.properties");
            props.load(in);

            for(Object key : props.keySet()){
                //GlobalConstants.interfaceUrlProperties.setProperty(key.toString(), props.get(key).toString());
                GlobalConstants.interfaceUrlProperties.put(key, props.get(key));
            }

            props = new Properties();
            in = cl.getResourceAsStream("wechat.properties");
            props.load(in);

            for(Object key : props.keySet()){
                //GlobalConstants.interfaceUrlProperties.setProperty(key.toString(), props.get(key).toString());
                GlobalConstants.interfaceUrlProperties.put(key, props.get(key));
            }

        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(in!=null){
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return;
    }
}
