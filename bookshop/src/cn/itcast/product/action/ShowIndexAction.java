package cn.itcast.product.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.BookDao;
import cn.itcast.dao.BookListDao;
import cn.itcast.dao.BookListDetailDao;
import cn.itcast.dao.ShopCarDao;
import cn.itcast.pojo.BookList;
import cn.itcast.pojo.BookListDetail;
import cn.itcast.pojo.Books;
import cn.itcast.pojo.ShopCar;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowIndexAction extends ActionSupport{
	@Resource BookListDetailDao bookListDetailDao;	
	@Resource BookListDao bookListDao;	
	@Resource BookDao bookDao;
	@Resource ShopCarDao  shopCarDao;
	private List<BookList> bookList;
	private List<BookListDetail> bookListDetail;
	private List<Books> bookhot;
	private List<Books> bookNew;
	private List<Books> bookSaleWell;
	private int shopCarNum;
	
	public String logon(){
		bookList = bookListDao.getBookLists();
		bookListDetail = bookListDetailDao.getBookListDetails("from BookListDetail");
		bookhot = bookDao.getBooks("from Books order by click_num desc");
		bookNew = bookDao.getBooks("from Books order by publish_time desc");
		bookSaleWell = bookDao.getBooks("from Books order by sale_num desc");
		if(ServletActionContext.getRequest().getSession().getAttribute("userLogin")!=null){
			Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
			List<ShopCar> shopCar = new ArrayList<ShopCar>();
			shopCar = shopCarDao.getShopCars("from ShopCar where user_id='"+user.getId()+"'");
			shopCarNum = shopCar.size();
		}
		else{			
			shopCarNum = 0;
		}
		return SUCCESS;
	}
	
	public List<BookList> getBookList() {
		return bookList;
	}

	public void setBookList(List<BookList> bookList) {
		this.bookList = bookList;
	}

	public List<Books> getBookhot() {
		return bookhot;
	}

	public void setBookhot(List<Books> bookhot) {
		this.bookhot = bookhot;
	}

	public List<Books> getBookNew() {
		return bookNew;
	}

	public void setBookNew(List<Books> bookNew) {
		this.bookNew = bookNew;
	}

	public List<Books> getBookSaleWell() {
		return bookSaleWell;
	}

	public void setBookSaleWell(List<Books> bookSaleWell) {
		this.bookSaleWell = bookSaleWell;
	}

	public List<BookListDetail> getBookListDetail() {
		return bookListDetail;
	}

	public void setBookListDetail(List<BookListDetail> bookListDetail) {
		this.bookListDetail = bookListDetail;
	}

	public int getShopCarNum() {
		return shopCarNum;
	}

	public void setShopCarNum(int shopCarNum) {
		this.shopCarNum = shopCarNum;
	}

}
