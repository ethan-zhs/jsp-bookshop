package cn.itcast.backmanage.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import cn.itcast.dao.BookDao;
import cn.itcast.dao.BookListDao;
import cn.itcast.dao.BookListDetailDao;
import cn.itcast.pojo.BookList;
import cn.itcast.pojo.BookListDetail;
import cn.itcast.pojo.Books;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BooksAction extends ActionSupport{	
	@Resource BookListDetailDao bookListDetailDao;	
	@Resource BookListDao bookListDao;	
	@Resource BookDao bookDao;
	private int bookId;
	private int bookListId;
	private int bookListDetailId;
	private String author;
	private String authorIntroduce;
	private String bookName;
	private String bookIntroduce;
	private int bookNum;
	private int type;
	private String publishMessage;
	private Date publishTime;
	private double singlePrice;
	private List<Books> books;
	private List<BookList> bookList;
	private List<BookListDetail> bookListDetail;
	private BookListDetail listDetailShow;
	private Books book;
	
	public String showBookBack(){
		listDetailShow = bookListDetailDao.getBookListDetail(bookListDetailId);
		books = bookDao.getBooks("from Books where bookListDetail_id='"+bookListDetailId+"'");
		System.out.println("共有"+books.size()+"本书");
		return SUCCESS;
	}
	public String toAddBooks(){		
		return SUCCESS;
	}
	public String toUpdateBook(){
		book = bookDao.getBook(bookId);
		return SUCCESS;
	}
	public String addBooks(){		
		BookListDetail bookListDetail = bookListDetailDao.getBookListDetail(bookListDetailId);
		Books bookAdd = new Books();
		bookAdd.setAuthor(author);
		bookAdd.setAuthorIntroduce(authorIntroduce);
		bookAdd.setBookName(bookName);
		bookAdd.setBookIntroduce(bookIntroduce);
		bookAdd.setBookNum(bookNum);
		bookAdd.setPublishMessage(publishMessage);
		bookAdd.setPublishTime(publishTime);
		bookAdd.setSinglePrice(singlePrice);
		bookAdd.setBookListDetail(bookListDetail);
		bookAdd.setClassify(type);
		bookDao.save(bookAdd);	
		System.out.println("新添加的书：" + bookName);
		books = bookDao.getBooks("from Books where bookListDetail_id='"+bookListDetailId+"'");
		return SUCCESS;
	}
	public String deleteBook(){		
		bookDao.delete(bookId);
		return SUCCESS;
	}
	public String updateBook(){
		Books bookUpdate = bookDao.getBook(bookId);
		bookUpdate.setAuthor(author);
		bookUpdate.setAuthorIntroduce(authorIntroduce);
		bookUpdate.setBookName(bookName);
		bookUpdate.setBookIntroduce(bookIntroduce);
		bookUpdate.setBookNum(bookNum);
		bookUpdate.setPublishMessage(publishMessage);
		bookUpdate.setPublishTime(publishTime);
		bookUpdate.setSinglePrice(singlePrice);
		bookUpdate.setClassify(type);
		bookDao.update(bookUpdate);
		return SUCCESS;
	}


	public int getBookListId() {
		return bookListId;
	}

	public void setBookListId(int bookListId) {
		this.bookListId = bookListId;
	}
	

	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAuthorIntroduce() {
		return authorIntroduce;
	}
	public void setAuthorIntroduce(String authorIntroduce) {
		this.authorIntroduce = authorIntroduce;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookIntroduce() {
		return bookIntroduce;
	}
	public void setBookIntroduce(String bookIntroduce) {
		this.bookIntroduce = bookIntroduce;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public String getPublishMessage() {
		return publishMessage;
	}
	public void setPublishMessage(String publishMessage) {
		this.publishMessage = publishMessage;
	}
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public double getSinglePrice() {
		return singlePrice;
	}
	public void setSinglePrice(double singlePrice) {
		this.singlePrice = singlePrice;
	}
	public List<Books> getBooks() {
		return books;
	}

	public void setBooks(List<Books> books) {
		this.books = books;
	}
	public int getBookListDetailId() {
		return bookListDetailId;
	}
	public void setBookListDetailId(int bookListDetailId) {
		this.bookListDetailId = bookListDetailId;
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
	public BookListDetail getListDetailShow() {
		return listDetailShow;
	}
	public void setListDetailShow(BookListDetail listDetailShow) {
		this.listDetailShow = listDetailShow;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Books getBook() {
		return book;
	}
	public void setBook(Books book) {
		this.book = book;
	}


}
