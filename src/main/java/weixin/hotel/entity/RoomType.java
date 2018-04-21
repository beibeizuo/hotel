package weixin.hotel.entity;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public class RoomType {
    private Room room;
    private List<RoomPicture> pics;

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public List<RoomPicture> getPics() {
        return pics;
    }

    public void setPics(List<RoomPicture> pics) {
        this.pics = pics;
    }
}
