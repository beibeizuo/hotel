package weixin.hotel.entity;

/**
 * <p>
 * Title: Hotel.java
 * </p>
 * <p>
 * Description: 酒店实体类
 * </p>
 * <p>
 * Company: 博君
 * </p>
 * 
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午4:02:21
 */
public class Hotel {

	private String hid;
	private String hotelName;
	private String hotelPhoneNum;
	private String hotelLocation;
	private String hotelFeature;
	private String hotelOpening;
	private String hotelFinish;
	private String hotelType;
	private String city;
	private String latitude;
	private String longitude;
	private String hotelPicUrl;
	private int hotelRoomNum;
	private int hotelRoomTypeNum;
	private int hotelFloor;
	private int settlementMode;

	public int getSettlementMode() {
		return settlementMode;
	}

	public void setSettlementMode(int settlementMode) {
		this.settlementMode = settlementMode;
	}

	public String getHotelPicUrl() {
		return hotelPicUrl;
	}

	public void setHotelPicUrl(String hotelPicUrl) {
		this.hotelPicUrl = hotelPicUrl;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public int getHotelFloor() {
		return hotelFloor;
	}

	public void setHotelFloor(int hotelFloor) {
		this.hotelFloor = hotelFloor;
	}

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

	public String getHotelPhoneNum() {
		return hotelPhoneNum;
	}

	public void setHotelPhoneNum(String hotelPhoneNum) {
		this.hotelPhoneNum = hotelPhoneNum;
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

	public String getHotelOpening() {
		return hotelOpening;
	}

	public void setHotelOpening(String hotelOpening) {
		this.hotelOpening = hotelOpening;
	}

	public String getHotelFinish() {
		return hotelFinish;
	}

	public void setHotelFinish(String hotelFinish) {
		this.hotelFinish = hotelFinish;
	}

	public String getHotelType() {
		return hotelType;
	}

	public void setHotelType(String hotelType) {
		this.hotelType = hotelType;
	}

	public int getHotelRoomNum() {
		return hotelRoomNum;
	}

	public void setHotelRoomNum(int hotelRoomNum) {
		this.hotelRoomNum = hotelRoomNum;
	}

	public int getHotelRoomTypeNum() {
		return hotelRoomTypeNum;
	}

	public void setHotelRoomTypeNum(int hotelRoomTypeNum) {
		this.hotelRoomTypeNum = hotelRoomTypeNum;
	}

	
}
