package cn.itcast.product.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.BookDao;
import cn.itcast.dao.OrderDetailDao;
import cn.itcast.dao.OrderFormDao;
import cn.itcast.pojo.Books;
import cn.itcast.pojo.OrderDetail;
import cn.itcast.pojo.OrderForm;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowOrderFormAction extends ActionSupport{
	@Resource OrderFormDao orderFormDao;
	@Resource OrderDetailDao orderDetailDao;
	@Resource BookDao bookDao;
	private List<OrderForm> orderForm;
	private List<OrderDetail> orderDetail = new ArrayList<OrderDetail>();
	private List<Books> books = new ArrayList<Books>();
	private int orderFormId;
	private String errorMessage;
	
	
	public String showOrderForm(){
		if(ServletActionContext.getRequest().getSession().getAttribute("userLogin")!=null){
			Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
			if(!orderFormDao.getOrderForms("from OrderForm where user_id='"+user.getId()+"'").isEmpty()){
				orderForm = orderFormDao.getOrderForms("from OrderForm where user_id='"+user.getId()+"'");
				orderDetail = orderDetailDao.getOrderDetails("from OrderDetail where user_id='"+user.getId()+"'");
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
			}
			else{
				orderForm = null;
			}
		}
		else{			
			errorMessage = "Äú»¹Î´µÇÂ½£¬ÇëÏÈµÇÂ½";
			return "loginerror";
		}
		return SUCCESS;
	}
	
	public String pay(){
		OrderForm orderFormUpdate = new OrderForm();
		orderFormUpdate = orderFormDao.getOrderForm(orderFormId);
		orderFormUpdate.setHandle(1);
		orderFormDao.update(orderFormUpdate);
		return SUCCESS;
	}
	public String confirm(){
		OrderForm orderFormUpdate = new OrderForm();
		orderFormUpdate = orderFormDao.getOrderForm(orderFormId);
		orderFormUpdate.setHandle(3);
		orderFormDao.update(orderFormUpdate);		
		List<OrderDetail> orderDetailUpdate = new ArrayList<OrderDetail>();
		orderDetailUpdate = orderDetailDao.getOrderDetails("from OrderDetail where order_id='"+orderFormUpdate.getId()+"'");
		for(int i=0;i<orderDetailUpdate.size();i++){
			Books bookUpdate = bookDao.getBook(orderDetailUpdate.get(i).getBookId());
			bookUpdate.setBookNum(bookUpdate.getBookNum()-orderDetailUpdate.get(i).getNum());
			bookUpdate.setSaleNum(bookUpdate.getSaleNum()+orderDetailUpdate.get(i).getNum());
			bookDao.update(bookUpdate);
		}
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

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	
		
}