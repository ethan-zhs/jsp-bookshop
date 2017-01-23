package cn.itcast.backmanage.action;

import java.util.List;

import javax.annotation.Resource;

import cn.itcast.dao.BookDao;
import cn.itcast.dao.BookListDao;
import cn.itcast.dao.BookListDetailDao;
import cn.itcast.pojo.BookList;
import cn.itcast.pojo.BookListDetail;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BookListAction extends ActionSupport{
	@Resource BookListDetailDao bookListDetailDao;	
	@Resource BookListDao bookListDao;	
	@Resource BookDao bookDao;	
	private String bookListName;
	private String listDetailName;
	private List<BookList> bookList;
	private List<BookListDetail> bookListDetail;
	private int bookListId;
	private int bookListDetailId;
		
	public String allBookList(){
		bookList = bookListDao.getBookLists();
		bookListDetail = bookListDetailDao.getBookListDetails("from BookListDetail");
		return SUCCESS;
	}	
	public String addBookList(){		
		BookList addBookList = new BookList();
		addBookList.setBookListName(bookListName);	
		System.out.println("新添加的分类：" + bookListName);
		bookListDao.save(addBookList);
		bookList = bookListDao.getBookLists();
		return SUCCESS;
	}
	public String deleteBookList(){
		System.out.println("***"+bookListId);
		List<BookListDetail> bookListDetailDelete = bookListDetailDao.getBookListDetails("from BookListDetail where bookList_id='"+bookListId+"'");		
		for(int i=0; i<bookListDetailDelete.size(); i++){
			bookDao.deleteByHql("delete from Books where bookListDetail_id='"+bookListDetailDelete.get(i).getId()+"'");
		}		
		bookListDetailDao.deleteByHql("delete from BookListDetail where bookList_id='"+bookListId+"'");
		bookListDao.delete(bookListId);	
		return SUCCESS;
	}
	
	
	//详细分类
	public String updateListDetailName(){
		BookListDetail bookListDetailUpdate = new BookListDetail();		
		bookListDetailUpdate = bookListDetailDao.getBookListDetail(bookListDetailId);	
		bookListDetailUpdate.setListDetailName(listDetailName);
		bookListDetailDao.update(bookListDetailUpdate);
		bookListDetail = bookListDetailDao.getBookListDetails("from BookListDetail");
		return SUCCESS;
	}
	
	public String addBookListDetail(){		
		BookListDetail addBookListDetail = new BookListDetail();
		BookList bookListforDetail = bookListDao.getBookList(bookListId);
		addBookListDetail.setListDetailName(listDetailName);
		System.out.println("新添加的详细分类：" + listDetailName);
		addBookListDetail.setBookList(bookListforDetail);
		bookListDetailDao.save(addBookListDetail);
		bookListDetail = bookListDetailDao.getBookListDetails("from BookListDetail where bookList_id='"+bookListId+"'");
		bookList = bookListDao.getBookLists();
		return SUCCESS;
	}
	
	public String deleteListDetail(){
		bookDao.deleteByHql("delete from Books where bookListDetail_id='"+bookListDetailId+"'");
		bookListDetailDao.delete(bookListDetailId);		
		return SUCCESS;
	}
	public List<BookList> getBookList() {
		return bookList;
	}

	public void setBookList(List<BookList> bookList) {
		this.bookList = bookList;
	}
	public String getBookListName() {
		return bookListName;
	}
	public void setBookListName(String bookListName) {
		this.bookListName = bookListName;
	}
	public String getListDetailName() {
		return listDetailName;
	}
	public void setListDetailName(String listDetailName) {
		this.listDetailName = listDetailName;
	}
	public List<BookListDetail> getBookListDetail() {
		return bookListDetail;
	}
	public void setBookListDetail(List<BookListDetail> bookListDetail) {
		this.bookListDetail = bookListDetail;
	}
	public int getBookListId() {
		return bookListId;
	}
	public void setBookListId(int bookListId) {
		this.bookListId = bookListId;
	}
	public int getBookListDetailId() {
		return bookListDetailId;
	}
	public void setBookListDetailId(int bookListDetailId) {
		this.bookListDetailId = bookListDetailId;
	}		
}
