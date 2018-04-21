package weixin.hotel.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import weixin.hotel.entity.User;
import weixin.hotel.mapper.AuthenticationMapper;
import weixin.hotel.service.AuthenticationService;


@Service(value="authenticationService")
public class AuthenticationServiceImpl implements AuthenticationService {

	@Autowired
	AuthenticationMapper authenticationMapper;
	
	@Override
	public int userRegist(User user) {
		int ret=0;
		try {
			ret = authenticationMapper.InsertUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public int userLogin(String userName ,String password) {
		User user = new User();
		try {
			user = authenticationMapper.slectUserByUserName(userName);
			if(user==null)
				return 0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (user.getPassword().equals(password)) {
			return 1;
		}else{
			return 0;
		}
	}

	@Override
	public String getPhoneNumberByUserName(String userName) {
		User user = new User();
		try {
			user = authenticationMapper.slectUserByUserName(userName);
			return user.getPhoneNumber();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
