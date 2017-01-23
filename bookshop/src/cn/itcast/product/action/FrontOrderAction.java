package cn.itcast.product.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.BookDao;
import cn.itcast.dao.OrderDetailDao;
import cn.itcast.dao.OrderFormDao;
import cn.itcast.dao.ShopCarDao;
import cn.itcast.pojo.Books;
import cn.itcast.pojo.OrderDetail;
import cn.itcast.pojo.OrderForm;
import cn.itcast.pojo.ShopCar;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class FrontOrderAction extends ActionSupport{
	@Resource OrderFormDao orderFormDao;
	@Resource OrderDetailDao orderDetailDao;
	@Resource ShopCarDao shopCarDao;
	@Resource BookDao bookDao;	
	private List bookIds;
	private List<ShopCar> shopCars = new ArrayList<ShopCar>();
	private List<Books> books = new ArrayList<Books>();
	private double sumPrice;
	private OrderForm orderForm;
	private OrderDetail orderDetail;
	private int orderFormId;
	
	public String checkOut(){
		Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");		
		shopCars.clear();
		for(int i=0;i<bookIds.size();i++){
			shopCars.add(shopCarDao.getShopCars("from ShopCar where user_id='"+user.getId()+"' and book_id='"+bookIds.get(i)+"'").get(0));
		}
		books.clear();
		sumPrice = 0;
		for(int i=0;i<shopCars.size();i++){
			Books bookforadd = new Books();
			bookforadd = bookDao.getBook(shopCars.get(i).getBookId());			
			sumPrice += (shopCars.get(i).getNum()*bookforadd.getSinglePrice());
			books.add(bookforadd);
		}
		return SUCCESS;		
	}
	
	public String sendOrder(){
		Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
		String orderNo = "HTSC" + (int)(Math.random()*100000);
		OrderForm orderFormAdd = new OrderForm();
		orderFormAdd.setOrderFormNo(orderNo);
		orderFormAdd.setOrderTime(new Date());
		orderFormAdd.setSumPrice(sumPrice);
		orderFormAdd.setUserId(user.getId());
		orderFormAdd.setPayWay(user.getPayWay());
		orderFormDao.save(orderFormAdd);
		orderFormId = orderFormAdd.getId();
		for(int i=0;i<shopCars.size();i++){
			OrderDetail orderDetailAdd = new OrderDetail();
			orderDetailAdd.setBookId(shopCars.get(i).getBookId());
			orderDetailAdd.setNum(shopCars.get(i).getNum());
			orderDetailAdd.setOrderId(orderFormAdd.getId());
			orderDetailAdd.setUserId(user.getId());
			orderDetailDao.save(orderDetailAdd);
		}
		shopCarDao.deleteByHql("delete from ShopCar");
		return SUCCESS;		
	}
	
	
	public String sendOrderSuccess(){		
		return SUCCESS;		
	}
	
	public String showOrder(){		
		return SUCCESS;		
	}


	public List getBookIds() {
		return bookIds;
	}

	public void setBookIds(List bookIds) {
		this.bookIds = bookIds;
	}

	public List<ShopCar> getShopCars() {
		return shopCars;
	}

	public void setShopCars(List<ShopCar> shopCars) {
		this.shopCars = shopCars;
	}

	public List<Books> getBooks() {
		return books;
	}

	public void setBooks(List<Books> books) {
		this.books = books;
	}

	public double getSumPrice() {
		return sumPrice;
	}

	public void setSumPrice(double sumPrice) {
		this.sumPrice = sumPrice;
	}

	public OrderForm getOrderForm() {
		return orderForm;
	}

	public void setOrderFrom(OrderForm orderForm) {
		this.orderForm = orderForm;
	}

	public OrderDetail getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(OrderDetail orderDetail) {
		this.orderDetail = orderDetail;
	}

	public int getOrderFormId() {
		return orderFormId;
	}

	public void setOrderFormId(int orderFormId) {
		this.orderFormId = orderFormId;
	}
	
	
	
	
}