package weixin.hotel.service;

import weixin.hotel.entity.DetailShow;
import weixin.hotel.entity.OrderShow;
import weixin.hotel.entity.SysOrder;

import java.util.List;



public interface OrderService {

	/**
	 * 获取hid为I的酒店下面的A房型已经有多少间房子在日期范围内消耗了
	 * @param hid
	 * @param roomName
	 * @param indate
	 * @param count
	 * @param outdate
	 * @return
	 */
	public int getOrderRoomNum(String hid, String roomName, String indate, int count, String outdate);

	/**
	 * 插入一条订单记录
	 * @param order
	 */
	public int insertOrder(SysOrder order);

	/**
	 * 根据syscode修改状态为state
	 * @param sysCode
	 * @param state
	 */
	public int updateOrderState(String sysCode, String state);


	/**
	 *  根据状态返回用户订单
	 * @param openID
	 * @param status
	 * @return
	 */
	public List<OrderShow> selectUserHistoryOrderByStatus(String openID,String status);

	/**
	 *  返回用户全部订单
	 * @param openID
	 * @return
	 */
	public List<OrderShow> selectUserHistoryOrderByStatus(String openID);

    /**
     * 获取指定id的订单详情
     * @param syscode
     * @return
     */
   public DetailShow slectDetailOrderByID(String syscode);

	/**
	 * 按照ID取消订单
	 * @param orderId
	 * @return
	 */
	public int cancelOrder(String orderId);

	/**
	 * 根据酒店id查找酒店名
	 * @param hid
	 * @return
	 */
    public String selectHotelNameByHid(String hid);

	/**
	 * 根据id查找订单详情
	 * @param orderId
	 * @return
	 */
	public 	SysOrder slectOrderByID(String orderId);


}
