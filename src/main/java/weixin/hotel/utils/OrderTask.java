package weixin.hotel.utils;


import weixin.hotel.mapper.OrderMapper;

/**
 * Created by Administrator on 2017/10/20.
 */
public class OrderTask {



    public void updateOrderState() throws Exception {
        OrderMapper orderMapper = (OrderMapper) BeanUtil.getBean("orderMapper");
        System.out.println(orderMapper == null);
        System.out.println("定时器任务修改状态码： " + orderMapper.updateOrderStatus());
    }
}
