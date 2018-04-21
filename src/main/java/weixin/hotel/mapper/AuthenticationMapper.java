package weixin.hotel.mapper;


import weixin.hotel.entity.User;

public interface AuthenticationMapper {
	/**
	 * 根据用户名查找user类
	 * @param userName
	 * @return
	 * @throws Exception
	 */
	public User slectUserByUserName(String userName) throws Exception;
	/**
	 * 写入新用户
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public int InsertUser(User user) throws Exception;


}
