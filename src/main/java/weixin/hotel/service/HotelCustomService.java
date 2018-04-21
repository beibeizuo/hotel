package weixin.hotel.service;

import weixin.hotel.entity.Hotel;
import weixin.hotel.entity.HotelInfoShow;

import java.util.List;
import java.util.Set;


/**
 * <p>
 * Title: HotelCustomService.java
 * </p>
 * <p>
 * Description: 酒店信息和其下的房型信息服务类接口
 * </p>
 * <p>
 * Company: 博君
 * </p>
 * 
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午4:55:59
 */
public interface HotelCustomService {
	
	/**
	 * 根据酒店ID获取酒店的具体信息
	 * @param hid
	 * @return
	 */
	public Hotel getHotelDetailsByHid(String hid);
	/**
	 * 根据客户输入目的地，入住时间，以及关键词查找符合条件的酒店
	 * @param des
	 * @param checkInDate
	 * @param checkOutDate
	 * @param keyWords
	 * @return
	 */
	public List<HotelInfoShow> screenSearchHotel(String des, String checkInDate,
												 String checkOutDate, String keyWords);

	/**
	 * 获取酒店所在的城市
	 * @return
	 */
	public Set<String> getCity();

	/**
	 * 根据城市获取酒店列表
	 * @param city
	 * @return
	 */
	public List<String> getHotelsByCity(String city);

	/**
	 * 根据城市获取酒店信息
	 * @param city
	 * @return
	 */
	public List<Hotel> getHotelInfosByCity(String city);

	/**
	 * 根据城市和酒店名称获取酒店的具体信息
	 * @param city
	 * @param hotelName
	 * @return
	 */
	public Hotel getHotelByCityAndName(String city, String hotelName);
}



