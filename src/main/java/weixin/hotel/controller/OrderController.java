package weixin.hotel.controller;

import com.github.wxpay.sdk.WXPay;
import com.github.wxpay.sdk.WXPayConstants;
import com.github.wxpay.sdk.WXPayUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import weixin.hotel.entity.*;
import weixin.hotel.service.OrderService;
import weixin.hotel.service.RoomInfoService;
import weixin.hotel.utils.DateChangeUtils;
import weixin.hotel.utils.random.RandomGUIDUtil;
import weixin.hotel.wx.MyConfig;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 控制订单流转
 * @author admin
 *
 */
@Controller
@RequestMapping("/order")
public class OrderController {

	@Resource(name="orderService")
	private OrderService orderService;
	
	
	@Resource(name="roomInfoService")
	private RoomInfoService roomInfoService;

	@RequestMapping("/order")
	public String order(HttpServletRequest request, ModelMap model) {
		return "order/order";
	}

	/**
	 * 展示订单历史
	 * @param mv
	 * @param session
	 * @param status
	 * @return
	 */
	@RequestMapping("/orderHistory")
	public ModelAndView orderHistory(ModelAndView mv,
			HttpSession session,String status){

	//	String openID = "1";
		String openID = (String) session.getAttribute("openID");
		System.out.println("OPEENID是"+openID);
		List<OrderShow> historyOrder = null;
		if(status.equals("all")){
			historyOrder = orderService.selectUserHistoryOrderByStatus(openID);
			mv.addObject("status","all");
		}else if(status.equals("needpay")){
			historyOrder = orderService.selectUserHistoryOrderByStatus(openID,"100");
			mv.addObject("status","needpay");
		}else if (status.equals("use")){
			historyOrder = orderService.selectUserHistoryOrderByStatus(openID,"101");
			List<OrderShow> historyOrder102 = orderService.selectUserHistoryOrderByStatus(openID,"102");
			List<OrderShow> historyOrder103 = orderService.selectUserHistoryOrderByStatus(openID,"103");
			List<OrderShow> historyOrder104 = orderService.selectUserHistoryOrderByStatus(openID,"104");
			List<OrderShow> historyOrder105 = orderService.selectUserHistoryOrderByStatus(openID,"105");
			historyOrder.addAll(historyOrder102);
			historyOrder.addAll(historyOrder103);
			historyOrder.addAll(historyOrder104);
			historyOrder.addAll(historyOrder105);
			mv.addObject("status","use");
		}else if(status.equals("used")){
			historyOrder = orderService.selectUserHistoryOrderByStatus(openID,"106");
			mv.addObject("status","used");
		}else if (status.equals("cancel")){
			historyOrder = orderService.selectUserHistoryOrderByStatus(openID,"0");
			mv.addObject("status","cancel");
		}else {
			historyOrder = orderService.selectUserHistoryOrderByStatus(openID,"101");
		}
		for (OrderShow order :
				historyOrder) {
			System.out.println(order.toString());
		}
		System.out.println("获取订单条数"+historyOrder.size());
		//将数据存入modelMap
		mv.addObject("historyOrder", historyOrder);
		mv.setViewName("/order/order");
		return mv;
	}

	/**
	 * 展示订单详情
	 * @param mv
	 * @param id
	 * @return
	 */
	@RequestMapping("detailShow")
	public ModelAndView detailShow(ModelAndView mv,
									String id){
		System.out.println("获得Id"+id);

		DetailShow detail = orderService.slectDetailOrderByID(id);
		System.out.println(detail.toString());
		mv.addObject("detail",detail);
		mv.setViewName("order/detail");
		return mv;
	}

	/**
	 *
	 * @param mv
	 * @param orderPrepare
	 * @return
	 */
	@RequestMapping("orderPrepare")
	public ModelAndView orderPrepare(ModelAndView mv,OrderPrepare orderPrepare){
		System.out.println("获取订单信息"+orderPrepare.toString());

		String roomName = roomInfoService.selectRoomName(orderPrepare.getRoomTypeId());
		orderPrepare.setRoomName(roomName);
		/*double roomPrice = roomInfoService.selectRoomPrice(orderPrepare.getRoomTypeId());
		orderPrepare.setRoomPrice(roomPrice);*/
		int nightNum = DateChangeUtils.daysBetween2(orderPrepare.getCheckInDate(),orderPrepare.getCheckOutDate());
		orderPrepare.setNightNum(nightNum);
		double total = nightNum * orderPrepare.getRoomPrice();
		orderPrepare.setTotalPrice(total);
		int maxInNum = roomInfoService.selectMaxInNum(orderPrepare.getRoomTypeId());
		orderPrepare.setMaxInNum(maxInNum);

		System.out.println("完善订单信息"+orderPrepare.toString());


		mv.addObject("orderPrepare",orderPrepare);
		mv.setViewName("/order/orderPrepare");
		return mv;
	}

	/**
	 * 取消订单
	 * @param mv
	 * @param orderId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("orderCancel")
	public int orderCancel(ModelAndView mv,String orderId){
		System.out.println("获取Id为"+orderId);

		int ret = orderService.cancelOrder(orderId);
		return ret;
	}



	@ResponseBody
	@RequestMapping("orderCreate")
	public String orderCreate(
			HttpSession session,
			ModelAndView mv,
			String roomTypeId,
			SysOrder order
	) throws Exception {

		System.out.println("订单前"+order.toString());
		String openID = (String) session.getAttribute("openID");
		order.setSysCode(RandomGUIDUtil.generateKey());
		order.setState("100");
		order.setOrderRoomNum(1);
		Timestamp curTime = new Timestamp(System.currentTimeMillis());
		order.setOrderDate(DateChangeUtils.timestampToStringComplete(curTime));
		order.setOrderUserName(order.getLodger());
		order.setOrderPay("微信支付");
		String hotelName = orderService.selectHotelNameByHid(order.getHid());
		order.setHotelName(hotelName);
		order.setPid("1");
		double totalPrice = ((int)(order.getRoomPrice()*Integer.parseInt(order.getLiveInNum())*100))/100;
		order.setTotalPrice(totalPrice);
		order.setOpenID(openID);
		orderService.insertOrder(order);
		System.out.println("订单后"+order.toString());

		return order.getSysCode();
	}

	@RequestMapping("orderSuccess")
	public ModelAndView orderSuccess(ModelAndView mv,String orderId,HttpSession session){
		System.out.println("获取Id为"+orderId);


		int ret = orderService.updateOrderState(orderId,"101");

		String openID = (String) session.getAttribute("openID");
		List<OrderShow> historyOrder = orderService.selectUserHistoryOrderByStatus(openID,"101");
		mv.addObject("historyOrder", historyOrder);
		mv.setViewName("/order/order");
		return mv;
	}
}
