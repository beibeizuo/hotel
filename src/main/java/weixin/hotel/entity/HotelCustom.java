package weixin.hotel.entity;

import java.util.List;

/**
 * <p>
 * Title: HotelCustom.java
 * </p>
 * <p>
 * Description: 酒店和房型信息
 * </p>
 * <p>
 * Company: 博君
 * </p>
 * 
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午4:29:26
 */
public class HotelCustom {

	private Hotel hotel;
	private List<Room> roomList;

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public List<Room> getRoomList() {
		return roomList;
	}

	public void setRoomList(List<Room> roomList) {
		this.roomList = roomList;
	}

}
