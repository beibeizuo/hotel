package weixin.hotel.entity;

/**
 * Created by Administrator on 2017/10/19.
 */
public class RoomPicture {
    private String sysCode;
    private String roomTypeId;
    private String roomName;
    private String thumbPic;
    private String picTag;
    private String originalpic;

    public String getSysCode() {
        return sysCode;
    }

    public void setSysCode(String sysCode) {
        this.sysCode = sysCode;
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

    public String getThumbPic() {
        return thumbPic;
    }

    public void setThumbPic(String thumbPic) {
        this.thumbPic = thumbPic;
    }

    public String getPicTag() {
        return picTag;
    }

    public void setPicTag(String picTag) {
        this.picTag = picTag;
    }

    public String getOriginalpic() {
        return originalpic;
    }

    public void setOriginalpic(String originalpic) {
        this.originalpic = originalpic;
    }
}
