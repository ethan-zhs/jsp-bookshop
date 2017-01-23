package cn.itcast.pojo;

import java.util.Set;


public class BookList {
	private int id;
	private String bookListName;
	private Set<BookListDetail> bookListDetail;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookListName() {
		return bookListName;
	}
	public void setBookListName(String bookListName) {
		this.bookListName = bookListName;
	}
	
	public Set<BookListDetail> getBookListDetail() {
		return bookListDetail;
	}
	public void setBookListDetail(Set<BookListDetail> bookListDetail) {
		this.bookListDetail = bookListDetail;
	}
		
}
