package weixin.hotel.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import weixin.hotel.entity.Room;
import weixin.hotel.entity.RoomPicture;
import weixin.hotel.mapper.RoomMapper;
import weixin.hotel.mapper.RoomPictureMapper;
import weixin.hotel.service.RoomInfoService;
import weixin.hotel.utils.DateChangeUtils;

import java.util.ArrayList;
import java.util.List;


@Service("roomInfoService")
public class RoomInfoServiceImpl implements RoomInfoService {
	@Autowired
	private RoomMapper roomMapper;

	@Autowired
	private RoomPictureMapper roomPictureMapper;

	@Override
	public Room getRoomInfo(String hid, String roomName) {
		Room room = null;
		
		if  (hid == null || hid == "" || roomName == null || roomName == "") {
			return room;
		}
		
		try {
			room = roomMapper.selectRoomByHidAndRoomName(hid, roomName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return room;
	}

	@Override
	public List<Room> getRoomTypes(String hid) {
		List<Room> roomTypes = new ArrayList<Room>();

		try {
			roomTypes.addAll(roomMapper.selectRoomsByHid(hid));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return roomTypes;
	}

    @Override
    public String selectRoomName(String roomTypeId) {
        String ret = null;
		try {
			Room roomType = roomMapper.selectRoomsByRoomTypeId(roomTypeId);
			ret = roomType.getRoomName();
			return ret;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
    }

	@Override
	public List<Double> getRoomPrices(String roomTypeId, String startDate, String endDate, int mode) {
		List<Double> prices = new ArrayList<Double>();

		try {
			if (mode == 1) {
				prices.addAll(roomMapper.selectRoomPrices(roomTypeId, startDate, endDate));
			} else if (mode == 0) {
				int days = DateChangeUtils.daysBetween(startDate, endDate);
				for (int i = 0; i < days; i++) {
					String sdate = DateChangeUtils.addNDay(startDate, i);
					String ddate = DateChangeUtils.addNDay(startDate, i + 1);
					double price = 0.0;

					List<Double> ps = new ArrayList<Double>();
					ps.addAll(roomMapper.selectRoomPrices(roomTypeId, sdate, ddate));
					if (ps.size() > 0) {
						price = ps.get(0);
						ps.clear();
					} else {
						price = 0.0;
					}

					if (price != 0) {
						prices.add(price);
					} else {
						ps.addAll(roomMapper.selectBaseRoomPrices(roomTypeId, sdate, ddate));
						if (ps.size() > 0) {
							price = ps.get(0);
							ps.clear();
						} else {
							price = 0.0;
						}
						if (price != 0) {
							prices.add(price * 1.2);
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("prices.size : " + prices.size());
		return prices;
	}

	@Override
	public List<RoomPicture> getRoomPics(String roomTypeId) {
		List<RoomPicture> pics = new ArrayList<RoomPicture>();

		try {
			pics.addAll(roomPictureMapper.selectPicsByRoomTypeId(roomTypeId));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return pics;
	}

	@Override
	public double selectRoomPrice(String roomTypeId) {
		double roomPrice = 999;
		try {
			Room roomType = roomMapper.selectRoomsByRoomTypeId(roomTypeId);
			roomPrice = roomType.getRoomPrice();
			return  roomPrice;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return  roomPrice;
	}

	@Override
	public int selectMaxInNum(String roomTypeId) {
		int ret = 2;
		try {
			Room roomType = roomMapper.selectRoomsByRoomTypeId(roomTypeId);
			ret = roomType.getMaxInNum();
			return  ret;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return  ret;
	}

	@Override
	public List<String> getRoomTypeIds(String hid) {
		List<String> ids = new ArrayList<String>();

		try {
			ids.addAll(roomMapper.selectRoomTypeIdsByHid(hid));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ids;
	}
}
