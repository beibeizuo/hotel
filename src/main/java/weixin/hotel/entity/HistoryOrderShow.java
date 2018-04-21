package weixin.hotel.entity;

/**
 * 该类已经作废，清补不要在使用 by 左
 */
public class HistoryOrderShow {

	private String syscode;
	private String photoUrl;
	private String hotelName;
	private String roomName;
	private String checkInDate;
	private String checkOutDate;
	private String totalPrice;
	private String orderState;
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}
	public String getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public String getSyscode() {
		return syscode;
	}
	public void setSyscode(String syscode) {
		this.syscode = syscode;
	}
	@Override
	public String toString() {
		return "HistoryOrderShow [syscode=" + syscode + ", photoUrl="
				+ photoUrl + ", hotelName=" + hotelName + ", roomName="
				+ roomName + ", checkInDate=" + checkInDate + ", checkOutDate="
				+ checkOutDate + ", totalPrice=" + totalPrice + ", orderState="
				+ orderState + "]";
	}
	
	
	
}
