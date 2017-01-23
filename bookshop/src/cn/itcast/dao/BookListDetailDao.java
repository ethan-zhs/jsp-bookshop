package cn.itcast.dao;

import java.util.List;

import cn.itcast.pojo.BookListDetail;

public interface BookListDetailDao {

	public abstract void save(BookListDetail bookListDetail);

	public abstract void update(BookListDetail bookListDetail);

	public abstract BookListDetail getBookListDetail(int id);

	public abstract void delete(int id);
	
	public abstract void deleteByHql(String hql);

	public abstract List<BookListDetail> getBookListDetails(String hql);

}