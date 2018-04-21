package weixin.hotel.mapper;

import org.apache.ibatis.annotations.Param;
import weixin.hotel.entity.SysOrder;

import java.util.List;

public interface OrderMapper {

	/**
	 * 获取该房型在in日期和out日期中预定的房间数量
	 * @param hid
	 * @param roomName
	 * @param check
	 * @return
	 * @throws Exception
	 */
	public List<Integer> selectOrderRoomNum(@Param("hid") String hid, @Param("roomName") String roomName,
                                      @Param("check") String check) throws Exception;
	
	
	/**
	 * 插入一条新的订单
	 * @param order
	 * @return
	 * @throws Exception
	 */
	public int insertOrder(SysOrder order) throws Exception;


	/**
	 * 根据syscode来修改state
	 * @param sysCode
	 * @param state
	 * @return 变更记录
	 */
	public int updateOrderState(@Param("sysCode") String sysCode, @Param("state") String state) throws Exception;

	
	/**
	 * 根据openID和status查询订单历史记录
	 * @param openID
	 * @param status
	 * @return  List<SysOrder>
	 * @throws Exception
	 */
	public List<SysOrder> selectUserHistoryOrderByStatus(@Param("openID") String openID,@Param("status") String status) throws Exception;

	/**
	 * 根据openID查询订单历史记录
	 * @param openID
	 * @return  List<SysOrder>
	 * @throws Exception
	 */
	public List<SysOrder> selectUserHistoryOrderByOpenID(@Param("openID") String openID) throws Exception;

	/**
	 * 根据订单ID查找订单详情
	 * @param syscode
	 * @return
	 */
	public SysOrder selectOrderById(@Param("syscode") String syscode) throws Exception;

	/**
	 * 把状态码为101更新108
	 * @return
	 * @throws Exception
	 */
	public int updateOrderStatus() throws Exception;
}
