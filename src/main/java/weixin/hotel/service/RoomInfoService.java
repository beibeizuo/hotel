package weixin.hotel.service;


import weixin.hotel.entity.Room;
import weixin.hotel.entity.RoomPicture;

import java.util.List;

public interface RoomInfoService {
	
	/**
	 * 根据酒店id和房型名称查找具体房型信息
	 * @param hid
	 * @param roomName
	 * @return
	 */
	public Room getRoomInfo(String hid, String roomName);

	/**
	 * 根据入离日期查看酒店下的房型信息
	 * @param hid
	 * @return
	 */
	public List<Room> getRoomTypes(String hid);

	/**
	 * 根据房型Id查找房型名
	 * @param roomTypeId
	 * @return
	 */
	public String selectRoomName(String roomTypeId);

	/**
	 * 根据房型ID查询房间价格
	 * @param roomTypeId
	 * @return
	 */
	public double selectRoomPrice(String roomTypeId);

	/**
	 * 根据房型Id查询最大入住人数
	 * @param roomTypeId
	 * @return
	 */
	public int selectMaxInNum(String roomTypeId);

	/**
	 * 根据时间段查询房价
	 * @param roomTypeId
	 * @param startDate
	 * @param endDate
	 * @return
	 */
	public List<Double> getRoomPrices(String roomTypeId, String startDate, String endDate, int mode);

	/**
	 * 通过roomTypeId获取房型图片
	 * @param roomTypeId
	 * @return
	 */
	public List<RoomPicture> getRoomPics(String roomTypeId);

	/**
	 * 根据hid获取旗下房型的id
	 * @param hid
	 * @return
	 */
	public List<String> getRoomTypeIds(String hid);
}
