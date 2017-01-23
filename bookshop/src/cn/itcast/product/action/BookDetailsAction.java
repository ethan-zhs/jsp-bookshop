package cn.itcast.product.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.BookDao;
import cn.itcast.dao.ShopCarDao;
import cn.itcast.pojo.Books;
import cn.itcast.pojo.ShopCar;
import cn.itcast.pojo.Users;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BookDetailsAction extends ActionSupport{
	@Resource ShopCarDao  shopCarDao;
	@Resource BookDao bookDao;	
	private int bookId;
	private Books book;
	private List<Books> bookSaleWell;
	private List<Books> bookhot;
	private int shopCarNum;
	
	public String execute(){
		Books bookClick = new Books();
	    bookClick = bookDao.getBook(bookId);
	    bookClick.setClickNum(bookClick.getClickNum()+1);
	    bookDao.update(bookClick);
		book = bookDao.getBook(bookId);
		bookSaleWell = bookDao.getBooks("from Books order by sale_num desc");
		bookhot = bookDao.getBooks("from Books order by click_num desc");	
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

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public Books getBook() {
		return book;
	}

	public void setBook(Books book) {
		this.book = book;
	}

	public List<Books> getBookSaleWell() {
		return bookSaleWell;
	}

	public void setBookSaleWell(List<Books> bookSaleWell) {
		this.bookSaleWell = bookSaleWell;
	}

	public List<Books> getBookhot() {
		return bookhot;
	}

	public void setBookhot(List<Books> bookhot) {
		this.bookhot = bookhot;
	}

	public int getShopCarNum() {
		return shopCarNum;
	}

	public void setShopCarNum(int shopCarNum) {
		this.shopCarNum = shopCarNum;
	}
	
}
