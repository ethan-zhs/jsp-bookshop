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
public class ShowBooksAction extends ActionSupport{
	@Resource BookListDao bookListDao;	
	@Resource BookListDetailDao bookListDetailDao;	
	@Resource BookDao bookDao;	
	@Resource ShopCarDao  shopCarDao;
	private int bookListDetailId;
	private int classify;
	private List<Books> books;
	private String searchKey;
	private List<BookList> bookList;
	private List<BookListDetail> bookListDetail;
	private String findWay;
	private int shopCarNum;
	
	private void getNavData(){
		bookList = bookListDao.getBookLists();
		bookListDetail = bookListDetailDao.getBookListDetails("from BookListDetail");
	}
	private void getShopCarData(){
		if(ServletActionContext.getRequest().getSession().getAttribute("userLogin")!=null){
			Users user = (Users)ServletActionContext.getRequest().getSession().getAttribute("userLogin");
			List<ShopCar> shopCar = new ArrayList<ShopCar>();
			shopCar = shopCarDao.getShopCars("from ShopCar where user_id='"+user.getId()+"'");
			shopCarNum = shopCar.size();
		}
		else{			
			shopCarNum = 0;
		}
	}
	public String showBooksByListDetailId(){
		getNavData();
		getShopCarData();
		findWay="id";
		books = bookDao.getBooks("from Books where bookListDetail_id='"+bookListDetailId+"'");
		return SUCCESS;
	}

	public String showBooksByClassify(){
		getNavData();
		getShopCarData();
		findWay="classify";
		books = bookDao.getBooks("from Books where classify='"+classify+"'");
		return SUCCESS;
	}
	
	public String showBooksBySearch(){
		getNavData();
		getShopCarData();
		findWay="search";
		books = bookDao.getBooks("from Books where bookName like '%"+searchKey+"%'");
		return SUCCESS;
	}
	
	public String showBookByPrice(){
		getNavData();
		getShopCarData();
		if(findWay.equals("id")){
			books = bookDao.getBooks("from Books where bookListDetail_id='"+bookListDetailId+"' order by single_price asc");
		}
		else if(findWay.equals("classify")){
			books = bookDao.getBooks("from Books where classify='"+classify+"' order by single_price asc");
		}
		else{
			books = bookDao.getBooks("from Books where bookName like '%"+searchKey+"%' order by single_price asc");
		}
		return SUCCESS;
	}
	public String showBookBySaleNum(){
		getNavData();
		getShopCarData();
		if(findWay.equals("id")){
			books = bookDao.getBooks("from Books where bookListDetail_id='"+bookListDetailId+"' order by sale_num desc");
		}
		else if(findWay.equals("classify")){
			books = bookDao.getBooks("from Books where classify='"+classify+"' order by sale_num desc");
		}
		else{
			books = bookDao.getBooks("from Books where bookName like '%"+searchKey+"%' order by sale_num desc");
		}
		return SUCCESS;
	}
	public String showBookByTime(){
		getNavData();
		getShopCarData();
		if(findWay.equals("id")){
			books = bookDao.getBooks("from Books where bookListDetail_id='"+bookListDetailId+"' order by publish_time desc");
		}
		else if(findWay.equals("classify")){
			books = bookDao.getBooks("from Books where classify='"+classify+"' order by publish_time desc");
		}
		else{
			books = bookDao.getBooks("from Books where bookName like '%"+searchKey+"%' order by publish_time desc");
		}
		return SUCCESS;
	}
	
	public int getBookListDetailId() {
		return bookListDetailId;
	}

	public void setBookListDetailId(int bookListDetailId) {
		this.bookListDetailId = bookListDetailId;
	}


	public List<Books> getBooks() {
		return books;
	}

	public void setBooks(List<Books> books) {
		this.books = books;
	}

	public int getClassify() {
		return classify;
	}

	public void setClassify(int classify) {
		this.classify = classify;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}

	public List<BookList> getBookList() {
		return bookList;
	}

	public void setBookList(List<BookList> bookList) {
		this.bookList = bookList;
	}
	public List<BookListDetail> getBookListDetail() {
		return bookListDetail;
	}
	public void setBookListDetail(List<BookListDetail> bookListDetail) {
		this.bookListDetail = bookListDetail;
	}
	public String getFindWay() {
		return findWay;
	}
	public void setFindWay(String findWay) {
		this.findWay = findWay;
	}
	public int getShopCarNum() {
		return shopCarNum;
	}
	public void setShopCarNum(int shopCarNum) {
		this.shopCarNum = shopCarNum;
	}	
	
}
