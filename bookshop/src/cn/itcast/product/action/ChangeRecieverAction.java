package cn.itcast.product.action;


import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.UserDao;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ChangeRecieverAction extends ActionSupport{
	@Resource UserDao userDao;
	private double sumPrice;
	private String reciever;
	private String phone;
	private String youbian;
	private String address;
	private String payWay;
	
	
	public String changeReciever(){
		Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
		user.setReciever(reciever);
		user.setPhone(phone);
		user.setYoubian(youbian);
		user.setAddress(address);
		userDao.update(user);
		ServletActionContext.getRequest().getSession().removeAttribute("userLogin");
		ServletActionContext.getRequest().getSession().setAttribute("userLogin",user);
		return SUCCESS;	
	}
	
	public String changePayWay(){
		Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
		user.setPayWay(payWay);
		userDao.update(user);
		ServletActionContext.getRequest().getSession().removeAttribute("userLogin");
		ServletActionContext.getRequest().getSession().setAttribute("userLogin",user);
		return SUCCESS;	
	}
	
	public double getSumPrice() {
		return sumPrice;
	}

	public void setSumPrice(double sumPrice) {
		this.sumPrice = sumPrice;
	}

	public String getReciever() {
		return reciever;
	}


	public void setReciever(String reciever) {
		this.reciever = reciever;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getYoubian() {
		return youbian;
	}


	public void setYoubian(String youbian) {
		this.youbian = youbian;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}

	public String getPayWay() {
		return payWay;
	}

	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}

		
}