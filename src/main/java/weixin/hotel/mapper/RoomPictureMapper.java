package weixin.hotel.mapper;

import org.apache.ibatis.annotations.Param;
import weixin.hotel.entity.RoomPicture;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface RoomPictureMapper {

    /**
     * 通过房型ID获取房型照片
     * @param roomTypeId
     * @return
     * @throws Exception
     */
    public List<RoomPicture> selectPicsByRoomTypeId(@Param("roomTypeId") String roomTypeId) throws Exception;
}
