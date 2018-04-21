package weixin.hotel.mapper;

import org.apache.ibatis.annotations.Param;
import weixin.hotel.entity.Room;

import java.util.List;



/**
 * Title: RoomMapper.java
 * Description: 有关房型表的dao操作
 * Company: 博君
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午4:41:19
 */
public interface RoomMapper {

	/**
	 * 通过酒店ID查找该酒店名下的所有房型
	 * @param hid
	 * @return
	 * @throws Exception
	 */
	public List<Room> selectRoomsByHid(String hid) throws Exception;

	/**
	 * 通过hid获取房型id
	 * @param hid
	 * @return
	 * @throws Exception
	 */
	public List<String> selectRoomTypeIdsByHid(String hid) throws Exception;

	/**
	 * 通过酒店ID和房型名称查找具体的房型信息
	 * @param hid
	 * @param roomName
	 * @return
	 * @throws Exception
	 */
	public Room selectRoomByHidAndRoomName(String hid, String roomName) throws Exception;

	/**
	 * 根据酒店ID和房型更改房间数
	 * @param hid
	 * @param roomName
	 * @return
	 * @throws Exception
	 */
	public Room updateRoomNumByHidAndRoomName(String hid, String roomName) throws Exception;

	/**
	 * 根据房间Id获得房间具体信息
	 * @param roomTypeId
	 * @return
	 */
    public Room selectRoomsByRoomTypeId(@Param("roomTypeId") String roomTypeId)throws Exception;

	/**
	 * 从房价表中查询数据
	 * @param roomTypeId
	 * @param startDate
	 * @param endDate
	 * @return
	 * @throws Exception
	 */
	public List<Double> selectRoomPrices(@Param("roomTypeId") String roomTypeId, @Param("startDate") String startDate,
										 @Param("endDate") String endDate) throws Exception;

	/**
	 * 从底价表中查询价格
	 * @param roomTypeId
	 * @param startDate
	 * @param endDate
	 * @return
	 * @throws Exception
	 */
	public List<Double> selectBaseRoomPrices(@Param("roomTypeId") String roomTypeId, @Param("startDate") String startDate,
										 @Param("endDate") String endDate) throws Exception;
}
