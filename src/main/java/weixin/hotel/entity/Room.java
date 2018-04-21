package weixin.hotel.entity;

/**
 * <p>
 * Title: Room.java
 * </p>
 * <p>
 * Description: 房型的实体类
 * </p>
 * <p>
 * Company: 博君
 * </p>
 * 
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午3:48:46
 */
public class Room {

	private String sysCode;
	private String hid;
	private String roomName;
	private int roomNum;
	private int freeRoomNum;
	private String roomType;
	private String roomArea;
	private String roomLandscape;
	private String roomFloorNum;
	private int bedroomNum;
	private int sittingroomNum;
	private int bathroomNum;
	private int studyNum;
	private int kitchenNum;
	private int balconyNum;
	private String bedType;
	private int bedNum;
	private int maxInNum;
	private String hasWifi;
	private String hasTV;
	private String hasFridge;
	private String hasWasher;
	private String hasKitchenWare;
	private String hasWindow;
	private String hasBreakfast;
	private double roomPrice;
	private double basePrice;
	private int status;

	public double getBasePrice() {
		return basePrice;
	}

	public void setBasePrice(double basePrice) {
		this.basePrice = basePrice;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getFreeRoomNum() {
		return freeRoomNum;
	}

	public void setFreeRoomNum(int freeRoomNum) {
		this.freeRoomNum = freeRoomNum;
	}

	public String getSysCode() {
		return sysCode;
	}

	public void setSysCode(String sysCode) {
		this.sysCode = sysCode;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public int getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getRoomArea() {
		return roomArea;
	}

	public void setRoomArea(String roomArea) {
		this.roomArea = roomArea;
	}

	public String getRoomLandscape() {
		return roomLandscape;
	}

	public void setRoomLandscape(String roomLandscape) {
		this.roomLandscape = roomLandscape;
	}

	public String getRoomFloorNum() {
		return roomFloorNum;
	}

	public void setRoomFloorNum(String roomFloorNum) {
		this.roomFloorNum = roomFloorNum;
	}

	public int getBedroomNum() {
		return bedroomNum;
	}

	public void setBedroomNum(int bedroomNum) {
		this.bedroomNum = bedroomNum;
	}

	public int getSittingroomNum() {
		return sittingroomNum;
	}

	public void setSittingroomNum(int sittingroomNum) {
		this.sittingroomNum = sittingroomNum;
	}

	public int getBathroomNum() {
		return bathroomNum;
	}

	public void setBathroomNum(int bathroomNum) {
		this.bathroomNum = bathroomNum;
	}

	public int getStudyNum() {
		return studyNum;
	}

	public void setStudyNum(int studyNum) {
		this.studyNum = studyNum;
	}

	public int getKitchenNum() {
		return kitchenNum;
	}

	public void setKitchenNum(int kitchenNum) {
		this.kitchenNum = kitchenNum;
	}

	public int getBalconyNum() {
		return balconyNum;
	}

	public void setBalconyNum(int balconyNum) {
		this.balconyNum = balconyNum;
	}

	public String getBedType() {
		return bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

	public int getBedNum() {
		return bedNum;
	}

	public void setBedNum(int bedNum) {
		this.bedNum = bedNum;
	}

	public int getMaxInNum() {
		return maxInNum;
	}

	public void setMaxInNum(int maxInNum) {
		this.maxInNum = maxInNum;
	}

	public String getHasWifi() {
		return hasWifi;
	}

	public void setHasWifi(String hasWifi) {
		this.hasWifi = hasWifi;
	}

	public String getHasTV() {
		return hasTV;
	}

	public void setHasTV(String hasTV) {
		this.hasTV = hasTV;
	}

	public String getHasFridge() {
		return hasFridge;
	}

	public void setHasFridge(String hasFridge) {
		this.hasFridge = hasFridge;
	}

	public String getHasWasher() {
		return hasWasher;
	}

	public void setHasWasher(String hasWasher) {
		this.hasWasher = hasWasher;
	}

	public String getHasKitchenWare() {
		return hasKitchenWare;
	}

	public void setHasKitchenWare(String hasKitchenWare) {
		this.hasKitchenWare = hasKitchenWare;
	}

	public String getHasWindow() {
		return hasWindow;
	}

	public void setHasWindow(String hasWindow) {
		this.hasWindow = hasWindow;
	}

	public String getHasBreakfast() {
		return hasBreakfast;
	}

	public void setHasBreakfast(String hasBreakfast) {
		this.hasBreakfast = hasBreakfast;
	}

	public double getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(double roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getHid() {
		return hid;
	}

	public void setHid(String hid) {
		this.hid = hid;
	}

}
