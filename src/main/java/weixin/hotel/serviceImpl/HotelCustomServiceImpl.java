package weixin.hotel.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import weixin.hotel.entity.Hotel;
import weixin.hotel.entity.HotelInfoShow;
import weixin.hotel.entity.Room;
import weixin.hotel.mapper.HotelMapper;
import weixin.hotel.mapper.RoomMapper;
import weixin.hotel.service.HotelCustomService;
import weixin.hotel.utils.HotelCheckUtil;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


/**
 * <p>
 * Title: HotelCustomServiceImpl.java
 * </p>
 * <p>
 * Description:	酒店信息和其下的房型信息服务类实现
 * </p>
 * <p>
 * Company: 博君
 * </p>
 * 
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午5:01:29
 */

@Service("hotelCustomService")
public class HotelCustomServiceImpl implements HotelCustomService {

	@Autowired
	private HotelMapper hotelMapper;
	
	@Autowired
	private RoomMapper roomMapper;


	@Override
	public Set<String> getCity() {
		Set<String> city = new HashSet<String>();

		try {
			city.addAll(hotelMapper.selectCity());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return city;
	}

	@Override
	public Hotel getHotelDetailsByHid(String hid)  {
		Hotel hotel = null;
		try {
			hotel = hotelMapper.selectHotelInfoByHid(hid);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		System.out.println("@service hotelname: " + hotel.getHotelName());

		return hotel;
	}

	@Override
	public Hotel getHotelByCityAndName(String city, String hotelName) {
		Hotel hotel = null;

		try {
			hotel = hotelMapper.selectHotelByCityAndName(city, hotelName);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return hotel;
	}

	@Override
	public List<String> getHotelsByCity(String city) {
		List<String> hotels = new ArrayList<String>();

		try {
			hotels.addAll(hotelMapper.selectHotelsByCity(city));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return hotels;
	}

	@Override
	public List<Hotel> getHotelInfosByCity(String city) {
		List<Hotel> hotelInfos = new ArrayList<Hotel>();

		try {
			hotelInfos.addAll(hotelMapper.selectHotelInfosByCity(city));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return hotelInfos;
	}

	@Override
	public List<HotelInfoShow> screenSearchHotel(String des, String checkInDate,
												 String checkOutDate, String keyWords) {
		List<Hotel> hotels = new ArrayList<Hotel>();
		List<Room> rooms = new ArrayList<Room>();
		List<HotelInfoShow> retHotels = new ArrayList<HotelInfoShow>();
		try {
			hotels = hotelMapper.selectHotelInfoByKeyWord(keyWords);
			System.out.println("查询酒店到记录"+hotels.size()+"条");
			for (Hotel hotel:hotels) {
				rooms = roomMapper.selectRoomsByHid(hotel.getHid());
				HotelInfoShow temp = new HotelInfoShow();
				temp.setFullHouse(HotelCheckUtil.isLeftRoom(rooms));
				
				temp.setHid(hotel.getHid());
				temp.setHotelFeature(hotel.getHotelFeature());
				temp.setHotelLocation(hotel.getHotelLocation());
				temp.setHotelName(hotel.getHotelName());
				temp.setHotelType(hotel.getHotelType());
				temp.setLowPrice(HotelCheckUtil.lowPrice(rooms));
					
				retHotels.add(temp);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return retHotels;
	}

}
