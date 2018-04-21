package weixin.hotel.entity;
/**
 * 酒店列表需要显示的内容，可添加
 * @author zuobei
 *
 */
public class HotelInfoShow {

	private String hid;
	private String hotelName;
	
	private String hotelLocation;
	private String hotelFeature;
	private String hotelType;
	private double lowPrice;
	private String fullHouse;
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelLocation() {
		return hotelLocation;
	}
	public void setHotelLocation(String hotelLocation) {
		this.hotelLocation = hotelLocation;
	}
	public String getHotelFeature() {
		return hotelFeature;
	}
	public void setHotelFeature(String hotelFeature) {
		this.hotelFeature = hotelFeature;
	}
	public String getHotelType() {
		return hotelType;
	}
	public void setHotelType(String hotelType) {
		this.hotelType = hotelType;
	}
	public double getLowPrice() {
		return lowPrice;
	}
	public void setLowPrice(double lowPrice) {
		this.lowPrice = lowPrice;
	}
	public String getFullHouse() {
		return fullHouse;
	}
	public void setFullHouse(String fullHouse) {
		this.fullHouse = fullHouse;
	}
	@Override
	public String toString() {
		return "HotelInfoShow [hid=" + hid + ", hotelName=" + hotelName
				+ ", hotelLocation=" + hotelLocation + ", hotelFeature="
				+ hotelFeature + ", hotelType=" + hotelType + ", lowPrice="
				+ lowPrice + ", fullHouse=" + fullHouse + "]";
	}

}
