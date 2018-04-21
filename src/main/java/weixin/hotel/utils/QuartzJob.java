package weixin.hotel.utils;

import org.apache.log4j.Logger;
/**
 * Created by Administrator on 2017/9/30.
 */
public class QuartzJob {
    private static Logger logger = Logger.getLogger(QuartzJob.class);

    public void workForToken() {
        try {
            System.out.println("定时器启动!!!");
            WeChatTask timer = new WeChatTask();
            timer.getToken_getTicket();
        } catch (Exception e) {
            logger.error(e, e);
        }
    }

    public void workForOrderState() {
        try {
            System.out.println("定时器启动》》》");
            OrderTask timer = new OrderTask();
            timer.updateOrderState();
        } catch (Exception e) {
            logger.error(e, e);
        }
    }
}
