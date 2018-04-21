package weixin.hotel.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import weixin.hotel.entity.DetailShow;
import weixin.hotel.entity.Hotel;
import weixin.hotel.entity.OrderShow;
import weixin.hotel.entity.SysOrder;
import weixin.hotel.mapper.HotelMapper;
import weixin.hotel.mapper.OrderMapper;
import weixin.hotel.mapper.RoomMapper;
import weixin.hotel.service.OrderService;
import weixin.hotel.utils.DateChangeUtils;
import weixin.hotel.utils.DateTransformer;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private HotelMapper hotelMapper;
	
	@Autowired
	private RoomMapper roomMapper;

	@Override
	public int getOrderRoomNum(String hid, String roomName, String indate,
			int count, String outdate) {
		int ret = 0, max = 0;
		
		String check = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<Integer> orderRoomNums = new ArrayList<Integer>(); 
		
		for (int i = 0; i < count; i++) {
			try {
				
				check = DateTransformer.plusDay(i, indate) + " 18:00:00";

				List<Integer> nums = new ArrayList<Integer>();
				nums.addAll(orderMapper.selectOrderRoomNum(hid, roomName, check));
				if (nums != null && nums.size() > 0) {
					int n = 0;
					for (Integer a : nums) {
						if (a != null) {
							n += a;
						}
					}
					orderRoomNums.add(n);
				}
				
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if (orderRoomNums.size() > 0) {
			for (Integer num : orderRoomNums) {
				if (num > max) {
					max = num;
				}
			}
			
			ret = max;
		}
		
		return ret;
	}

	@Override
	public int insertOrder(SysOrder order) {
		int ret = 0;
		try {
			ret = orderMapper.insertOrder(order);
		} catch (Exception e) {

			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public int updateOrderState(String sysCode, String state) {
		
		int ret=0;
		try {
			ret = orderMapper.updateOrderState(sysCode,state);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public List<OrderShow> selectUserHistoryOrderByStatus(String openID,String status) {
		
		List<SysOrder> orders = new ArrayList<>();
		List<OrderShow> historyOrder = new ArrayList<>();
		try {
			orders = orderMapper.selectUserHistoryOrderByStatus(openID,status);
			for (SysOrder order:orders) {
				OrderShow temp = new OrderShow();
				temp.setSyscode(order.getSysCode());
				temp.setHotelName(order.getHotelName());
				temp.setCheckInDate(DateChangeUtils.getYYYYMMDD(order.getCheckInDate()));
				temp.setCheckOutDate(DateChangeUtils.getYYYYMMDD(order.getCheckOutDate()));
				temp.setPhoneNum(order.getOrderPhone());
				temp.setRoomName(order.getRoomName());
				temp.setLodger(order.getLodger());
				String location = hotelMapper.selectLocationByHid(order.getHid());
				temp.setLocation(location);
				temp.setRoomPrice(order.getRoomPrice());
				temp.setStatus(order.getState());
				int nightNum = DateChangeUtils.daysBetween2(order.getCheckInDate(),order.getCheckOutDate());
				temp.setNightNum(nightNum);
				double total = nightNum * order.getRoomPrice();
				temp.setTotal(total);
				historyOrder.add(temp);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return historyOrder;
	}

	@Override
	public List<OrderShow> selectUserHistoryOrderByStatus(String openID) {
		List<OrderShow> historyOrder = new ArrayList<>();
		List<SysOrder> orders = new ArrayList<>();

		try {
			orders = orderMapper.selectUserHistoryOrderByOpenID(openID);
			for (SysOrder order:orders) {
				OrderShow temp = new OrderShow();
				temp.setSyscode(order.getSysCode());
				temp.setHotelName(order.getHotelName());
				temp.setCheckInDate(DateChangeUtils.getYYYYMMDD(order.getCheckInDate()));
				temp.setCheckOutDate(DateChangeUtils.getYYYYMMDD(order.getCheckOutDate()));
				temp.setPhoneNum(order.getOrderPhone());
				temp.setRoomName(order.getRoomName());
				temp.setLodger(order.getLodger());
				String location = hotelMapper.selectLocationByHid(order.getHid());
				temp.setLocation(location);
				temp.setRoomPrice(order.getRoomPrice());
				temp.setStatus(order.getState());
				int nightNum = DateChangeUtils.daysBetween2(order.getCheckInDate(),order.getCheckOutDate());
				temp.setNightNum(nightNum);
				double total = nightNum * order.getRoomPrice();
				temp.setTotal(total);
				historyOrder.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return historyOrder;
	}

	@Override
	public DetailShow slectDetailOrderByID(String syscode) {
		DetailShow detailShow = new DetailShow();
		SysOrder order = new SysOrder();
		try {
			order = orderMapper.selectOrderById(syscode);
			detailShow.setSyscode(order.getSysCode());
			detailShow.setStatus(order.getState());
			detailShow.setRoomName(order.getRoomName());
			detailShow.setCheckInDate(DateChangeUtils.getYYYYMMDD(order.getCheckInDate()));
			detailShow.setCheckOutDate(DateChangeUtils.getYYYYMMDD(order.getCheckOutDate()));
			int nightNum = DateChangeUtils.daysBetween2(order.getCheckInDate(),order.getCheckOutDate());
			detailShow.setNightNum(nightNum);
			detailShow.setPhoneNum(order.getOrderPhone());
			detailShow.setRoomPrice(order.getRoomPrice());
			detailShow.setLodger(order.getLodger());
			detailShow.setOrderDate(order.getOrderDate());
			String location = hotelMapper.selectLocationByHid(order.getHid());
			detailShow.setLocation(location);
			double total = nightNum * order.getRoomPrice();
			detailShow.setTotal(total);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return detailShow;
	}

	@Override
	public int cancelOrder(String orderId) {
		int ret = 0;
		try {
			System.out.println("返回值"+ret);
			ret = orderMapper.updateOrderState(orderId,"0");
			System.out.println("返回值"+ret);
			return ret;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

    @Override
    public String selectHotelNameByHid(String hid) {
		try {
			Hotel hotel = hotelMapper.selectHotelInfoByHid(hid);
			return hotel.getHotelName();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

    @Override
    public SysOrder slectOrderByID(String orderId) {
		SysOrder order = new SysOrder();
		try {
			order = orderMapper.selectOrderById(orderId);
			return order;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;
    }


}
