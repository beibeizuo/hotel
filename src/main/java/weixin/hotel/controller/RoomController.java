package weixin.hotel.controller;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.hotel.entity.*;
import weixin.hotel.service.HotelCustomService;
import weixin.hotel.service.OrderService;
import weixin.hotel.service.RoomInfoService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;


/**
 * <p>
 * Title: RoomController.java
 * </p>
 * <p>
 * Description: 房型控制器
 * </p>
 * <p>
 * Company: 博君
 * </p>
 * 
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午4:14:30
 */

@Controller
@RequestMapping("/hotel")
public class RoomController {
	@Resource(name="hotelCustomService")
	HotelCustomService hotelCustomService;
	
	@Resource(name="roomInfoService")
	RoomInfoService roomInfoService;
	
	@Resource(name="orderService")
	OrderService orderService;


	@RequestMapping("/get_hotel")
	public String showDetails(ModelMap model, @RequestParam(value="city", required=true) String city,
				@RequestParam(value="hotelName", required = true) String hotelName) {
		Hotel hotel = null;
		
		
		hotel = hotelCustomService.getHotelByCityAndName(city, hotelName);

		System.out.println();
		System.out.println("@controller hotelname: " + hotel.getHotelName());
		System.out.println();

		String imgs = "";
		List<String> roomTypeIds = new ArrayList<String>();
		roomTypeIds.addAll(roomInfoService.getRoomTypeIds(hotel.getHid()));
		for (String roomTypeId : roomTypeIds) {
			for (RoomPicture pic : roomInfoService.getRoomPics(roomTypeId)) {
				String picture = "http://www.bojunjia.com" + pic.getOriginalpic();
				imgs += picture + ";";
			}
		}
		System.out.println("imgs : " + imgs);
		model.addAttribute("hotel", hotel);
		model.addAttribute("imgs", imgs);
		return "hotel/hotel";
	}

	@ResponseBody
	@RequestMapping("/get_hotel_list")
	public List<String> getHotelList(ModelMap model, @RequestParam(value="city", required = true) String city) {
		List<String> hotels = new ArrayList<String>();

		hotels.addAll(hotelCustomService.getHotelsByCity(city));
		return hotels;
	}


	@RequestMapping("/get_hotel_infos")
	public String getHotelInfos(ModelMap model, @RequestParam(value="city", required = true) String city,
								@RequestParam(value = "hotel", required = true) String hotel) {
		JSONArray jsonArray = new JSONArray();
		List<Hotel> hotelLists = new ArrayList<Hotel>();

		hotelLists.addAll(hotelCustomService.getHotelInfosByCity(city));


		jsonArray = JSONArray.fromObject(hotelLists);
		model.addAttribute("hotelInfos", jsonArray);
		model.addAttribute("hotel", hotel);
		return "map/map";
	}

	@ResponseBody
	@RequestMapping("/get_roomtype_list")
	public JSONObject getRoomtypeList(ModelMap model, @RequestParam(value="hid", required=true) String hid,
									 @RequestParam(value="intime", required = true) String intime,
									 @RequestParam(value = "outtime", required = true) String outtime,
									 @RequestParam(value = "datecount", required = true) int datecount) {

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		String indate = intime.substring(0, 10);
		String outdate = outtime.substring(0, 10);
		System.out.println("intime : " + indate + "; outtime : " + outdate);
		/** 在规定时间内，有剩余房间的房型显示 **/
		int totalNum = 0;
		int orderNum = 0;
		String roomName = "";
		int mode = hotelCustomService.getHotelDetailsByHid(hid).getSettlementMode();

		/** 1, 查出酒店下所有的房型 **/
		List<RoomType> roomTypes = new ArrayList<RoomType>();
		List<Room> roomList = new ArrayList<Room>();
		roomList.addAll(roomInfoService.getRoomTypes(hid));

		/** 2, 获取每种房型的房间总数 **/
		for (Room rt : roomList) {
			totalNum = rt.getRoomNum();
			roomName = rt.getRoomName();

			/** 3, 通过查询订单，获取每种房型消耗的数量**/
			orderNum = orderService.getOrderRoomNum(hid, roomName, indate, datecount, outdate);
			System.out.println("roomName : " + roomName + "; orderNum : " + orderNum);

			/** 4, 只显示剩余房间数量大于0的房型 **/
			if (totalNum > orderNum) {
				RoomType roomType = new RoomType();

				/**5, 通过房价表查询信息**/
				double sum = 0.0;
				double avrPrice = 0.0;
				List<Double> prices = new ArrayList<Double>();
				prices.addAll(roomInfoService.getRoomPrices(rt.getSysCode(), indate, outdate, mode));
				for (Double price : prices) {
					sum += price;
				}

				System.out.println("datecount : " + datecount + "; size : " + prices.size());
				System.out.println("baseprice: " + rt.getBasePrice());
				sum += (datecount - prices.size()) * (mode == 0 ? rt.getBasePrice() * 1.2 : rt.getRoomPrice());


				avrPrice = sum / (double) datecount;
				avrPrice = Double.valueOf(new DecimalFormat("0.##").format(avrPrice));
				rt.setRoomPrice(avrPrice);


				/**6, 通过房型ID获取照片 **/
				List<RoomPicture> pics =new ArrayList<RoomPicture>();
				pics.addAll(roomInfoService.getRoomPics(rt.getSysCode()));
				System.out.println("syscode : " + rt.getSysCode() + "; size = " + pics.size());

				roomType.setRoom(rt);
				roomType.setPics(pics);
				roomTypes.add(roomType);
			} else {
				RoomType roomType = new RoomType();

				/**6, 通过房型ID获取照片 **/
				List<RoomPicture> pics =new ArrayList<RoomPicture>();
				pics.addAll(roomInfoService.getRoomPics(rt.getSysCode()));
				System.out.println("syscode : " + rt.getSysCode() + "; size = " + pics.size());

				rt.setRoomPrice(-1);
				roomType.setRoom(rt);
				roomType.setPics(pics);
				roomTypes.add(roomType);
			}


		}

		jsonArray = JSONArray.fromObject(roomTypes);

		System.out.println("jsonArray.size : " + jsonArray.size());
		jsonObject.put("result", jsonArray);
		return jsonObject;
	}

	@RequestMapping("/searchHotel.do")
	public ModelAndView searchHotel(HttpServletRequest request,
			ModelAndView mv,
			HttpSession session,
			String des,
			String livein,
			String liveout,
			String key
			) {
		System.out.println(des);
		System.out.println(livein);
		System.out.println(liveout);
		System.out.println(key);
		key = "%"+key+"%";
		List<HotelInfoShow> retHotels = hotelCustomService
				.screenSearchHotel(des, livein, liveout, key);
		System.out.println(retHotels.size());
		mv.addObject("hotelInfoShow", retHotels);
		mv.setViewName("/HotelList");
		return mv;
	}
	
	@RequestMapping("/getRoomTypeInfo")
	@ResponseBody
	public Room getRoomTypeInfo(@RequestParam(value="hid") String hid, @RequestParam(value="roomName") String roomName) {
		Room room = null;
		
		room = roomInfoService.getRoomInfo(hid, roomName);
	
		return room;
	}
	
	
	@ResponseBody
	@RequestMapping("/freeRoomNum")
	public int getFreeRoomNum(HttpServletRequest request) {
		int free = 0;
		
		String hid = request.getParameter("hid");
		int datecount = Integer.parseInt(request.getParameter("datecount"));
		String sysCode = request.getParameter("sysCode");
		String roomName = request.getParameter("roomName");
		String indate = request.getParameter("indate");
		String outdate = request.getParameter("outdate");
		
		System.out.println("@RoomController: hid=" + hid);
		System.out.println("@RoomController: indate=" + indate);
		
		
		Room room = roomInfoService.getRoomInfo(hid, roomName);
		int totalNum = room.getRoomNum();
		
		int orderNum = orderService.getOrderRoomNum(hid, roomName, indate, datecount, outdate);
		
		
		System.out.println("@RoomController# 房型：" + roomName + " 的总数量为："
				+ totalNum + "， 选定日期内已预定了" + orderNum + "间");
		free = totalNum - orderNum;
		return free;
	}

}
