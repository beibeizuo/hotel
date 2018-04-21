package weixin.hotel.mapper;

import org.apache.ibatis.annotations.Param;
import weixin.hotel.entity.Hotel;

import java.util.List;



/**
 * <p>
 * Title: HotelMapper.java
 * </p>
 * <p>
 * Description: 数据库酒店信息操作dao映射
 * </p>
 * <p>
 * Company: 博君
 * </p>
 * 
 * @author: Administrator
 * @version: v1.0
 * @date: 2017年8月21日 下午4:33:39
 */
public interface HotelMapper {

	/**
	 * 根据酒店id查找酒店信息
	 * @param Hid
	 * @return 酒店实体
	 * @throws Exception
	 */
	public Hotel selectHotelInfoByHid(String Hid) throws Exception;

	/**
	 * 根据关键字查询匹配的酒店记录，模糊匹配
	 * @param keyWord
	 * @return 酒店实体列表
	 * @throws Exception
	 */
	public List<Hotel> selectHotelInfoByKeyWord(String keyWord) throws Exception;

	/**
	 * 根据酒店ID查找酒店位置
	 * @param hid
	 * @return
	 * @throws Exception
	 */
	public String selectLocationByHid(@Param("hid") String hid) throws Exception;

	/**
	 * 根据城市选择酒店
	 * @param city
	 * @return
	 * @throws Exception
	 */
	public List<String> selectHotelsByCity(@Param("city") String city) throws Exception;

	/**
	 * 根据城市查看酒店的信息
	 * @param city
	 * @return
	 * @throws Exception
	 */
	public List<Hotel> selectHotelInfosByCity(@Param("city") String city) throws Exception;

	/**
	 * 根据城市和酒店名称获取该酒店的整体信息
	 * @param city
	 * @param hotelName
	 * @return
	 * @throws Exception
	 */
	public Hotel selectHotelByCityAndName(@Param("city") String city, @Param("hotelName") String hotelName) throws Exception;

	/**
	 * 选择城市
	 * @return
	 * @throws Exception
	 */
	public List<String> selectCity() throws Exception;
	
}
