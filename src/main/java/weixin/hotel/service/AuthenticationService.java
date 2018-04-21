package weixin.hotel.service;


import weixin.hotel.entity.User;

public interface AuthenticationService {

	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	public int userRegist(User user);
	/**
	 * 用户登录判断
	 * @param userName
	 * @return
	 */
	public int userLogin(String userName, String password);
	/**
	 * 根据用户名查找对应电话号码
	 * @param userName
	 * @return
	 */
	public String getPhoneNumberByUserName(String userName);
}
