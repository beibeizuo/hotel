package weixin.hotel.utils;

import weixin.hotel.entity.Room;

import java.util.List;



/**
 * 
 * @author zuobei
 *
 */
public class HotelCheckUtil {

	/**
	 * 判断房间是否剩余
	 * @param rooms
	 * @return 剩余返回true
	 */
	public static String isLeftRoom(List<Room> rooms) {
		for (Room room : rooms) {
			if (room.getRoomNum()>0) {
				return "1";
			}
		}
		return "0";
	}
	/**
	 * 返回酒店中价格最低的房间的价格
	 * @param rooms
	 * @return
	 */
	public static double lowPrice(List<Room> rooms) {
		double lowest = 10000.0;
		for (Room room : rooms) {
			if (room.getRoomPrice()<lowest) {
				lowest = room.getRoomPrice();
			}
		}
		return lowest;
	}
}
