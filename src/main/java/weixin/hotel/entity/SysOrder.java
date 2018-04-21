package weixin.hotel.entity;
/**
 * Title: SysOrder.java
 * Description: 订单的实体类
 * Company: 博君
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月25日 上午9:50:19
 */
public class SysOrder {

	private String sysCode;
	private String hid;
	private String state;
	private int orderRoomNum;
	private String checkInDate;
	private String checkOutDate;
	private String orderDate;
	private String orderUserName;
	private String orderPhone;
	private String orderPay;
	private double roomPrice;
	private String roomName;
	private String hotelName;
	private String doorNum;
	private String pid;
	private String operator;
	private String remark;
	private String lodger;
	private String liveInNum;
	private String openID;
	private double totalPrice;

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "SysOrder{" +
				"sysCode='" + sysCode + '\'' +
				", hid='" + hid + '\'' +
				", state='" + state + '\'' +
				", orderRoomNum=" + orderRoomNum +
				", checkInDate='" + checkInDate + '\'' +
				", checkOutDate='" + checkOutDate + '\'' +
				", orderDate='" + orderDate + '\'' +
				", orderUserName='" + orderUserName + '\'' +
				", orderPhone='" + orderPhone + '\'' +
				", orderPay='" + orderPay + '\'' +
				", roomPrice=" + roomPrice +
				", roomName='" + roomName + '\'' +
				", hotelName='" + hotelName + '\'' +
				", doorNum='" + doorNum + '\'' +
				", pid='" + pid + '\'' +
				", operator='" + operator + '\'' +
				", remark='" + remark + '\'' +
				", lodger='" + lodger + '\'' +
				", liveInNum='" + liveInNum + '\'' +
				", openID='" + openID + '\'' +
				", totalPrice=" + totalPrice +
				'}';
	}

	public String getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}

	public String getSysCode() {
		return sysCode;
	}

	public void setSysCode(String sysCode) {
		this.sysCode = sysCode;
	}

	public String getHid() {
		return hid;
	}

	public void setHid(String hid) {
		this.hid = hid;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getOrderRoomNum() {
		return orderRoomNum;
	}

	public void setOrderRoomNum(int orderRoomNum) {
		this.orderRoomNum = orderRoomNum;
	}

	public String getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderUserName() {
		return orderUserName;
	}

	public void setOrderUserName(String orderUserName) {
		this.orderUserName = orderUserName;
	}

	public String getOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}

	public String getOrderPay() {
		return orderPay;
	}

	public void setOrderPay(String orderPay) {
		this.orderPay = orderPay;
	}

	public double getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(double roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getDoorNum() {
		return doorNum;
	}

	public void setDoorNum(String doorNum) {
		this.doorNum = doorNum;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getLodger() {
		return lodger;
	}

	public void setLodger(String lodger) {
		this.lodger = lodger;
	}

	public String getLiveInNum() {
		return liveInNum;
	}

	public void setLiveInNum(String liveInNum) {
		this.liveInNum = liveInNum;
	}

	public String getOpenID() {
		return openID;
	}

	public void setOpenID(String openID) {
		this.openID = openID;
	}

}
