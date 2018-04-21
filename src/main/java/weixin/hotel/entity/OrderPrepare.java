package weixin.hotel.entity;

/**
 * 实际订单生成前的订单预处理信息
 */
public class OrderPrepare {
    private String roomTypeId;


    private String hid;
    private String roomName;
    private String checkInDate;
    private String checkOutDate;
    private int nightNum;
    private double roomPrice;
    private double totalPrice;
    private String phoneNum;
    private String lodger;
    private int maxInNum;

    @Override
    public String toString() {
        return "OrderPrepare{" +
                "roomTypeId='" + roomTypeId + '\'' +
                ", hid='" + hid + '\'' +
                ", roomName='" + roomName + '\'' +
                ", checkInDate='" + checkInDate + '\'' +
                ", checkOutDate='" + checkOutDate + '\'' +
                ", nightNum=" + nightNum +
                ", roomPrice=" + roomPrice +
                ", totalPrice=" + totalPrice +
                ", phoneNum='" + phoneNum + '\'' +
                ", lodger='" + lodger + '\'' +
                ", maxInNum=" + maxInNum +
                '}';
    }

    public int getMaxInNum() {
        return maxInNum;
    }

    public void setMaxInNum(int maxInNum) {
        this.maxInNum = maxInNum;
    }

    public String getRoomTypeId() {
        return roomTypeId;
    }

    public void setRoomTypeId(String roomTypeId) {
        this.roomTypeId = roomTypeId;
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

    public int getNightNum() {
        return nightNum;
    }

    public void setNightNum(int nightNum) {
        this.nightNum = nightNum;
    }

    public double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getLodger() {
        return lodger;
    }

    public void setLodger(String lodger) {
        this.lodger = lodger;
    }

    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }
}
