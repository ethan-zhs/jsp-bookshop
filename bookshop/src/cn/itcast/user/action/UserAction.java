package cn.itcast.user.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import cn.itcast.dao.UserDao;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	@Resource UserDao userDao;
	private String userNo;
	private String username;
	private String password;
	private String gender;
	private String email;
	
	public String toLogin(){		
		return SUCCESS;
	}
	public String toZhuce(){
		return SUCCESS;
	}
	public String zhuce(){
		Users user = new Users();
		user.setUserNo(userNo);
		user.setUsername(username);
		user.setPassword(password);
		user.setGender(gender);
		user.setEmail(email);
		userDao.save(user);
		return SUCCESS;
	}
	public String zhuceSuccess(){
		return SUCCESS;
	}
	
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
