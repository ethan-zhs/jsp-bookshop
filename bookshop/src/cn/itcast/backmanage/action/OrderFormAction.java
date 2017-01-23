package cn.itcast.backmanage.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.BookDao;
import cn.itcast.dao.OrderDetailDao;
import cn.itcast.dao.OrderFormDao;
import cn.itcast.dao.UserDao;
import cn.itcast.pojo.Books;
import cn.itcast.pojo.OrderDetail;
import cn.itcast.pojo.OrderForm;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class OrderFormAction extends ActionSupport{
	@Resource OrderFormDao orderFormDao;
	@Resource OrderDetailDao orderDetailDao;
	@Resource BookDao bookDao;
	@Resource UserDao userDao;
	private List<OrderForm> orderForm;
	private List<OrderDetail> orderDetail = new ArrayList<OrderDetail>();
	private List<Books> books = new ArrayList<Books>();
	private int orderFormId;
	private List<Users> users = new ArrayList<Users>();
	private String errorMessage;
	
	public String logon(){
		if(ServletActionContext.getRequest().getSession().getAttribute("saleUserLogin")==null){
			errorMessage = "Äú»¹Î´µÇÂ½£¬ÇëÏÈµÇÂ½";
			return "loginerror";
		}
		if(!orderFormDao.getOrderForms("from OrderForm").isEmpty()){
			orderForm = orderFormDao.getOrderForms("from OrderForm");
			orderDetail = orderDetailDao.getOrderDetails("from OrderDetail");
			books.clear();
			boolean flag = true;
			for(int i=0;i<orderDetail.size();i++){
				flag = true;
				Books bookforadd = new Books();
				bookforadd = bookDao.getBook(orderDetail.get(i).getBookId());			
				for(int j=0;j<books.size();j++){
					if(bookforadd.getId()==books.get(j).getId()){
						flag = false;
					}
				}
				if(flag){				
					books.add(bookforadd);					
				}
			}
			users.clear();
			for(int i=0;i<orderForm.size();i++){
				flag = true;
				Users useradd = new Users();
				useradd = userDao.getUser(orderForm.get(i).getUserId());			
				for(int j=0;j<users.size();j++){
					if(useradd.getId()==users.get(j).getId()){
						flag = false;
					}
				}
				if(flag){				
					users.add(useradd);					
				}
			}
		}
		else{
			orderForm = null;
		}
		
		return SUCCESS;
	}
	
	public String sendGoods(){
		OrderForm orderFormUpdate = new OrderForm();
		orderFormUpdate = orderFormDao.getOrderForm(orderFormId);
		orderFormUpdate.setHandle(2);
		orderFormDao.update(orderFormUpdate);
		return SUCCESS;
	}

	public List<OrderForm> getOrderForm() {
		return orderForm;
	}

	public void setOrderForm(List<OrderForm> orderForm) {
		this.orderForm = orderForm;
	}

	public List<OrderDetail> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(List<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}


	public List<Books> getBooks() {
		return books;
	}


	public void setBooks(List<Books> books) {
		this.books = books;
	}

	public int getOrderFormId() {
		return orderFormId;
	}

	public void setOrderFormId(int orderFormId) {
		this.orderFormId = orderFormId;
	}

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	

}