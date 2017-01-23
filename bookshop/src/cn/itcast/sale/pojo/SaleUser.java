package cn.itcast.sale.pojo;

public class SaleUser {
	private int id;
	private String name;
	private String userNo;
	private String password;
	private String status;
	private int gender;
	private String personMessage;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getPersonMessage() {
		return personMessage;
	}
	public void setPersonMessage(String personMessage) {
		this.personMessage = personMessage;
	}
	
}
