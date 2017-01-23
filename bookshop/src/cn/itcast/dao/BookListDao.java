package cn.itcast.dao;

import java.util.List;

import cn.itcast.pojo.BookList;

public interface BookListDao {

	public abstract void save(BookList bookList);

	public abstract void update(BookList bookList);

	public abstract BookList getBookList(int id);

	public abstract void delete(int id);

	public abstract List<BookList> getBookLists();

}