package weixin.hotel.entity;

/**
 * 用于订单展示的实体类
 */
public class OrderShow {
    private String syscode;
    private String hotelName;
    private String roomName;
    private String location;
    private String checkInDate;
    private String checkOutDate;
    private double roomPrice;
    private String status;
    private int nightNum;
    private String phoneNum;
    private String lodger;
    private double total;

    @Override
    public String toString() {
        return "OrderShow{" +
                "syscode='" + syscode + '\'' +
                ", hotelName='" + hotelName + '\'' +
                ", roomName='" + roomName + '\'' +
                ", location='" + location + '\'' +
                ", checkInDate='" + checkInDate + '\'' +
                ", checkOutDate='" + checkOutDate + '\'' +
                ", roomPrice=" + roomPrice +
                ", status='" + status + '\'' +
                ", nightNum=" + nightNum +
                ", phoneNum='" + phoneNum + '\'' +
                ", lodger='" + lodger + '\'' +
                ", total=" + total +
                '}';
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
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

    public String getSyscode() {
        return syscode;
    }

    public void setSyscode(String syscode) {
        this.syscode = syscode;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    public double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getNightNum() {
        return nightNum;
    }

    public void setNightNum(int nightNum) {
        this.nightNum = nightNum;
    }

}
