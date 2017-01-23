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
public class ShopCarAction extends ActionSupport{
	@Resource BookDao bookDao;	
	@Resource ShopCarDao shopCarDao;	
	private int bookId;
	private Books book;
	private int num;
	private List<ShopCar> shopCars;
	private List<Books> books = new ArrayList<Books>();
	private double sumPrice;
	private int shopCarId;
	private String errorMessage;
	
	public String addShopCar(){	
		if(ServletActionContext.getRequest().getSession().getAttribute("userLogin")==null){
			errorMessage = "Äú»¹Î´µÇÂ½£¬ÇëÏÈµÇÂ½";
			return "loginerror";			
		}
		book = bookDao.getBook(bookId);
		Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
		shopCars = shopCarDao.getShopCars("from ShopCar where user_id='"+user.getId()+"'and book_id='"+bookId+"'");
		if(!shopCars.isEmpty()){
			ShopCar shopCarExit = shopCars.get(0);
			shopCarExit.setNum(shopCarExit.getNum()+num);
			shopCarDao.update(shopCarExit);
		}
		else{
			ShopCar shopCar = new ShopCar();
			shopCar.setBookId(bookId);
			shopCar.setUserId(user.getId());
			shopCar.setNum(num);
			shopCarDao.save(shopCar);
		}
		return SUCCESS;
	}
	public String addSuccess(){	
		return SUCCESS;
	}
	
	public String showShopCar(){
		if(ServletActionContext.getRequest().getSession().getAttribute("userLogin")!=null){
			Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");		
			shopCars = shopCarDao.getShopCars("from ShopCar where user_id='"+user.getId()+"'");
			books.clear();
			sumPrice = 0;
			for(int i=0;i<shopCars.size();i++){
				Books bookforadd = new Books();
				bookforadd = bookDao.getBook(shopCars.get(i).getBookId());			
				sumPrice += (shopCars.get(i).getNum()*bookforadd.getSinglePrice());
				books.add(bookforadd);
			}
		}
		else{			
			errorMessage = "Äú»¹Î´µÇÂ½£¬ÇëÏÈµÇÂ½";
			return "loginerror";
		}
		return SUCCESS;
	}
	
	public String addNum(){
		Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
		shopCars = shopCarDao.getShopCars("from ShopCar where user_id='"+user.getId()+"'and book_id='"+bookId+"'");
		ShopCar shopCaradd = shopCars.get(0);
		shopCaradd.setNum(shopCaradd.getNum()+1);
		shopCarDao.update(shopCaradd);
		return SUCCESS;
	}
	public String subNum(){
		Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
		shopCars = shopCarDao.getShopCars("from ShopCar where user_id='"+user.getId()+"'and book_id='"+bookId+"'");
		ShopCar shopCaradd = shopCars.get(0);
		if(shopCaradd.getNum()>=2){
			shopCaradd.setNum(shopCaradd.getNum()-1);
			shopCarDao.update(shopCaradd);
		}
		return SUCCESS;
	}
	
	public String shopCarDelete(){
		shopCarDao.delete(shopCarId);
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

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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
	public int getShopCarId() {
		return shopCarId;
	}
	public void setShopCarId(int shopCarId) {
		this.shopCarId = shopCarId;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	
}
