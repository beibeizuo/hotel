package weixin.hotel.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * Created by Administrator on 2017/10/20.
 */
public class BeanUtil implements ApplicationContextAware{
    // Spring应用上下文环境
    private static ApplicationContext applicationContext;

    /**
     * 实现ApplicationContextAware接口的回调方法，设置上下文环境
     */
    public void setApplicationContext(ApplicationContext applicationContext)
            throws BeansException {
        BeanUtil.applicationContext = applicationContext;
    }

    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    /**
     * 获取对象 这里重写了bean方法，起主要作用
     *
     * @param beanId
     * @return  Object 一个以所给名字注册的bean的实例
     * @throws BeansException
     */
    public static Object getBean(String beanId) throws BeansException {
        return applicationContext.getBean(beanId);
    }
}


