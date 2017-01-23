package cn.itcast.user.action;


import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.SaleUserDao;
import cn.itcast.dao.UserDao;
import cn.itcast.pojo.SaleUsers;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	@Resource UserDao userDao;
	@Resource SaleUserDao saleUserDao;
	private String userNo;
	private String password;
	private String errorMessage;
	
	public String toLogin(){		
		return SUCCESS;
	}
	public String toSaleLogin(){		
		return SUCCESS;
	}
	public String login(){	
		System.out.println(userNo);
		System.out.println(password);
		if(userNo==null || "".equals(userNo)){
			errorMessage = "用户名不能为空";
			return "loginerror";
		}
		else{
			List<Users> userL = userDao.getUsers("from Users where userNo='"+userNo+"'");
			if(userL.isEmpty()){
				errorMessage = "用户名不存在";
				return "loginerror";
			}
			else if(userL.get(0).getPassword().equals(password)){
				Users userLogin = userL.get(0);
				ServletActionContext.getRequest().getSession().setAttribute("userLogin", userLogin);
			}
			else{
				errorMessage = "用户名或密码不正确";
				return "loginerror";
			}			
		}				
		return SUCCESS;		
	}
	
	public String saleLogin(){	
		System.out.println(userNo);
		System.out.println(password);
		if(userNo==null || "".equals(userNo)){
			errorMessage = "用户名不能为空";
			return "loginerror";
		}
		else{
			List<SaleUsers> saleUserL = saleUserDao.getSaleUsers("from SaleUsers where userNo='"+userNo+"'");
			if(saleUserL.isEmpty()){
				errorMessage = "用户名不存在";
				return "loginerror";
			}
			else if(saleUserL.get(0).getPassword().equals(password)){
				SaleUsers saleUserLogin = saleUserL.get(0);
				ServletActionContext.getRequest().getSession().setAttribute("saleUserLogin", saleUserLogin);
			}
			else{
				errorMessage = "用户名或密码不正确";
				return "loginerror";
			}			
		}				
		return SUCCESS;		
	}
	public String outSystem(){
		ServletActionContext.getRequest().getSession().removeAttribute("userLogin");		
		return SUCCESS;
	}
	
	public String saleOutSystem(){
		ServletActionContext.getRequest().getSession().removeAttribute("saleUserLogin");		
		return SUCCESS;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}	
	
}
