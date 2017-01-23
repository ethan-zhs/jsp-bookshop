package cn.itcast.pojo;

import java.util.Set;


public class BookListDetail {
	private int id;
	private String listDetailName;
	private BookList bookList;
	private Set<Books> books;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getListDetailName() {
		return listDetailName;
	}
	public void setListDetailName(String listDetailName) {
		this.listDetailName = listDetailName;
	}
	public Set<Books> getBooks() {
		return books;
	}
	public void setBooks(Set<Books> books) {
		this.books = books;
	}
	public BookList getBookList() {
		return bookList;
	}
	public void setBookList(BookList bookList) {
		this.bookList = bookList;
	}
	
}
