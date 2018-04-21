package weixin.hotel.entity;
/**
 * 微信凭证
 * @author zuobei
 *
 */
public class Token {

	//接口访问凭证
	private String accessToken;
	//凭证有效时间，单位：秒
	private int expiresIn;
	public String getAccessToken() {
		return accessToken;
	}
	public void setAccessToken(String accessToken) {
		this.accessToken = accessToken;
	}
	public int getExpiresIn() {
		return expiresIn;
	}
	public void setExpiresIn(int expiresIn) {
		this.expiresIn = expiresIn;
	}
	
}
