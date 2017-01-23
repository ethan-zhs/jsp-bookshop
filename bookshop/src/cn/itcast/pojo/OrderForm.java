package cn.itcast.pojo;

import java.util.Date;

public class OrderForm {
	private int id;
	private String orderFormNo;
	private int userId;
	private Date orderTime;
	private int handle;
	private String payWay;
	private double sumPrice;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrderFormNo() {
		return orderFormNo;
	}
	public void setOrderFormNo(String orderFormNo) {
		this.orderFormNo = orderFormNo;
	}
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}	
	
	public int getHandle() {
		return handle;
	}
	public void setHandle(int handle) {
		this.handle = handle;
	}
	public String getPayWay() {
		return payWay;
	}
	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}
	public double getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(double sumPrice) {
		this.sumPrice = sumPrice;
	}	
	
}
