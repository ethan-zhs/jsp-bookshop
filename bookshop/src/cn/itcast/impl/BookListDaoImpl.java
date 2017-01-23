package cn.itcast.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.dao.BookListDao;
import cn.itcast.pojo.BookList;

@Transactional
public class BookListDaoImpl implements BookListDao{
	@Resource private SessionFactory sessionFactory;
	private Session session;
	
	
	public void save(BookList bookList){
		sessionFactory.getCurrentSession().persist(bookList);
	}	
	
	public void update(BookList bookList){
		sessionFactory.getCurrentSession().merge(bookList);
	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public BookList getBookList(int id){
		return (BookList)sessionFactory.getCurrentSession().get(BookList.class, id);
	}

	public void delete(int id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(BookList.class, id));
	}	
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)	
	@SuppressWarnings("unchecked")
	public List<BookList> getBookLists(){
		session=sessionFactory.openSession();
		//return sessionFactory.getCurrentSession().createQuery("from BookList").list();
		
		return session.createQuery("from BookList").list();
	}
}
