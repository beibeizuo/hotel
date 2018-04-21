package weixin.hotel.entity;

/**
 * 用于详单展示的实体类
 */
public class DetailShow {
    private String syscode;
    private String status;
    private String roomName;
    private String checkInDate;
    private String checkOutDate;
    private int nightNum;
    private String phoneNum;
    private double roomPrice;
    private String lodger;
    private String orderDate;
    private double total;
    private String location;

    @Override
    public String toString() {
        return "DetailShow{" +
                "syscode='" + syscode + '\'' +
                ", status='" + status + '\'' +
                ", roomName='" + roomName + '\'' +
                ", checkInDate='" + checkInDate + '\'' +
                ", checkOutDate='" + checkOutDate + '\'' +
                ", nightNum=" + nightNum +
                ", phoneNum='" + phoneNum + '\'' +
                ", roomPrice=" + roomPrice +
                ", lodger='" + lodger + '\'' +
                ", orderDate='" + orderDate + '\'' +
                ", total=" + total +
                ", location='" + location + '\'' +
                '}';
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getSyscode() {
        return syscode;
    }

    public void setSyscode(String syscode) {
        this.syscode = syscode;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getLodger() {
        return lodger;
    }

    public void setLodger(String lodger) {
        this.lodger = lodger;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

}
