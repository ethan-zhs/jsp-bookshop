package cn.itcast.dao;

import java.util.List;

import cn.itcast.pojo.Books;

public interface BookDao {

	public abstract void save(Books book);

	public abstract void update(Books book);

	public abstract Books getBook(int id);

	public abstract void delete(int id);
	
	public abstract void deleteByHql(String hql);

	public abstract List<Books> getBooks(String hql);

}